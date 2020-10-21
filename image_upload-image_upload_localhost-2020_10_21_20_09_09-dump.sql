--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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
-- Name: album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album (
    id integer NOT NULL,
    title text,
    "creationTime" timestamp with time zone DEFAULT now()
);


ALTER TABLE public.album OWNER TO postgres;

--
-- Name: feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback (
    id integer NOT NULL,
    content text,
    "creationTime" timestamp with time zone DEFAULT now()
);


ALTER TABLE public.feedback OWNER TO postgres;

--
-- Name: feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedback_id_seq OWNER TO postgres;

--
-- Name: feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feedback_id_seq OWNED BY public.feedback.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id text NOT NULL,
    "publicUrl" text,
    "postId" text,
    "mimeType" text,
    width integer,
    height integer,
    size integer,
    filename text,
    "creationTime" timestamp with time zone DEFAULT now(),
    "parentId" text,
    "userId" integer
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password text,
    "signUpDate" timestamp with time zone DEFAULT now(),
    "avatarUrl" text,
    "displayName" text,
    "googleId" text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: feedback id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album (id, title, "creationTime") FROM stdin;
\.


--
-- Data for Name: feedback; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feedback (id, content, "creationTime") FROM stdin;
1	xd	2019-12-09 04:58:05.769549+03
2	Daha iyi olabilir sanki, hehe 👏	2019-12-09 05:53:54.635218+03
3	Hello world, bitch!	2019-12-09 05:57:05.620579+03
4	\N	2020-01-13 15:54:27.671698+03
5	\N	2020-01-13 15:55:09.662223+03
6	\N	2020-01-13 18:07:28.514171+03
7	\N	2020-01-13 18:08:13.856304+03
8	\N	2020-01-13 21:55:34.367829+03
9	\N	2020-01-14 22:32:34.180205+03
10	\N	2020-01-14 22:33:36.486018+03
11	\N	2020-01-15 02:41:15.454816+03
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, "publicUrl", "postId", "mimeType", width, height, size, filename, "creationTime", "parentId", "userId") FROM stdin;
wrP_dqTaXX4_	https://storage.googleapis.com/paket200/wrP_dqTaXX4_.jpeg	iCR47r028mZZ	image/jpeg	236	313	14488	wrP_dqTaXX4_.jpeg	2020-01-11 05:00:32.982903+03	iCR47r028mZZ	1
UfGs23QqP4oN	https://storage.googleapis.com/paket200/UfGs23QqP4oN.jpeg	NQkhqIkazmXh	image/jpeg	200	267	11449	UfGs23QqP4oN.jpeg	2020-01-11 05:10:58.511786+03	NQkhqIkazmXh	1
fp2J2oE9gcuf	https://storage.googleapis.com/paket200/fp2J2oE9gcuf.jpeg	dgpIe7XGsVoO	image/jpeg	198	298	12552	fp2J2oE9gcuf.jpeg	2020-01-11 17:34:26.715243+03	dgpIe7XGsVoO	1
lOHctk4pWnuu	https://storage.googleapis.com/paket200/lOHctk4pWnuu.jpeg	kUGilJ5cPxAW	image/jpeg	198	297	14087	lOHctk4pWnuu.jpeg	2020-01-11 17:34:50.256636+03	kUGilJ5cPxAW	1
FUz-QkhRKywU	https://storage.googleapis.com/paket200/FUz-QkhRKywU.jpeg	MXdDRSUMAorW	image/jpeg	195	300	10289	FUz-QkhRKywU.jpeg	2020-01-11 17:37:14.877695+03	MXdDRSUMAorW	1
URo0oSZ52_NQ	https://storage.googleapis.com/paket200/URo0oSZ52_NQ.jpeg	abBeoTAFxubL	image/jpeg	1024	1396	76108	URo0oSZ52_NQ.jpeg	2020-01-11 17:37:28.771811+03	abBeoTAFxubL	1
ilXWWeMmhFvl	https://storage.googleapis.com/paket200/ilXWWeMmhFvl.gif	JL4YPzdC_n2J	image/gif	500	281	3042253	ilXWWeMmhFvl.gif	2020-01-11 17:39:08.779273+03	JL4YPzdC_n2J	1
BhOZaGhmp0Jk	https://storage.googleapis.com/paket200/BhOZaGhmp0Jk.jpeg	pvPLPCsRMBqZ	image/jpeg	198	253	9020	BhOZaGhmp0Jk.jpeg	2020-01-11 17:42:36.519709+03	pvPLPCsRMBqZ	1
XDRYsIi8OJ2H	https://storage.googleapis.com/paket200/XDRYsIi8OJ2H.png	yWWgTPz0TZ7G	image/png	96	96	4669	XDRYsIi8OJ2H.png	2020-01-11 18:11:13.093772+03	yWWgTPz0TZ7G	1
A1m_q0edKssT	https://storage.googleapis.com/paket200/A1m_q0edKssT.jpeg	aYG4LdbtPidA	image/jpeg	300	400	37203	A1m_q0edKssT.jpeg	2020-01-11 22:19:02.814817+03	aYG4LdbtPidA	1
C8AAWPlGmby7	https://storage.googleapis.com/paket200/C8AAWPlGmby7.jpeg	E0z4-7uWIz8Q	image/jpeg	1024	1396	76108	C8AAWPlGmby7.jpeg	2020-01-11 22:27:02.118547+03	E0z4-7uWIz8Q	1
nK8Bu4Qecgt5	https://storage.googleapis.com/paket200/nK8Bu4Qecgt5.jpeg	Ny5gbY2FUh8G	image/jpeg	810	1117	147737	nK8Bu4Qecgt5.jpeg	2020-01-11 22:39:18.978746+03	Ny5gbY2FUh8G	1
5XUSviLlFnlB	https://storage.googleapis.com/paket200/5XUSviLlFnlB.jpeg	-rdTcO3YEY1V	image/jpeg	650	792	67489	5XUSviLlFnlB.jpeg	2020-01-11 23:02:01.998837+03	-rdTcO3YEY1V	1
vqFsj7b3U5mB	https://storage.googleapis.com/paket200/vqFsj7b3U5mB.jpeg	-rdTcO3YEY1V	image/jpeg	540	800	62309	vqFsj7b3U5mB.jpeg	2020-01-11 23:02:12.103548+03	-rdTcO3YEY1V	1
0RGgoyaPtyAX	https://storage.googleapis.com/paket200/0RGgoyaPtyAX.jpeg	-rdTcO3YEY1V	image/jpeg	1608	2400	853719	0RGgoyaPtyAX.jpeg	2020-01-11 23:02:15.240234+03	-rdTcO3YEY1V	1
79mc2HK3C5Ii	https://storage.googleapis.com/paket200/79mc2HK3C5Ii.jpeg	-rdTcO3YEY1V	image/jpeg	1200	1189	177180	79mc2HK3C5Ii.jpeg	2020-01-11 23:02:15.411606+03	-rdTcO3YEY1V	1
4uvWk1yOPnXT	https://storage.googleapis.com/paket200/4uvWk1yOPnXT.jpeg	GEKJJ4R0FhF7	image/jpeg	650	792	67489	4uvWk1yOPnXT.jpeg	2020-01-11 23:16:10.371536+03	GEKJJ4R0FhF7	1
CiimCYH4SPOI	https://storage.googleapis.com/paket200/CiimCYH4SPOI.jpeg	vHmbJK1Bh2bg	image/jpeg	1000	1241	173293	CiimCYH4SPOI.jpeg	2020-01-12 04:32:39.981962+03	vHmbJK1Bh2bg	1
pJC6Jp16uK6e	https://storage.googleapis.com/paket200/pJC6Jp16uK6e.jpeg	sIPA2IO00mG-	image/jpeg	635	944	50201	pJC6Jp16uK6e.jpeg	2020-01-13 01:40:23.475455+03	sIPA2IO00mG-	1
3kaUqGVH6V80	https://storage.googleapis.com/paket200/3kaUqGVH6V80.jpeg	7K4jRrbaDy6z	image/jpeg	1024	768	50018	3kaUqGVH6V80.jpeg	2020-01-13 03:11:02.74384+03	7K4jRrbaDy6z	1
ETVSJEclTSwj	https://storage.googleapis.com/paket200/ETVSJEclTSwj.jpeg	7K4jRrbaDy6z	image/jpeg	2393	3000	548685	ETVSJEclTSwj.jpeg	2020-01-13 03:11:09.433469+03	7K4jRrbaDy6z	1
vjJI3hpLaYX4	https://storage.googleapis.com/paket200/vjJI3hpLaYX4.jpeg	qBqWpFDwU90N	image/jpeg	849	849	201187	vjJI3hpLaYX4.jpeg	2020-01-13 03:18:54.664871+03	qBqWpFDwU90N	1
jrqc1XbymtT4	https://storage.googleapis.com/paket200/jrqc1XbymtT4.jpeg	TeusaXpar0kc	image/jpeg	1000	1240	149001	jrqc1XbymtT4.jpeg	2020-01-13 17:53:31.543788+03	TeusaXpar0kc	1
wwprSa6sR5ch	https://storage.googleapis.com/paket200/wwprSa6sR5ch.jpeg	TeusaXpar0kc	image/jpeg	1000	1280	147899	wwprSa6sR5ch.jpeg	2020-01-13 17:53:32.051244+03	TeusaXpar0kc	1
R_U0Gf093UYE	https://storage.googleapis.com/paket200/R_U0Gf093UYE.jpeg	ncNSz9avOzir	image/jpeg	1024	1396	76108	R_U0Gf093UYE.jpeg	2020-01-13 21:55:51.824868+03	ncNSz9avOzir	1
3agvy3yhb_PS	https://storage.googleapis.com/paket200/3agvy3yhb_PS.jpeg	uaKykXfjjiUf	image/jpeg	1000	1280	147899	3agvy3yhb_PS.jpeg	2020-01-15 02:56:16.754907+03	uaKykXfjjiUf	1
CS0LQHTHg8NS	https://storage.googleapis.com/paket200/CS0LQHTHg8NS.jpeg	010101	image/jpeg	2480	3508	625763	CS0LQHTHg8NS.jpeg	2020-09-07 23:12:11.796413+03	010101	1
-r2r0liGCK9l	https://storage.googleapis.com/paket200/-r2r0liGCK9l.jpeg	010101	image/jpeg	1024	1001	70709	-r2r0liGCK9l.jpeg	2020-09-08 00:08:05.941209+03	010101	1
BF_EfPzPLL8a	https://storage.googleapis.com/paket200/BF_EfPzPLL8a.jpeg	010101	image/jpeg	2550	3186	770341	BF_EfPzPLL8a.jpeg	2020-09-07 23:12:26.556962+03	010101	1
J3jzg3Dx3wZ7	https://storage.googleapis.com/paket200/J3jzg3Dx3wZ7.jpeg	010101	image/jpeg	2550	3186	770341	J3jzg3Dx3wZ7.jpeg	2020-09-07 23:12:33.843778+03	010101	1
JwjyBbasVsMi	https://storage.googleapis.com/paket200/JwjyBbasVsMi.jpeg	010101	image/jpeg	2550	3186	770341	JwjyBbasVsMi.jpeg	2020-09-07 23:12:40.621818+03	010101	1
jC4FmXLixPHs	https://storage.googleapis.com/paket200/jC4FmXLixPHs.jpeg	010101	image/jpeg	2480	3508	625763	jC4FmXLixPHs.jpeg	2020-09-08 00:15:26.071152+03	010101	1
1WE-M2ytOZdD	https://storage.googleapis.com/paket200/1WE-M2ytOZdD.jpeg	010101	image/jpeg	1080	1170	191848	1WE-M2ytOZdD.jpeg	2020-10-17 05:26:34.783025+03	010101	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, "signUpDate", "avatarUrl", "displayName", "googleId") FROM stdin;
1	olcay@mail.com	12345678	2020-01-09 21:37:51.687526+03	https://web.dev/images/authors/una.jpg	Olcay Usta	\N
\.


--
-- Name: feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feedback_id_seq', 11, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- Name: album albums_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT albums_pk PRIMARY KEY (id);


--
-- Name: feedback feedback_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pk PRIMARY KEY (id);


--
-- Name: images images_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pk PRIMARY KEY (id);


--
-- Name: users users_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

