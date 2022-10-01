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
-- Name: constallation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constallation (
    constallation_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.constallation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_type character varying(60),
    description text,
    designation text
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
    planet_id integer NOT NULL,
    is_spherical boolean,
    discovered integer
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
    name character varying NOT NULL,
    star_id integer,
    has_life boolean,
    is_spherical boolean,
    num_of_moon integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_constallation_planet_constallation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_constallation_planet_constallation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_constallation_planet_constallation_id_seq OWNER TO freecodecamp;

--
-- Name: planet_constallation_planet_constallation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_constallation_planet_constallation_id_seq OWNED BY public.constallation.constallation_id;


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
    name character varying,
    galaxy_id integer NOT NULL,
    distance_from_earth numeric,
    age_in_millions_year numeric
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
-- Name: constallation constallation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constallation ALTER COLUMN constallation_id SET DEFAULT nextval('public.planet_constallation_planet_constallation_id_seq'::regclass);


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
-- Data for Name: constallation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constallation VALUES (1, 1, 'Lynx');
INSERT INTO public.constallation VALUES (2, 16, 'Eridanus');
INSERT INTO public.constallation VALUES (3, 17, 'Cassioperia');
INSERT INTO public.constallation VALUES (4, 18, 'Cancer');
INSERT INTO public.constallation VALUES (5, 19, 'Virgo');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'spiral galaxy', 'In mythology Andromeda is the daughter of the kings of Ethiopia and is said to be more beautiful than the Nereids, She becomes queen of Greece when she marries Peseus', 'M31, NGC224, UGC454, PGC2557');
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'spiral galaxy', 'This is a dual galaxy. It gets its name because it is said to look like a pair of insect antennae', 'NGC 4038 & 4039, PGC 37967 & 37969');
INSERT INTO public.galaxy VALUES (3, 'Backward galaxy', 'spiral galaxy', 'It seems to rotate in the opposite direction to what it should according to its shape.', 'NGC 4622, PGC42701');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'spiral galaxy', 'It looks like an eye with a dark stripe underneath', 'Evil eye galaxy, M64, NGC4826');
INSERT INTO public.galaxy VALUES (5, 'Coma Pinwheel', 'face-on spiral galaxy', 'it looks like a paper pinwheel', 'NGC 4254, PGC 39578');
INSERT INTO public.galaxy VALUES (6, 'Fireworks galaxy', 'face-on spiral galaxy', 'It is extremely bright and has lots of colors', 'NGC 6946, UGC 11597');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, true, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 17, false, 1877);
INSERT INTO public.moon VALUES (3, 'Deimos', 17, true, 1877);
INSERT INTO public.moon VALUES (4, 'Io', 18, true, 1610);
INSERT INTO public.moon VALUES (5, 'Europa', 18, false, 1610);
INSERT INTO public.moon VALUES (6, 'Ganymede', 18, false, 1610);
INSERT INTO public.moon VALUES (7, 'Himalia', 18, false, 1904);
INSERT INTO public.moon VALUES (8, 'Elara', 18, true, 1905);
INSERT INTO public.moon VALUES (9, 'Pasiphae', 18, true, 1908);
INSERT INTO public.moon VALUES (10, 'Sinope', 18, false, 1914);
INSERT INTO public.moon VALUES (11, 'Lysithea', 18, false, 1938);
INSERT INTO public.moon VALUES (12, 'Thyone', 18, true, 2001);
INSERT INTO public.moon VALUES (13, 'Aitne', 18, true, 2001);
INSERT INTO public.moon VALUES (14, 'Euporie', 18, true, 2001);
INSERT INTO public.moon VALUES (15, 'Sponde', 18, false, 2001);
INSERT INTO public.moon VALUES (16, 'Kale', 18, false, 2001);
INSERT INTO public.moon VALUES (17, 'Pasithee', 18, false, 2001);
INSERT INTO public.moon VALUES (18, 'Aoede', 18, false, 2001);
INSERT INTO public.moon VALUES (19, 'Mimas', 19, true, 1789);
INSERT INTO public.moon VALUES (20, 'Enceladus', 19, false, 1789);
INSERT INTO public.moon VALUES (21, 'Dione', 19, true, 1648);
INSERT INTO public.moon VALUES (22, 'Titan', 19, true, 1655);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4, true, true, 1);
INSERT INTO public.planet VALUES (15, 'Mercury', 4, false, true, 0);
INSERT INTO public.planet VALUES (16, 'Venus', 3, false, false, 0);
INSERT INTO public.planet VALUES (17, 'Mars', 4, false, false, 2);
INSERT INTO public.planet VALUES (18, 'Jupiter', 4, false, false, 96);
INSERT INTO public.planet VALUES (19, 'Saturn', 2, false, true, 27);
INSERT INTO public.planet VALUES (20, 'Uranus', 1, false, false, 3);
INSERT INTO public.planet VALUES (21, 'Neptune', 1, false, true, 4);
INSERT INTO public.planet VALUES (22, 'CoRoT', 3, false, false, 1);
INSERT INTO public.planet VALUES (23, 'Gliese', 4, false, true, 3);
INSERT INTO public.planet VALUES (24, 'HD 20232', 6, false, true, 5);
INSERT INTO public.planet VALUES (25, 'HIP 13044b', 2, false, true, 0);
INSERT INTO public.planet VALUES (26, 'Kepler 109a', 1, false, true, 2);
INSERT INTO public.planet VALUES (27, 'Kepler 2731b', 1, false, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Acamar', 3, 159.8, 600);
INSERT INTO public.star VALUES (2, 'Achernar', 2, 178.6, 450);
INSERT INTO public.star VALUES (3, 'Acrab', 1, 467, 350);
INSERT INTO public.star VALUES (4, 'Adhil', 1, 225.7, 643);
INSERT INTO public.star VALUES (5, 'Alkes', 5, 175.4, 373);
INSERT INTO public.star VALUES (6, 'Almach', 6, 212, 463);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_constallation_planet_constallation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_constallation_planet_constallation_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 27, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: constallation planet_constallation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constallation
    ADD CONSTRAINT planet_constallation_name_key UNIQUE (name);


--
-- Name: constallation planet_constallation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constallation
    ADD CONSTRAINT planet_constallation_pkey PRIMARY KEY (constallation_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: constallation planet_constallation_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constallation
    ADD CONSTRAINT planet_constallation_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
