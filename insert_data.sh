#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams;")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]] 
  then
    #Get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    #IF NOt FOUND
    if [[ -z $WINNER_ID ]] 
    then
      #Insert name team
      INSERT_NAME_TEAM=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")

      #Get new winner_id
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
    #Get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    if [[ -z $OPPONENT_ID ]] 
    then
      #Insert name team
      INSERT_NAME_TEAM=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")

      #Get new opponent_id
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_goalS, opponent_goals, winner_id, opponent_id) 
                          VALUES ($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID)")
  fi
done
