-- dogfish schema dump


--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    migration_id character varying(128) NOT NULL
);


--
-- Name: stuff; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE stuff (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: things; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE things (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (migration_id);


--
-- Name: stuff_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY stuff
    ADD CONSTRAINT stuff_pkey PRIMARY KEY (id);


--
-- Name: things_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY things
    ADD CONSTRAINT things_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--



-- Schema dump done. Now dumping migration tracking table:


--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO schema_migrations VALUES ('1234');
INSERT INTO schema_migrations VALUES ('5678');


--
-- PostgreSQL database dump complete
--

