--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (75, 2018, 'Final', 4, 2, 73, 74);
INSERT INTO public.games VALUES (76, 2018, 'Third Place', 2, 0, 75, 76);
INSERT INTO public.games VALUES (77, 2018, 'Semi-Final', 2, 1, 74, 76);
INSERT INTO public.games VALUES (78, 2018, 'Semi-Final', 1, 0, 73, 75);
INSERT INTO public.games VALUES (79, 2018, 'Quarter-Final', 3, 2, 74, 77);
INSERT INTO public.games VALUES (80, 2018, 'Quarter-Final', 2, 0, 76, 78);
INSERT INTO public.games VALUES (81, 2018, 'Quarter-Final', 2, 1, 75, 79);
INSERT INTO public.games VALUES (82, 2018, 'Quarter-Final', 2, 0, 73, 80);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 2, 1, 76, 81);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 1, 0, 78, 82);
INSERT INTO public.games VALUES (85, 2018, 'Eighth-Final', 3, 2, 75, 83);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 2, 0, 79, 84);
INSERT INTO public.games VALUES (87, 2018, 'Eighth-Final', 2, 1, 74, 85);
INSERT INTO public.games VALUES (88, 2018, 'Eighth-Final', 2, 1, 77, 86);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 2, 1, 80, 87);
INSERT INTO public.games VALUES (90, 2018, 'Eighth-Final', 4, 3, 73, 88);
INSERT INTO public.games VALUES (91, 2014, 'Final', 1, 0, 89, 88);
INSERT INTO public.games VALUES (92, 2014, 'Third Place', 3, 0, 90, 79);
INSERT INTO public.games VALUES (93, 2014, 'Semi-Final', 1, 0, 88, 90);
INSERT INTO public.games VALUES (94, 2014, 'Semi-Final', 7, 1, 89, 79);
INSERT INTO public.games VALUES (95, 2014, 'Quarter-Final', 1, 0, 90, 91);
INSERT INTO public.games VALUES (96, 2014, 'Quarter-Final', 1, 0, 88, 75);
INSERT INTO public.games VALUES (97, 2014, 'Quarter-Final', 2, 1, 79, 81);
INSERT INTO public.games VALUES (98, 2014, 'Quarter-Final', 1, 0, 89, 73);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 2, 1, 79, 92);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 2, 0, 81, 80);
INSERT INTO public.games VALUES (101, 2014, 'Eighth-Final', 2, 0, 73, 93);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 2, 1, 89, 94);
INSERT INTO public.games VALUES (103, 2014, 'Eighth-Final', 2, 1, 90, 84);
INSERT INTO public.games VALUES (104, 2014, 'Eighth-Final', 2, 1, 91, 95);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 1, 0, 88, 82);
INSERT INTO public.games VALUES (106, 2014, 'Eighth-Final', 2, 1, 75, 96);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (73, 'France');
INSERT INTO public.teams VALUES (74, 'Croatia');
INSERT INTO public.teams VALUES (75, 'Belgium');
INSERT INTO public.teams VALUES (76, 'England');
INSERT INTO public.teams VALUES (77, 'Russia');
INSERT INTO public.teams VALUES (78, 'Sweden');
INSERT INTO public.teams VALUES (79, 'Brazil');
INSERT INTO public.teams VALUES (80, 'Uruguay');
INSERT INTO public.teams VALUES (81, 'Colombia');
INSERT INTO public.teams VALUES (82, 'Switzerland');
INSERT INTO public.teams VALUES (83, 'Japan');
INSERT INTO public.teams VALUES (84, 'Mexico');
INSERT INTO public.teams VALUES (85, 'Denmark');
INSERT INTO public.teams VALUES (86, 'Spain');
INSERT INTO public.teams VALUES (87, 'Portugal');
INSERT INTO public.teams VALUES (88, 'Argentina');
INSERT INTO public.teams VALUES (89, 'Germany');
INSERT INTO public.teams VALUES (90, 'Netherlands');
INSERT INTO public.teams VALUES (91, 'Costa Rica');
INSERT INTO public.teams VALUES (92, 'Chile');
INSERT INTO public.teams VALUES (93, 'Nigeria');
INSERT INTO public.teams VALUES (94, 'Algeria');
INSERT INTO public.teams VALUES (95, 'Greece');
INSERT INTO public.teams VALUES (96, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 106, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 96, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

