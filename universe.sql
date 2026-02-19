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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    moon_count integer,
    description text
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type text,
    diameter_in_light_years numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    moon_type text,
    tidally_locked boolean,
    planet_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_type text,
    supports_life boolean,
    moon_count integer,
    star_id integer NOT NULL,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_type text,
    age_in_years text,
    galaxy_id integer NOT NULL,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'Pluto', 5, 'Once considered a planet');
INSERT INTO public.dwarf_planet VALUES (2, 'Eris', 1, 'Most massive dwarf planet');
INSERT INTO public.dwarf_planet VALUES (3, 'Ceres', 0, 'Located in the asteroid belt');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 100000, 'Contains our solar system');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Barred Spiral', 220000, 'Closest galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Spiral', 95000, 'Named after its unique appearance');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Grand-Design Spiral', 77000, 'Interacts with a small neighbor galaxy');
INSERT INTO public.galaxy VALUES (5, 'Hoag''s Object', 'Ring', 148000, 'Nearly perfectly circular');
INSERT INTO public.galaxy VALUES (6, 'Cigar', 'Starburst', 40800, 'Forms stars 10x faster than the Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Rocky', true, 3, 'Only other celestial body man has stepped foot on');
INSERT INTO public.moon VALUES (2, 'Phobos', 'Rocky', true, 4, 'Irregularly shaped');
INSERT INTO public.moon VALUES (3, 'Deimos', 'Rocky', true, 4, 'Irregularly shaped');
INSERT INTO public.moon VALUES (4, 'Io', 'Rocky', true, 5, 'Most geologically active object in the solar system');
INSERT INTO public.moon VALUES (5, 'Europa', 'Rock/Ice', true, 5, 'A liquid ocean is suspected to be below the top ice layer');
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Rock/Ice', true, 5, 'Largest satellite in the solar system');
INSERT INTO public.moon VALUES (7, 'Callisto', 'Rock/Ice', true, 5, 'Considered the most suitable place for a human base in Jupiter system');
INSERT INTO public.moon VALUES (8, 'Metis', 'Unknown', true, 5, 'Closest orbiting moon of Jupiter');
INSERT INTO public.moon VALUES (9, 'Adrastrea', 'Ice', true, 5, 'Main contributor of the rings of Jupiter');
INSERT INTO public.moon VALUES (10, 'Amalthea', 'Ice/Porous rock', true, 5, 'Reddest body in the solar system');
INSERT INTO public.moon VALUES (11, 'Thebe', 'Ice/Porous rock', true, 5, 'Has large impact craters comparable to itself');
INSERT INTO public.moon VALUES (12, 'Titan', 'Rock', true, 6, 'Only other object in the solar system to contain liquid water');
INSERT INTO public.moon VALUES (13, 'Mimas', 'Rock', true, 6, 'Contains an impact crater one third its diameter');
INSERT INTO public.moon VALUES (14, 'Enceladus', 'Rock', true, 6, 'One of the brightest objects in the solar system due to ice and snow layer');
INSERT INTO public.moon VALUES (15, 'Tethys', 'Ice', true, 6, 'Has a chasm that runs about 75% the circumference');
INSERT INTO public.moon VALUES (16, 'Dione', 'Rock/Ice', true, 6, 'Has an extensive network of troughs, indicating a tectonic past');
INSERT INTO public.moon VALUES (17, 'Rhea', 'Ice', true, 6, 'Second largest moon of Saturn');
INSERT INTO public.moon VALUES (18, 'Hyperion', 'Porous Ice', false, 6, 'Rotates chaotically/no well defined poles');
INSERT INTO public.moon VALUES (19, 'Titania', 'Rock/Ice', true, 7, 'Largest moon of Uranus');
INSERT INTO public.moon VALUES (20, 'Triton', 'Rock/Ice', true, 7, 'Believed to originally be a dwarf planet from the Kuiper Belt');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', false, 0, 1, 'Closest planet to the sun');
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', false, 0, 1, 'Rotates counter-clockwise');
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, 1, 1, 'The planet we call home');
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', false, 2, 1, 'Once had vast amounts of water');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', false, 95, 1, 'Largest planet in the solar system');
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', false, 274, 1, 'Planet with the most moons in the solar system');
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', false, 29, 1, 'Has barely visible rings');
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', false, 16, 1, 'Farthest planet from the sun');
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Terrestrial/Ocean', NULL, 0, 6, 'Located in the habitable zone/candidate for life');
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'Terrestrial', false, 0, 5, 'Potentially tidally locked');
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', 'Terrestrial', false, 0, 5, 'Along with PCb, is the closest exoplanet to Earth');
INSERT INTO public.planet VALUES (12, 'Kepler-90i', 'Terrestrial', false, 0, 7, 'Orbits its star every 14.45 days');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow Dwarf(G2V)', '4.8 Billion', 1, 'The star of our solar system');
INSERT INTO public.star VALUES (2, 'Polaris', 'Yellow Supergiant', '45-70 Million', 1, 'The North Star');
INSERT INTO public.star VALUES (3, 'Sirius', 'A1', '240 Million', 1, 'Brightest star in the night sky');
INSERT INTO public.star VALUES (4, 'Canopus', 'Bright Giant(A9)', '33 Million', 1, 'Second brightest star in the night sky');
INSERT INTO public.star VALUES (5, 'a Centauri AB', 'Binary Star(G & K)', '5-6 Billion', 1, 'Together make the third brightest star in the night sky');
INSERT INTO public.star VALUES (6, 'Kepler-22', 'Yellow Dwarf(G5V)', '7 Billion', 1, 'Home to an exoplanet in the habitable zone');
INSERT INTO public.star VALUES (7, 'Kepler-90', 'Yellow Dwarf', '5.8 Billion', 1, 'Hosts the same amount of planets as our solar system');


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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

