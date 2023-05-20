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

DROP DATABASE universe;
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
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    distance_from_earth integer,
    coordinates numeric,
    comments text,
    dwarf boolean
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
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    coordinates numeric,
    comments text,
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
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    dwarf boolean,
    comments text,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    dwarf boolean,
    comments text,
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
-- Name: temp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.temp (
    name character varying(30) NOT NULL,
    col_2 integer,
    temp_id integer NOT NULL
);


ALTER TABLE public.temp OWNER TO freecodecamp;

--
-- Name: temp_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.temp_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_temp_id_seq OWNER TO freecodecamp;

--
-- Name: temp_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.temp_temp_id_seq OWNED BY public.temp.temp_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: temp temp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp ALTER COLUMN temp_id SET DEFAULT nextval('public.temp_temp_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'earth', 100, 10, 1000, 'healthy planet', false);
INSERT INTO public.galaxy VALUES (2, 'mars', 200, 20, 2000, 'Empty planet', false);
INSERT INTO public.galaxy VALUES (3, 'venus', 300, 30, 3000, 'no comment', false);
INSERT INTO public.galaxy VALUES (4, 'Jupiter', 400, 40, 4000, 'no', false);
INSERT INTO public.galaxy VALUES (5, 'saturn', 500, 50, 5000, 'no', false);
INSERT INTO public.galaxy VALUES (6, 'uranus', 60, 600, 6000, 'funny name', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'earth', 101, 1001, 'no', 1);
INSERT INTO public.moon VALUES (2, 'moon-1', 102, 1002, 'no', NULL);
INSERT INTO public.moon VALUES (3, 'moon-2', 103, 1003, 'no', NULL);
INSERT INTO public.moon VALUES (4, 'moon-3', 104, 1004, 'no', NULL);
INSERT INTO public.moon VALUES (5, 'moon-4', 105, 1005, 'np', NULL);
INSERT INTO public.moon VALUES (6, 'moon-5', 106, 1006, 'no', NULL);
INSERT INTO public.moon VALUES (7, 'moon-6', 107, 1007, 'no', NULL);
INSERT INTO public.moon VALUES (8, 'moon-7', 108, 1008, 'no', NULL);
INSERT INTO public.moon VALUES (9, 'moon-8', 109, 1009, 'no', NULL);
INSERT INTO public.moon VALUES (10, 'moon-9', 110, 1010, 'no', NULL);
INSERT INTO public.moon VALUES (11, 'moon-10', 111, 1011, 'no', NULL);
INSERT INTO public.moon VALUES (12, 'moon-11', 112, 1012, 'no', NULL);
INSERT INTO public.moon VALUES (13, 'moon-12', 113, 1013, 'no', NULL);
INSERT INTO public.moon VALUES (14, 'moon-13', 114, 1014, 'no', NULL);
INSERT INTO public.moon VALUES (15, 'moon-14', 115, 1015, 'no', NULL);
INSERT INTO public.moon VALUES (16, 'moon-15', 116, 1016, 'no', NULL);
INSERT INTO public.moon VALUES (17, 'moon-16', 117, 1017, 'no', NULL);
INSERT INTO public.moon VALUES (18, 'moon-17', 118, 1018, 'no', NULL);
INSERT INTO public.moon VALUES (19, 'moon-18', 119, 1019, 'no', NULL);
INSERT INTO public.moon VALUES (20, 'moon-19', 120, 1020, 'no', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, false, 'no', NULL);
INSERT INTO public.planet VALUES (2, 'planet-2', 2, false, 'no', NULL);
INSERT INTO public.planet VALUES (3, 'planet-3', 3, false, 'no', NULL);
INSERT INTO public.planet VALUES (4, 'planet-4', 4, false, 'no', NULL);
INSERT INTO public.planet VALUES (5, 'planet-5', 5, false, 'no', NULL);
INSERT INTO public.planet VALUES (6, 'planet-6', 6, false, 'no', NULL);
INSERT INTO public.planet VALUES (7, 'planet-7', 7, false, 'no', NULL);
INSERT INTO public.planet VALUES (8, 'planet-8', 8, false, 'no', NULL);
INSERT INTO public.planet VALUES (9, 'planet-9', 9, false, 'no', NULL);
INSERT INTO public.planet VALUES (10, 'planet-10', 10, false, 'no', NULL);
INSERT INTO public.planet VALUES (11, 'planet-11', 11, false, 'no', NULL);
INSERT INTO public.planet VALUES (12, 'planet-12', 12, false, 'no', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'earth', 100, false, 'lively planet', 1);
INSERT INTO public.star VALUES (2, 'Jupiter', 400, false, 'no', NULL);
INSERT INTO public.star VALUES (3, 'saturn', 50, false, 'no', NULL);
INSERT INTO public.star VALUES (4, 'uranus', 60, false, 'funny name', NULL);
INSERT INTO public.star VALUES (5, 'JurPT', 300, false, 'no', NULL);
INSERT INTO public.star VALUES (6, 'sat50', 60, false, 'no', NULL);


--
-- Data for Name: temp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.temp VALUES ('temp-1', 123, 1);
INSERT INTO public.temp VALUES ('temp-2', 112, 2);
INSERT INTO public.temp VALUES ('temp-3', 11234, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: temp_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.temp_temp_id_seq', 3, true);


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
-- Name: temp temp_col_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_col_2_key UNIQUE (col_2);


--
-- Name: temp temp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_pkey PRIMARY KEY (temp_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

