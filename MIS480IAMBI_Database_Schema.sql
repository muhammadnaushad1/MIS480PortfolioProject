--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2021-11-06 22:12:52 MDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 21929)
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    account_id integer NOT NULL,
    account_name character varying(40) NOT NULL,
    industry_id integer NOT NULL
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 21927)
-- Name: accounts_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_account_id_seq OWNER TO postgres;

--
-- TOC entry 3225 (class 0 OID 0)
-- Dependencies: 200
-- Name: accounts_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_account_id_seq OWNED BY public.accounts.account_id;


--
-- TOC entry 215 (class 1259 OID 22020)
-- Name: assignments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assignments (
    assignment_id integer NOT NULL,
    group_id integer NOT NULL,
    license_id integer NOT NULL
);


ALTER TABLE public.assignments OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 22018)
-- Name: assignments_assignment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.assignments_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assignments_assignment_id_seq OWNER TO postgres;

--
-- TOC entry 3226 (class 0 OID 0)
-- Dependencies: 214
-- Name: assignments_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assignments_assignment_id_seq OWNED BY public.assignments.assignment_id;


--
-- TOC entry 207 (class 1259 OID 21963)
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    file_id integer NOT NULL,
    product_id integer NOT NULL,
    file_name character varying(40) NOT NULL
);


ALTER TABLE public.files OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 21961)
-- Name: files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_file_id_seq OWNER TO postgres;

--
-- TOC entry 3227 (class 0 OID 0)
-- Dependencies: 206
-- Name: files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_file_id_seq OWNED BY public.files.file_id;


--
-- TOC entry 203 (class 1259 OID 21942)
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    group_id integer NOT NULL,
    group_name character varying(40) NOT NULL,
    account_id integer NOT NULL
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 21940)
-- Name: groups_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_group_id_seq OWNER TO postgres;

--
-- TOC entry 3228 (class 0 OID 0)
-- Dependencies: 202
-- Name: groups_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_group_id_seq OWNED BY public.groups.group_id;


--
-- TOC entry 217 (class 1259 OID 22038)
-- Name: hits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hits (
    hit_id bigint NOT NULL,
    file_id integer NOT NULL,
    user_id integer NOT NULL,
    date_attemtped date NOT NULL,
    allowed boolean NOT NULL
);


ALTER TABLE public.hits OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 22036)
-- Name: hits_hit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hits_hit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hits_hit_id_seq OWNER TO postgres;

--
-- TOC entry 3229 (class 0 OID 0)
-- Dependencies: 216
-- Name: hits_hit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hits_hit_id_seq OWNED BY public.hits.hit_id;


--
-- TOC entry 199 (class 1259 OID 21921)
-- Name: industries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.industries (
    industry_id integer NOT NULL,
    industry_name character varying(40) NOT NULL
);


ALTER TABLE public.industries OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 21919)
-- Name: industries_industry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.industries_industry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.industries_industry_id_seq OWNER TO postgres;

--
-- TOC entry 3230 (class 0 OID 0)
-- Dependencies: 198
-- Name: industries_industry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.industries_industry_id_seq OWNED BY public.industries.industry_id;


--
-- TOC entry 209 (class 1259 OID 21976)
-- Name: licenses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licenses (
    license_id integer NOT NULL,
    product_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    account_id integer NOT NULL
);


ALTER TABLE public.licenses OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 21974)
-- Name: licenses_license_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.licenses_license_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licenses_license_id_seq OWNER TO postgres;

--
-- TOC entry 3231 (class 0 OID 0)
-- Dependencies: 208
-- Name: licenses_license_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.licenses_license_id_seq OWNED BY public.licenses.license_id;


--
-- TOC entry 213 (class 1259 OID 22002)
-- Name: memberships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.memberships (
    membership_id integer NOT NULL,
    group_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.memberships OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 22000)
-- Name: memberships_membership_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.memberships_membership_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.memberships_membership_id_seq OWNER TO postgres;

--
-- TOC entry 3232 (class 0 OID 0)
-- Dependencies: 212
-- Name: memberships_membership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.memberships_membership_id_seq OWNED BY public.memberships.membership_id;


--
-- TOC entry 205 (class 1259 OID 21955)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(40) NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 21953)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 3233 (class 0 OID 0)
-- Dependencies: 204
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- TOC entry 211 (class 1259 OID 21994)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    first_name character varying(40) NOT NULL,
    last_name character varying(40) NOT NULL,
    email character varying(50) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 21992)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 3234 (class 0 OID 0)
-- Dependencies: 210
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 3059 (class 2604 OID 21932)
-- Name: accounts account_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts ALTER COLUMN account_id SET DEFAULT nextval('public.accounts_account_id_seq'::regclass);


--
-- TOC entry 3066 (class 2604 OID 22023)
-- Name: assignments assignment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments ALTER COLUMN assignment_id SET DEFAULT nextval('public.assignments_assignment_id_seq'::regclass);


