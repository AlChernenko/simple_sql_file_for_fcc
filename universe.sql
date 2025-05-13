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

--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    weight integer NOT NULL,
    area integer NOT NULL,
    age numeric,
    description text,
    visible boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    weight integer NOT NULL,
    area integer NOT NULL,
    age numeric,
    visible boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    weight integer NOT NULL,
    area integer NOT NULL,
    age numeric,
    visible boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: space_junk; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_junk (
    galaxy_id integer,
    space_junk_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30) NOT NULL,
    cords integer
);


ALTER TABLE public.space_junk OWNER TO freecodecamp;

--
-- Name: space_junk_space_junk_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_junk_space_junk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_junk_space_junk_id_seq OWNER TO freecodecamp;

--
-- Name: space_junk_space_junk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_junk_space_junk_id_seq OWNED BY public.space_junk.space_junk_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    weight integer NOT NULL,
    area integer NOT NULL,
    age numeric,
    visible boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_junk space_junk_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_junk ALTER COLUMN space_junk_id SET DEFAULT nextval('public.space_junk_space_junk_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, 100, 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, 100, 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, 100, 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, 100, 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, 100, 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, 100, 100, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (14, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (15, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (16, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (17, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (18, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (19, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (20, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (21, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (22, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (23, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (24, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (25, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (26, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (27, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (28, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (29, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (30, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (31, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (32, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (33, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (34, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (35, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (36, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (37, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (38, NULL, 100, 100, NULL, NULL, 27);
INSERT INTO public.moon VALUES (39, NULL, 100, 100, NULL, NULL, 27);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (27, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (28, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (29, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (30, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (31, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (32, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (33, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (34, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (35, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (36, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (37, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (38, NULL, 100, 100, NULL, NULL, 11);
INSERT INTO public.planet VALUES (39, NULL, 100, 100, NULL, NULL, 11);


--
-- Data for Name: space_junk; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_junk VALUES (NULL, 1, 'JUNK', 'IT IS JUNK', NULL);
INSERT INTO public.space_junk VALUES (NULL, 2, 'JUNK', 'IT IS JUNK', NULL);
INSERT INTO public.space_junk VALUES (NULL, 3, 'JUNK', 'IT IS JUNK', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, NULL, 100, 100, NULL, NULL, 1);
INSERT INTO public.star VALUES (8, NULL, 100, 100, NULL, NULL, 1);
INSERT INTO public.star VALUES (9, NULL, 100, 100, NULL, NULL, 1);
INSERT INTO public.star VALUES (10, NULL, 100, 100, NULL, NULL, 1);
INSERT INTO public.star VALUES (11, NULL, 100, 100, NULL, NULL, 1);
INSERT INTO public.star VALUES (12, NULL, 100, 100, NULL, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 39, true);


--
-- Name: space_junk_space_junk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_junk_space_junk_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_junk space_junk_cords_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_junk
    ADD CONSTRAINT space_junk_cords_key UNIQUE (cords);


--
-- Name: space_junk space_junk_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_junk
    ADD CONSTRAINT space_junk_pkey PRIMARY KEY (space_junk_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: space_junk space_junk_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_junk
    ADD CONSTRAINT space_junk_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

