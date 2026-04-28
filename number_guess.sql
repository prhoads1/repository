--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 744, 1);
INSERT INTO public.games VALUES (2, 65, 1);
INSERT INTO public.games VALUES (3, 659, 2);
INSERT INTO public.games VALUES (4, 818, 2);
INSERT INTO public.games VALUES (5, 759, 1);
INSERT INTO public.games VALUES (6, 161, 1);
INSERT INTO public.games VALUES (7, 9, 1);
INSERT INTO public.games VALUES (8, 10, 3);
INSERT INTO public.games VALUES (9, 586, 4);
INSERT INTO public.games VALUES (10, 990, 4);
INSERT INTO public.games VALUES (11, 707, 5);
INSERT INTO public.games VALUES (12, 112, 5);
INSERT INTO public.games VALUES (13, 532, 4);
INSERT INTO public.games VALUES (14, 592, 4);
INSERT INTO public.games VALUES (15, 323, 4);
INSERT INTO public.games VALUES (16, 317, 6);
INSERT INTO public.games VALUES (17, 55, 6);
INSERT INTO public.games VALUES (18, 109, 7);
INSERT INTO public.games VALUES (19, 14, 7);
INSERT INTO public.games VALUES (20, 164, 6);
INSERT INTO public.games VALUES (21, 218, 6);
INSERT INTO public.games VALUES (22, 583, 6);
INSERT INTO public.games VALUES (23, 364, 8);
INSERT INTO public.games VALUES (24, 260, 8);
INSERT INTO public.games VALUES (25, 166, 9);
INSERT INTO public.games VALUES (26, 835, 9);
INSERT INTO public.games VALUES (27, 835, 8);
INSERT INTO public.games VALUES (28, 127, 8);
INSERT INTO public.games VALUES (29, 659, 8);
INSERT INTO public.games VALUES (30, 754, 10);
INSERT INTO public.games VALUES (31, 408, 10);
INSERT INTO public.games VALUES (32, 891, 11);
INSERT INTO public.games VALUES (33, 819, 11);
INSERT INTO public.games VALUES (34, 228, 10);
INSERT INTO public.games VALUES (35, 156, 10);
INSERT INTO public.games VALUES (36, 801, 10);
INSERT INTO public.games VALUES (37, 574, 12);
INSERT INTO public.games VALUES (38, 717, 12);
INSERT INTO public.games VALUES (39, 706, 13);
INSERT INTO public.games VALUES (40, 33, 13);
INSERT INTO public.games VALUES (41, 272, 12);
INSERT INTO public.games VALUES (42, 651, 12);
INSERT INTO public.games VALUES (43, 599, 12);
INSERT INTO public.games VALUES (44, 868, 14);
INSERT INTO public.games VALUES (45, 381, 14);
INSERT INTO public.games VALUES (46, 484, 15);
INSERT INTO public.games VALUES (47, 15, 15);
INSERT INTO public.games VALUES (48, 682, 14);
INSERT INTO public.games VALUES (49, 354, 14);
INSERT INTO public.games VALUES (50, 732, 14);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1777334742854');
INSERT INTO public.users VALUES (2, 'user_1777334742853');
INSERT INTO public.users VALUES (3, 'spencer');
INSERT INTO public.users VALUES (4, 'user_1777334862446');
INSERT INTO public.users VALUES (5, 'user_1777334862445');
INSERT INTO public.users VALUES (6, 'user_1777334926192');
INSERT INTO public.users VALUES (7, 'user_1777334926191');
INSERT INTO public.users VALUES (8, 'user_1777334939409');
INSERT INTO public.users VALUES (9, 'user_1777334939408');
INSERT INTO public.users VALUES (10, 'user_1777335871810');
INSERT INTO public.users VALUES (11, 'user_1777335871809');
INSERT INTO public.users VALUES (12, 'user_1777336761141');
INSERT INTO public.users VALUES (13, 'user_1777336761140');
INSERT INTO public.users VALUES (14, 'user_1777336791450');
INSERT INTO public.users VALUES (15, 'user_1777336791449');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 50, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

