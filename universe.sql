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
    age_in_billions_of_years numeric(5,3),
    galaxy_types_id integer,
    distance_from_earth_in_billion_ly numeric(6,4)
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    mass_in_lunar_masses numeric(9,8),
    distance_from_earth_in_million_km numeric(7,3),
    planet_id integer,
    moon_types_id integer
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
-- Name: moon_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_types (
    moon_types_id integer NOT NULL,
    name character varying(15) NOT NULL,
    description text
);


ALTER TABLE public.moon_types OWNER TO freecodecamp;

--
-- Name: moon_types_moon_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_types_moon_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_types_moon_type_id_seq OWNER TO freecodecamp;

--
-- Name: moon_types_moon_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_types_moon_type_id_seq OWNED BY public.moon_types.moon_types_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    mass_in_earth_masses numeric(7,3),
    distance_from_earth_in_billion_km numeric(12,3),
    star_id integer,
    planet_types_id integer,
    number_of_orbiting_moons integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_solid_surface boolean
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    mass_in_solar_masses numeric(6,3),
    distance_from_earth_in_thousand_ly numeric(18,10),
    galaxy_id integer,
    star_types_id integer,
    number_of_orbiting_planets integer,
    visible_by_eye boolean
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
-- Name: star_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_types (
    star_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.star_types OWNER TO freecodecamp;

--
-- Name: star_types_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_types_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_types_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_types_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_types_star_type_id_seq OWNED BY public.star_types.star_types_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon_types moon_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_types ALTER COLUMN moon_types_id SET DEFAULT nextval('public.moon_types_moon_type_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_types star_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types ALTER COLUMN star_types_id SET DEFAULT nextval('public.star_types_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.600, 1, 0.0000);
INSERT INTO public.galaxy VALUES (2, 'Messier 87', 13.000, 2, 53.5000);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 10.000, 3, 0.1630);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy (M104)', 10.000, 1, 0.0100);
INSERT INTO public.galaxy VALUES (5, 'Andromeda Galaxy (M31)', 10.000, 1, 0.0025);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy (M33)', 13.000, 1, 0.0030);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral Galaxy', 'Spiral galaxies have a flat, disk-like structure with a central bulge surrounded by spiral arms. These arms are rich in gas, dust, and young, bright stars, making them prominent and often visually striking.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical Galaxy', 'Elliptical galaxies are rounded or elongated ovals with a smooth, featureless appearance. They lack significant structure, such as spiral arms, and consist mostly of older, reddish stars with little to no new star formation.');
INSERT INTO public.galaxy_types VALUES (3, 'Irregular Galaxy', 'These galaxies lack a defined shape or structure, appearing chaotic and disorganized. Irregular galaxies are often rich in gas and dust, leading to active star formation. They are typically smaller and less massive than spiral or elliptical galaxies.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1.00000000, 0.384, 1, 1);
INSERT INTO public.moon VALUES (2, 'Himalia', 0.00020000, 653.400, 2, 2);
INSERT INTO public.moon VALUES (3, 'Naiad', 0.00000700, 4300.000, 3, 3);
INSERT INTO public.moon VALUES (4, 'Phobos', 0.00000800, 9.400, 4, 1);
INSERT INTO public.moon VALUES (5, 'Deimos', 0.00000300, 23.500, 4, 1);
INSERT INTO public.moon VALUES (6, 'Io', 0.00097400, 421.800, 2, 1);
INSERT INTO public.moon VALUES (7, 'Europa', 0.00024900, 671.100, 2, 1);
INSERT INTO public.moon VALUES (8, 'Ganymede', 0.00251600, 1070.300, 2, 1);
INSERT INTO public.moon VALUES (9, 'Callisto', 0.00348600, 1882.700, 2, 1);
INSERT INTO public.moon VALUES (10, 'Titan', 0.02250000, 1270.000, 6, 1);
INSERT INTO public.moon VALUES (11, 'Rhea', 0.00234900, 527.000, 6, 1);
INSERT INTO public.moon VALUES (12, 'Iapetus', 0.00085900, 356.400, 6, 2);
INSERT INTO public.moon VALUES (13, 'Mimas', 0.00032700, 185.000, 6, 1);
INSERT INTO public.moon VALUES (14, 'Enceladus', 0.00013800, 238.000, 6, 1);
INSERT INTO public.moon VALUES (15, 'Triton', 0.00070200, 3540.000, 3, 1);
INSERT INTO public.moon VALUES (16, 'Charon', 0.00004700, 595.000, 8, 1);
INSERT INTO public.moon VALUES (17, 'Kepler-22b Moon', 0.00100000, 1.300, 9, 1);
INSERT INTO public.moon VALUES (18, 'Tethys', 0.00128000, 294.700, 6, 1);
INSERT INTO public.moon VALUES (19, 'Dione', 0.00110400, 377.400, 6, 1);
INSERT INTO public.moon VALUES (20, 'Hyperion', 0.00024900, 1470.000, 6, 2);


--
-- Data for Name: moon_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_types VALUES (1, 'Regular Moon', 'Regular moons are typically large moons that orbit their planet in a circular or nearly circular orbit in the plane of the planet''s equator. These moons are often thought to have formed alongside their planet or were captured by the planet''s gravity.');
INSERT INTO public.moon_types VALUES (2, 'Irregular Moon', 'Irregular moons are usually smaller and have eccentric, inclined, and sometimes retrograde orbits (orbits in the opposite direction to the planet''s rotation). These moons are thought to have been captured by the planet''s gravity rather than forming in place.');
INSERT INTO public.moon_types VALUES (3, 'Inner Moon', 'Inner moons are moons that orbit close to their planet, usually within the planet''s Roche limit (the distance within which tidal forces would break up a smaller moon). These moons tend to be small and often have irregular orbits.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Mars', 0.107, 0.228, 1, 1, 2);
INSERT INTO public.planet VALUES (5, 'Venus', 0.815, 0.042, 1, 1, 0);
INSERT INTO public.planet VALUES (6, 'Saturn', 95.160, 1.429, 1, 2, 82);
INSERT INTO public.planet VALUES (7, 'Uranus', 14.536, 2.871, 1, 3, 28);
INSERT INTO public.planet VALUES (8, 'Pluto', 0.002, 39.482, 1, 1, 5);
INSERT INTO public.planet VALUES (2, 'Jupiter', 317.800, 0.778, 1, 2, 95);
INSERT INTO public.planet VALUES (1, 'Earth', 1.000, 0.000, 1, 1, 1);
INSERT INTO public.planet VALUES (3, 'Neptune', 17.100, 4.300, 1, 3, 14);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 2.400, 1.300, 11, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-16b', 0.960, 1.000, 8, 2, NULL);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 0.687, 0.075, 7, 2, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-62f', 1.400, 1.200, 10, 1, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial Planet', 'Terrestrial planets, also known as rocky planets, have a solid, rocky surface. They are composed primarily of metals and silicates. These planets are closer to their stars and generally have a well-defined surface.', true);
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Gas giants are large planets composed mostly of hydrogen and helium. They lack a solid surface and have deep atmospheres. These planets are found farther from their stars and often have many moons and rings.', false);
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Ice giants are similar to gas giants but have a higher proportion of elements like water, ammonia, and methane (often referred to as "ices"). They also lack solid surfaces and are colder than gas giants.', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'M87 Star', 1.500, 53500.0000000000, 2, 2, NULL, false);
INSERT INTO public.star VALUES (1, 'Sun', 1.000, 0.0000000000, 1, 1, 8, true);
INSERT INTO public.star VALUES (3, 'PSR J0537−6910', 1.750, 160.0000000000, 3, 3, NULL, false);
INSERT INTO public.star VALUES (4, 'Rigel', 21.000, 0.8600000000, 1, NULL, NULL, true);
INSERT INTO public.star VALUES (5, 'S2', 15.000, 26.0000000000, 1, 1, NULL, false);
INSERT INTO public.star VALUES (6, 'R136a1', 200.000, 163.0000000000, 3, NULL, NULL, false);
INSERT INTO public.star VALUES (7, 'HD 209458', 1.100, 0.1500000000, 1, 1, 1, false);
INSERT INTO public.star VALUES (8, 'Kepler-16A', 0.690, 0.3300000000, 1, 2, 1, false);
INSERT INTO public.star VALUES (9, 'Kepler-16B', 0.200, 0.3300000000, 1, 2, 1, false);
INSERT INTO public.star VALUES (10, 'Kepler-62', 0.690, 1.2000000000, 1, 1, 5, false);
INSERT INTO public.star VALUES (11, 'Kepler-22', 1.000, 0.6000000000, 1, 1, 1, false);


--
-- Data for Name: star_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_types VALUES (1, 'Main Sequence Star', 'These are stars that are in the longest phase of their lifecycle, where they fuse hydrogen into helium in their cores.');
INSERT INTO public.star_types VALUES (2, 'Red Giant', 'Red giants are stars that have exhausted the hydrogen in their cores and have expanded, cooling and turning red in the process. They are much larger than their original size and are in the later stages of their evolution, preparingto shed their outer layers or collapse into a white dwarf.');
INSERT INTO public.star_types VALUES (3, 'Neutron Star', 'Neutron stars are the remnants of massive stars that exploded in supernovae. They are extremely dense, with a mass greater than the Sun''s but a radius only around 10 to 20 kilometers. Neutron stars have strong magnetic fields and can emit beams of radiation, sometimes observed as pulsars.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_types_moon_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_types_moon_type_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: star_types_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_types_star_type_id_seq', 3, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: moon_types moon_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_types
    ADD CONSTRAINT moon_types_name_key UNIQUE (name);


--
-- Name: moon_types moon_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_types
    ADD CONSTRAINT moon_types_pkey PRIMARY KEY (moon_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: star_types star_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_name_key UNIQUE (name);


--
-- Name: star_types star_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_types
    ADD CONSTRAINT star_types_pkey PRIMARY KEY (star_types_id);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_moon_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_type_id_fkey FOREIGN KEY (moon_types_id) REFERENCES public.moon_types(moon_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


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
-- Name: star star_star_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_id_fkey FOREIGN KEY (star_types_id) REFERENCES public.star_types(star_types_id);


--
-- PostgreSQL database dump complete
--

