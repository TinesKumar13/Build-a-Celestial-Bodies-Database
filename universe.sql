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
-- Name: avengers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.avengers (
    avengers_id integer NOT NULL,
    name character varying,
    age integer NOT NULL,
    height integer
);


ALTER TABLE public.avengers OWNER TO freecodecamp;

--
-- Name: avengers_avengers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.avengers_avengers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.avengers_avengers_id_seq OWNER TO freecodecamp;

--
-- Name: avengers_avengers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.avengers_avengers_id_seq OWNED BY public.avengers.avengers_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    total_stars integer NOT NULL,
    description text,
    age integer
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
    name character varying,
    total_holes numeric NOT NULL,
    planet_id integer,
    color character varying NOT NULL,
    total_flags integer
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
    name character varying,
    population integer NOT NULL,
    hasoxygen boolean,
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
    name character varying NOT NULL,
    description text,
    isactive boolean,
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
-- Name: avengers avengers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.avengers ALTER COLUMN avengers_id SET DEFAULT nextval('public.avengers_avengers_id_seq'::regclass);


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
-- Data for Name: avengers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.avengers VALUES (1, '1', 1, NULL);
INSERT INTO public.avengers VALUES (2, '2', 2, NULL);
INSERT INTO public.avengers VALUES (3, '3', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Medusa', 10, 'Take Me Home', 30);
INSERT INTO public.galaxy VALUES (2, 'Nebula', 20, 'Take Me Home', 40);
INSERT INTO public.galaxy VALUES (3, 'Obula', 30, 'Take Me Home', 50);
INSERT INTO public.galaxy VALUES (4, 'Fedusa', 40, 'Take Me Home', 50);
INSERT INTO public.galaxy VALUES (5, 'Bebula', 50, 'Take Me Home', 60);
INSERT INTO public.galaxy VALUES (6, 'KObula', 70, 'Take Me Home', 90);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Aorta', 1, 1, 'test', NULL);
INSERT INTO public.moon VALUES (2, 'Baorta', 2, 2, 'test', NULL);
INSERT INTO public.moon VALUES (3, 'Caorta', 3, 3, 'test', NULL);
INSERT INTO public.moon VALUES (4, 'Daorta', 4, 4, 'test', NULL);
INSERT INTO public.moon VALUES (5, 'Eaorta', 5, 4, 'test', NULL);
INSERT INTO public.moon VALUES (6, 'Lolarta', 5, 5, 'test', NULL);
INSERT INTO public.moon VALUES (7, 'Koarta', 4, 4, 'test', NULL);
INSERT INTO public.moon VALUES (8, 'Poarta', 4, 4, 'test', NULL);
INSERT INTO public.moon VALUES (9, 'Doarta', 6, 4, 'test', NULL);
INSERT INTO public.moon VALUES (10, 'Joarta', 5, 4, 'test', NULL);
INSERT INTO public.moon VALUES (11, 'Foarta', 2, 4, 'test', NULL);
INSERT INTO public.moon VALUES (12, 'Soarta', 2, 4, 'test', NULL);
INSERT INTO public.moon VALUES (13, 'Aorta', 1, 1, 'test', NULL);
INSERT INTO public.moon VALUES (14, 'Baorta', 2, 2, 'test', NULL);
INSERT INTO public.moon VALUES (15, 'Caorta', 3, 3, 'test', NULL);
INSERT INTO public.moon VALUES (16, 'Daorta', 4, 4, 'test', NULL);
INSERT INTO public.moon VALUES (17, 'Eaorta', 5, 4, 'test', NULL);
INSERT INTO public.moon VALUES (18, 'Lolarta', 5, 5, 'test', NULL);
INSERT INTO public.moon VALUES (19, 'Koarta', 4, 4, 'test', NULL);
INSERT INTO public.moon VALUES (20, 'Poarta', 4, 4, 'test', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Aorta', 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Baorta', 2, true, 2);
INSERT INTO public.planet VALUES (3, 'Caorta', 3, true, 3);
INSERT INTO public.planet VALUES (4, 'Daorta', 4, true, 4);
INSERT INTO public.planet VALUES (5, 'Eaorta', 5, true, 5);
INSERT INTO public.planet VALUES (6, 'Lolarta', 5, true, 5);
INSERT INTO public.planet VALUES (7, 'Koarta', 4, true, 4);
INSERT INTO public.planet VALUES (8, 'Poarta', 4, true, 4);
INSERT INTO public.planet VALUES (9, 'Doarta', 6, true, 4);
INSERT INTO public.planet VALUES (10, 'Joarta', 5, true, 4);
INSERT INTO public.planet VALUES (11, 'Foarta', 2, true, 4);
INSERT INTO public.planet VALUES (12, 'Soarta', 2, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Aorta', 'Testing', true, 1);
INSERT INTO public.star VALUES (2, 'Baorta', 'Testing', true, 2);
INSERT INTO public.star VALUES (3, 'Caorta', 'Testing', true, 3);
INSERT INTO public.star VALUES (4, 'Daorta', 'Testing', true, 4);
INSERT INTO public.star VALUES (5, 'Eaorta', 'Testing', true, 5);
INSERT INTO public.star VALUES (6, 'Faorta', 'Testing', true, 6);


--
-- Name: avengers_avengers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.avengers_avengers_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: avengers avengers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.avengers
    ADD CONSTRAINT avengers_pkey PRIMARY KEY (avengers_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: avengers unique_avenger_age; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.avengers
    ADD CONSTRAINT unique_avenger_age UNIQUE (age);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_flags; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_flags UNIQUE (total_flags);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

