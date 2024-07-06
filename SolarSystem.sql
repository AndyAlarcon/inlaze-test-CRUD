--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-06 18:24:28

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
-- TOC entry 4843 (class 1262 OID 16426)
-- Name: SolarSystem; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "SolarSystem" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE "SolarSystem" OWNER TO postgres;

\connect "SolarSystem"

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
-- TOC entry 216 (class 1259 OID 16428)
-- Name: planets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planets (
    id integer NOT NULL,
    name character varying,
    mass double precision,
    diameter double precision,
    orbital_period double precision,
    number_of_moons integer
);


ALTER TABLE public.planets OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16427)
-- Name: planets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planets_id_seq OWNER TO postgres;

--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 215
-- Name: planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;


--
-- TOC entry 4688 (class 2604 OID 16431)
-- Name: planets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);


--
-- TOC entry 4837 (class 0 OID 16428)
-- Dependencies: 216
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planets (id, name, mass, diameter, orbital_period, number_of_moons) FROM stdin;
1	Earth	5.972e+24	12742	365.25	1
2	Mercury	3.3011e+23	4879.4	87.97	0
3	Venus	4.8675e+24	12104	224.7	0
4	Mars	6.4171e+23	6779	687	2
5	Jupiter	1.8982e+27	139820	4331.6	79
\.


--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 215
-- Name: planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planets_id_seq', 5, true);


--
-- TOC entry 4692 (class 2606 OID 16435)
-- Name: planets planets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (id);


--
-- TOC entry 4689 (class 1259 OID 16437)
-- Name: ix_planets_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_planets_id ON public.planets USING btree (id);


--
-- TOC entry 4690 (class 1259 OID 16436)
-- Name: ix_planets_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_planets_name ON public.planets USING btree (name);


-- Completed on 2024-07-06 18:24:28

--
-- PostgreSQL database dump complete
--

