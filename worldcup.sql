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
    round character varying(20) NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 4, 2, 251, 252);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 2, 0, 253, 254);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 2, 1, 252, 254);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 1, 0, 251, 253);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 3, 2, 252, 255);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 2, 0, 254, 256);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 2, 1, 253, 257);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 2, 0, 251, 258);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 2, 1, 254, 259);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 1, 0, 256, 260);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 3, 2, 253, 261);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 2, 0, 257, 262);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 2, 1, 252, 263);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 2, 1, 255, 264);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 1, 258, 265);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 4, 3, 251, 266);
INSERT INTO public.games VALUES (49, 2014, 'Final', 1, 0, 267, 266);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 3, 0, 268, 257);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 1, 0, 266, 268);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 7, 1, 267, 257);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 1, 0, 268, 269);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 1, 0, 266, 253);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 2, 1, 257, 259);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 1, 0, 267, 251);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 2, 1, 257, 270);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 2, 0, 259, 258);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 0, 251, 271);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 1, 267, 272);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 2, 1, 268, 262);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 1, 269, 273);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 1, 0, 266, 260);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 1, 253, 274);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (251, 'France');
INSERT INTO public.teams VALUES (252, 'Croatia');
INSERT INTO public.teams VALUES (253, 'Belgium');
INSERT INTO public.teams VALUES (254, 'England');
INSERT INTO public.teams VALUES (255, 'Russia');
INSERT INTO public.teams VALUES (256, 'Sweden');
INSERT INTO public.teams VALUES (257, 'Brazil');
INSERT INTO public.teams VALUES (258, 'Uruguay');
INSERT INTO public.teams VALUES (259, 'Colombia');
INSERT INTO public.teams VALUES (260, 'Switzerland');
INSERT INTO public.teams VALUES (261, 'Japan');
INSERT INTO public.teams VALUES (262, 'Mexico');
INSERT INTO public.teams VALUES (263, 'Denmark');
INSERT INTO public.teams VALUES (264, 'Spain');
INSERT INTO public.teams VALUES (265, 'Portugal');
INSERT INTO public.teams VALUES (266, 'Argentina');
INSERT INTO public.teams VALUES (267, 'Germany');
INSERT INTO public.teams VALUES (268, 'Netherlands');
INSERT INTO public.teams VALUES (269, 'Costa Rica');
INSERT INTO public.teams VALUES (270, 'Chile');
INSERT INTO public.teams VALUES (271, 'Nigeria');
INSERT INTO public.teams VALUES (272, 'Algeria');
INSERT INTO public.teams VALUES (273, 'Greece');
INSERT INTO public.teams VALUES (274, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 274, true);


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
-- Name: games fk_game_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_game_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_game_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_game_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