--
-- TOC entry 3062 (class 2604 OID 21966)
-- Name: files file_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN file_id SET DEFAULT nextval('public.files_file_id_seq'::regclass);


--
-- TOC entry 3060 (class 2604 OID 21945)
-- Name: groups group_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN group_id SET DEFAULT nextval('public.groups_group_id_seq'::regclass);


--
-- TOC entry 3067 (class 2604 OID 22041)
-- Name: hits hit_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hits ALTER COLUMN hit_id SET DEFAULT nextval('public.hits_hit_id_seq'::regclass);


--
-- TOC entry 3058 (class 2604 OID 21924)
-- Name: industries industry_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.industries ALTER COLUMN industry_id SET DEFAULT nextval('public.industries_industry_id_seq'::regclass);


--
-- TOC entry 3063 (class 2604 OID 21979)
-- Name: licenses license_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses ALTER COLUMN license_id SET DEFAULT nextval('public.licenses_license_id_seq'::regclass);


--
-- TOC entry 3065 (class 2604 OID 22005)
-- Name: memberships membership_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships ALTER COLUMN membership_id SET DEFAULT nextval('public.memberships_membership_id_seq'::regclass);


--
-- TOC entry 3061 (class 2604 OID 21958)
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- TOC entry 3064 (class 2604 OID 21997)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 3071 (class 2606 OID 21934)
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (account_id);


--
-- TOC entry 3085 (class 2606 OID 22025)
-- Name: assignments assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (assignment_id);


--
-- TOC entry 3077 (class 2606 OID 21968)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (file_id);


--
-- TOC entry 3073 (class 2606 OID 21947)
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (group_id);


--
-- TOC entry 3087 (class 2606 OID 22043)
-- Name: hits hits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hits
    ADD CONSTRAINT hits_pkey PRIMARY KEY (hit_id);


--
-- TOC entry 3069 (class 2606 OID 21926)
-- Name: industries industries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.industries
    ADD CONSTRAINT industries_pkey PRIMARY KEY (industry_id);


--
-- TOC entry 3079 (class 2606 OID 21981)
-- Name: licenses licenses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses
    ADD CONSTRAINT licenses_pkey PRIMARY KEY (license_id);


--
-- TOC entry 3083 (class 2606 OID 22007)
-- Name: memberships memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships
    ADD CONSTRAINT memberships_pkey PRIMARY KEY (membership_id);


--
-- TOC entry 3075 (class 2606 OID 21960)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 3081 (class 2606 OID 21999)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3095 (class 2606 OID 22026)
-- Name: assignments fk_assign_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT fk_assign_group FOREIGN KEY (group_id) REFERENCES public.groups(group_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3096 (class 2606 OID 22031)
-- Name: assignments fk_assign_license; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT fk_assign_license FOREIGN KEY (license_id) REFERENCES public.licenses(license_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3090 (class 2606 OID 21969)
-- Name: files fk_file_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT fk_file_product FOREIGN KEY (product_id) REFERENCES public.products(product_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3089 (class 2606 OID 21948)
-- Name: groups fk_group_account; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT fk_group_account FOREIGN KEY (account_id) REFERENCES public.accounts(account_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3097 (class 2606 OID 22044)
-- Name: hits fk_hit_file; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hits
    ADD CONSTRAINT fk_hit_file FOREIGN KEY (file_id) REFERENCES public.files(file_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3098 (class 2606 OID 22049)
-- Name: hits fk_hit_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hits
    ADD CONSTRAINT fk_hit_user FOREIGN KEY (user_id) REFERENCES public.users(user_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3088 (class 2606 OID 21935)
-- Name: accounts fk_industry; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT fk_industry FOREIGN KEY (industry_id) REFERENCES public.industries(industry_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3091 (class 2606 OID 21982)
-- Name: licenses fk_license_account; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses
    ADD CONSTRAINT fk_license_account FOREIGN KEY (account_id) REFERENCES public.accounts(account_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3092 (class 2606 OID 21987)
-- Name: licenses fk_license_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses
    ADD CONSTRAINT fk_license_product FOREIGN KEY (product_id) REFERENCES public.products(product_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3093 (class 2606 OID 22008)
-- Name: memberships fk_member_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships
    ADD CONSTRAINT fk_member_group FOREIGN KEY (group_id) REFERENCES public.groups(group_id) MATCH FULL ON UPDATE CASCADE;


--
-- TOC entry 3094 (class 2606 OID 22013)
-- Name: memberships fk_member_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships
    ADD CONSTRAINT fk_member_user FOREIGN KEY (user_id) REFERENCES public.users(user_id) MATCH FULL ON UPDATE CASCADE;


-- Completed on 2021-11-06 22:12:52 MDT

--
-- PostgreSQL database dump complete
--

