--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (353, 2018, 'Final', 179, 180, 4, 2);
INSERT INTO public.games VALUES (354, 2018, 'Third Place', 181, 182, 2, 0);
INSERT INTO public.games VALUES (355, 2018, 'Semi-Final', 180, 182, 2, 1);
INSERT INTO public.games VALUES (356, 2018, 'Semi-Final', 179, 181, 1, 0);
INSERT INTO public.games VALUES (357, 2018, 'Quarter-Final', 180, 183, 3, 2);
INSERT INTO public.games VALUES (358, 2018, 'Quarter-Final', 182, 184, 2, 0);
INSERT INTO public.games VALUES (359, 2018, 'Quarter-Final', 181, 185, 2, 1);
INSERT INTO public.games VALUES (360, 2018, 'Quarter-Final', 179, 186, 2, 0);
INSERT INTO public.games VALUES (361, 2018, 'Eighth-Final', 182, 187, 2, 1);
INSERT INTO public.games VALUES (362, 2018, 'Eighth-Final', 184, 188, 1, 0);
INSERT INTO public.games VALUES (363, 2018, 'Eighth-Final', 181, 189, 3, 2);
INSERT INTO public.games VALUES (364, 2018, 'Eighth-Final', 185, 190, 2, 0);
INSERT INTO public.games VALUES (365, 2018, 'Eighth-Final', 180, 191, 2, 1);
INSERT INTO public.games VALUES (366, 2018, 'Eighth-Final', 183, 192, 2, 1);
INSERT INTO public.games VALUES (367, 2018, 'Eighth-Final', 186, 193, 2, 1);
INSERT INTO public.games VALUES (368, 2018, 'Eighth-Final', 179, 194, 4, 3);
INSERT INTO public.games VALUES (369, 2014, 'Final', 195, 194, 1, 0);
INSERT INTO public.games VALUES (370, 2014, 'Third Place', 196, 185, 3, 0);
INSERT INTO public.games VALUES (371, 2014, 'Semi-Final', 194, 196, 1, 0);
INSERT INTO public.games VALUES (372, 2014, 'Semi-Final', 195, 185, 7, 1);
INSERT INTO public.games VALUES (373, 2014, 'Quarter-Final', 196, 197, 1, 0);
INSERT INTO public.games VALUES (374, 2014, 'Quarter-Final', 194, 181, 1, 0);
INSERT INTO public.games VALUES (375, 2014, 'Quarter-Final', 185, 187, 2, 1);
INSERT INTO public.games VALUES (376, 2014, 'Quarter-Final', 195, 179, 1, 0);
INSERT INTO public.games VALUES (377, 2014, 'Eighth-Final', 185, 198, 2, 1);
INSERT INTO public.games VALUES (378, 2014, 'Eighth-Final', 187, 186, 2, 0);
INSERT INTO public.games VALUES (379, 2014, 'Eighth-Final', 179, 199, 2, 0);
INSERT INTO public.games VALUES (380, 2014, 'Eighth-Final', 195, 200, 2, 1);
INSERT INTO public.games VALUES (381, 2014, 'Eighth-Final', 196, 190, 2, 1);
INSERT INTO public.games VALUES (382, 2014, 'Eighth-Final', 197, 201, 2, 1);
INSERT INTO public.games VALUES (383, 2014, 'Eighth-Final', 194, 188, 1, 0);
INSERT INTO public.games VALUES (384, 2014, 'Eighth-Final', 181, 202, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (179, 'France');
INSERT INTO public.teams VALUES (180, 'Croatia');
INSERT INTO public.teams VALUES (181, 'Belgium');
INSERT INTO public.teams VALUES (182, 'England');
INSERT INTO public.teams VALUES (183, 'Russia');
INSERT INTO public.teams VALUES (184, 'Sweden');
INSERT INTO public.teams VALUES (185, 'Brazil');
INSERT INTO public.teams VALUES (186, 'Uruguay');
INSERT INTO public.teams VALUES (187, 'Colombia');
INSERT INTO public.teams VALUES (188, 'Switzerland');
INSERT INTO public.teams VALUES (189, 'Japan');
INSERT INTO public.teams VALUES (190, 'Mexico');
INSERT INTO public.teams VALUES (191, 'Denmark');
INSERT INTO public.teams VALUES (192, 'Spain');
INSERT INTO public.teams VALUES (193, 'Portugal');
INSERT INTO public.teams VALUES (194, 'Argentina');
INSERT INTO public.teams VALUES (195, 'Germany');
INSERT INTO public.teams VALUES (196, 'Netherlands');
INSERT INTO public.teams VALUES (197, 'Costa Rica');
INSERT INTO public.teams VALUES (198, 'Chile');
INSERT INTO public.teams VALUES (199, 'Nigeria');
INSERT INTO public.teams VALUES (200, 'Algeria');
INSERT INTO public.teams VALUES (201, 'Greece');
INSERT INTO public.teams VALUES (202, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 384, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 202, true);


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

