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
    user_id integer NOT NULL,
    guess integer DEFAULT 0 NOT NULL
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
    username character varying(250) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 10);
INSERT INTO public.games VALUES (2, 2, 532);
INSERT INTO public.games VALUES (3, 2, 802);
INSERT INTO public.games VALUES (4, 4, 670);
INSERT INTO public.games VALUES (5, 4, 505);
INSERT INTO public.games VALUES (6, 2, 243);
INSERT INTO public.games VALUES (7, 2, 160);
INSERT INTO public.games VALUES (8, 2, 370);
INSERT INTO public.games VALUES (9, 18, 938);
INSERT INTO public.games VALUES (10, 18, 802);
INSERT INTO public.games VALUES (11, 19, 765);
INSERT INTO public.games VALUES (12, 19, 904);
INSERT INTO public.games VALUES (13, 21, 516);
INSERT INTO public.games VALUES (14, 21, 665);
INSERT INTO public.games VALUES (15, 19, 458);
INSERT INTO public.games VALUES (16, 19, 738);
INSERT INTO public.games VALUES (17, 19, 769);
INSERT INTO public.games VALUES (18, 1, 12);
INSERT INTO public.games VALUES (19, 26, 540);
INSERT INTO public.games VALUES (20, 26, 69);
INSERT INTO public.games VALUES (21, 28, 243);
INSERT INTO public.games VALUES (22, 28, 727);
INSERT INTO public.games VALUES (23, 26, 466);
INSERT INTO public.games VALUES (24, 26, 267);
INSERT INTO public.games VALUES (25, 26, 256);
INSERT INTO public.games VALUES (26, 33, 273);
INSERT INTO public.games VALUES (27, 33, 963);
INSERT INTO public.games VALUES (28, 35, 388);
INSERT INTO public.games VALUES (29, 35, 22);
INSERT INTO public.games VALUES (30, 33, 165);
INSERT INTO public.games VALUES (31, 33, 900);
INSERT INTO public.games VALUES (32, 33, 904);
INSERT INTO public.games VALUES (33, 1, 12);
INSERT INTO public.games VALUES (34, 18, 202);
INSERT INTO public.games VALUES (35, 18, 654);
INSERT INTO public.games VALUES (36, 1, 15);
INSERT INTO public.games VALUES (37, 41, 69);
INSERT INTO public.games VALUES (38, 41, 194);
INSERT INTO public.games VALUES (39, 42, 129);
INSERT INTO public.games VALUES (40, 42, 180);
INSERT INTO public.games VALUES (41, 41, 327);
INSERT INTO public.games VALUES (42, 41, 886);
INSERT INTO public.games VALUES (43, 41, 877);
INSERT INTO public.games VALUES (44, 44, 826);
INSERT INTO public.games VALUES (45, 44, 712);
INSERT INTO public.games VALUES (46, 45, 9);
INSERT INTO public.games VALUES (47, 45, 396);
INSERT INTO public.games VALUES (48, 44, 254);
INSERT INTO public.games VALUES (49, 44, 607);
INSERT INTO public.games VALUES (50, 44, 598);
INSERT INTO public.games VALUES (51, 46, 784);
INSERT INTO public.games VALUES (52, 46, 460);
INSERT INTO public.games VALUES (53, 47, 127);
INSERT INTO public.games VALUES (54, 47, 703);
INSERT INTO public.games VALUES (55, 46, 333);
INSERT INTO public.games VALUES (56, 46, 670);
INSERT INTO public.games VALUES (57, 46, 770);
INSERT INTO public.games VALUES (58, 48, 17);
INSERT INTO public.games VALUES (59, 49, 440);
INSERT INTO public.games VALUES (60, 49, 656);
INSERT INTO public.games VALUES (61, 50, 662);
INSERT INTO public.games VALUES (62, 50, 85);
INSERT INTO public.games VALUES (63, 49, 755);
INSERT INTO public.games VALUES (64, 49, 752);
INSERT INTO public.games VALUES (65, 49, 153);
INSERT INTO public.games VALUES (66, 48, 9);
INSERT INTO public.games VALUES (67, 51, 566);
INSERT INTO public.games VALUES (68, 51, 173);
INSERT INTO public.games VALUES (69, 52, 182);
INSERT INTO public.games VALUES (70, 52, 947);
INSERT INTO public.games VALUES (71, 51, 965);
INSERT INTO public.games VALUES (72, 51, 704);
INSERT INTO public.games VALUES (73, 51, 642);
INSERT INTO public.games VALUES (74, 53, 80);
INSERT INTO public.games VALUES (75, 53, 469);
INSERT INTO public.games VALUES (76, 54, 959);
INSERT INTO public.games VALUES (77, 54, 231);
INSERT INTO public.games VALUES (78, 53, 797);
INSERT INTO public.games VALUES (79, 53, 249);
INSERT INTO public.games VALUES (80, 53, 366);
INSERT INTO public.games VALUES (81, 55, 237);
INSERT INTO public.games VALUES (82, 55, 369);
INSERT INTO public.games VALUES (83, 56, 712);
INSERT INTO public.games VALUES (84, 56, 700);
INSERT INTO public.games VALUES (85, 55, 111);
INSERT INTO public.games VALUES (86, 55, 589);
INSERT INTO public.games VALUES (87, 55, 321);
INSERT INTO public.games VALUES (88, 57, 687);
INSERT INTO public.games VALUES (89, 57, 24);
INSERT INTO public.games VALUES (90, 58, 479);
INSERT INTO public.games VALUES (91, 58, 462);
INSERT INTO public.games VALUES (92, 57, 640);
INSERT INTO public.games VALUES (93, 57, 798);
INSERT INTO public.games VALUES (94, 57, 908);
INSERT INTO public.games VALUES (95, 59, 966);
INSERT INTO public.games VALUES (96, 59, 803);
INSERT INTO public.games VALUES (97, 60, 542);
INSERT INTO public.games VALUES (98, 60, 747);
INSERT INTO public.games VALUES (99, 59, 816);
INSERT INTO public.games VALUES (100, 59, 465);
INSERT INTO public.games VALUES (101, 59, 642);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Rhucha');
INSERT INTO public.users VALUES (2, 'user_1746086057996');
INSERT INTO public.users VALUES (4, 'user_1746086057995');
INSERT INTO public.users VALUES (9, 'user_1746086171937');
INSERT INTO public.users VALUES (11, 'user_1746086171936');
INSERT INTO public.users VALUES (18, 'a');
INSERT INTO public.users VALUES (19, 'user_1746086475491');
INSERT INTO public.users VALUES (21, 'user_1746086475490');
INSERT INTO public.users VALUES (26, 'user_1746087273505');
INSERT INTO public.users VALUES (28, 'user_1746087273504');
INSERT INTO public.users VALUES (33, 'user_1746087431901');
INSERT INTO public.users VALUES (35, 'user_1746087431900');
INSERT INTO public.users VALUES (41, 'user_1746087981801');
INSERT INTO public.users VALUES (42, 'user_1746087981800');
INSERT INTO public.users VALUES (43, 'rhucha');
INSERT INTO public.users VALUES (44, 'user_1746088081908');
INSERT INTO public.users VALUES (45, 'user_1746088081907');
INSERT INTO public.users VALUES (46, 'user_1746088157320');
INSERT INTO public.users VALUES (47, 'user_1746088157319');
INSERT INTO public.users VALUES (48, 'Manasi');
INSERT INTO public.users VALUES (49, 'user_1746088934264');
INSERT INTO public.users VALUES (50, 'user_1746088934263');
INSERT INTO public.users VALUES (51, 'user_1746089500497');
INSERT INTO public.users VALUES (52, 'user_1746089500496');
INSERT INTO public.users VALUES (53, 'user_1746089584219');
INSERT INTO public.users VALUES (54, 'user_1746089584218');
INSERT INTO public.users VALUES (55, 'user_1746089596838');
INSERT INTO public.users VALUES (56, 'user_1746089596837');
INSERT INTO public.users VALUES (57, 'user_1746089649908');
INSERT INTO public.users VALUES (58, 'user_1746089649907');
INSERT INTO public.users VALUES (59, 'user_1746089909426');
INSERT INTO public.users VALUES (60, 'user_1746089909425');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 101, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 60, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

