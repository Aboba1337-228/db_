--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

-- Started on 2024-06-17 13:09:21

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
-- TOC entry 221 (class 1259 OID 16946)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16976)
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    text text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "lessonId" integer,
    "statusId" character varying(255)
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16975)
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comments_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 225
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- TOC entry 227 (class 1259 OID 16999)
-- Name: lessonCompliteds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."lessonCompliteds" (
    result integer,
    promp integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "lessonId" integer NOT NULL
);


ALTER TABLE public."lessonCompliteds" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16952)
-- Name: lessons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lessons (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content text NOT NULL,
    video character varying(255),
    "ageUnder" integer,
    "ageUp" integer,
    image character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" character varying(255),
    "categoryId" character varying(255),
    finish integer,
    invite integer
);


ALTER TABLE public.lessons OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16951)
-- Name: lessons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lessons_id_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 222
-- Name: lessons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;


--
-- TOC entry 219 (class 1259 OID 16933)
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    question text NOT NULL,
    v1 character varying(255) NOT NULL,
    v2 character varying(255) NOT NULL,
    v3 character varying(255),
    v4 character varying(255),
    correct character varying(255),
    clue text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    image character varying(255),
    "lessonId" integer NOT NULL
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16932)
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_id_seq OWNER TO postgres;

--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 218
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- TOC entry 215 (class 1259 OID 16911)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16970)
-- Name: statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statuses (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.statuses OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16941)
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16917)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    surname character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    birthday date NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "roleId" character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16916)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 216
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4672 (class 2604 OID 16979)
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- TOC entry 4671 (class 2604 OID 16955)
-- Name: lessons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);


--
-- TOC entry 4670 (class 2604 OID 16936)
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- TOC entry 4669 (class 2604 OID 16920)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4851 (class 0 OID 16946)
-- Dependencies: 221
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, "createdAt", "updatedAt") FROM stdin;
Искусство и ремесла	2024-04-04 01:01:53.731+05	2024-04-04 01:01:53.731+05
Спорт и физическая активность	2024-04-04 01:01:53.731+05	2024-04-04 01:01:53.731+05
Музыка	2024-04-04 01:01:53.731+05	2024-04-04 01:01:53.731+05
Наука и технологии	2024-04-04 01:01:53.731+05	2024-04-04 01:01:53.731+05
Литература и языки	2024-04-04 01:01:53.731+05	2024-04-04 01:01:53.731+05
\.


--
-- TOC entry 4856 (class 0 OID 16976)
-- Dependencies: 226
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, value, text, "createdAt", "updatedAt", "userId", "lessonId", "statusId") FROM stdin;
4	5	йцукенгшщвдьт влам ваом ва мвлао мвщдаом вл	2024-05-05 05:40:20.289+05	2024-05-06 23:57:17.557+05	1	34	Принят
3	4	Тест помог мне определить, действительно ли мне интересно будет заниматься таким искусством. Оно требует большого труда и усидчивости. 	2024-05-01 00:37:20.192+05	2024-05-01 00:40:15.815+05	1	\N	Принят
7	5	Занятие очень понравилось, запишусь на курс!	2024-06-03 20:31:08.001+05	2024-06-03 20:31:33.263+05	7	41	Принят
8	5	Очень понравилось занятие!	2024-06-10 01:22:43.903+05	2024-06-10 01:23:05.096+05	8	41	Принят
9	5	Очень понравилось занятие, запишусь на курс!	2024-06-10 03:41:32.884+05	2024-06-10 03:42:57.246+05	9	41	Принят
\.


--
-- TOC entry 4857 (class 0 OID 16999)
-- Dependencies: 227
-- Data for Name: lessonCompliteds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."lessonCompliteds" (result, promp, "createdAt", "updatedAt", "userId", "lessonId") FROM stdin;
1	0	2024-05-04 23:52:22.048+05	2024-05-05 06:49:56.954+05	1	34
\N	\N	2024-05-07 02:44:43.564+05	2024-05-07 02:44:43.564+05	1	37
\N	\N	2024-06-03 20:26:45.766+05	2024-06-03 20:26:45.766+05	7	41
1	0	2024-06-03 22:04:28.649+05	2024-06-03 23:24:17.138+05	7	34
\N	\N	2024-06-06 23:39:24.011+05	2024-06-06 23:39:24.011+05	1	41
0	0	2024-06-09 01:06:57.369+05	2024-06-09 01:06:57.369+05	1	39
0	0	2024-06-09 01:13:49.166+05	2024-06-09 01:13:49.166+05	1	38
\N	0	2024-06-09 02:25:28.958+05	2024-06-09 02:25:28.958+05	8	41
2	0	2024-06-09 02:22:58.57+05	2024-06-09 03:23:59.573+05	8	34
\N	\N	2024-06-09 03:27:41.739+05	2024-06-09 03:27:41.739+05	8	37
0	0	2024-06-09 02:35:55.859+05	2024-06-09 03:27:56.229+05	8	38
0	0	2024-06-09 03:29:37.094+05	2024-06-09 03:29:51.171+05	8	39
\N	\N	2024-06-10 03:40:07.403+05	2024-06-10 03:40:07.403+05	9	41
\.


--
-- TOC entry 4853 (class 0 OID 16952)
-- Dependencies: 223
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lessons (id, name, content, video, "ageUnder", "ageUp", image, "createdAt", "updatedAt", "typeId", "categoryId", finish, invite) FROM stdin;
34	Информационная безопасность	fvdfvdfbcfnmhj,gf	\N	10	15	image-1714606513642.png	2024-05-02 04:35:13.666+05	2024-06-09 02:22:58.636+05	тест	Искусство и ремесла	2	0
38	йцукенгшщ	ывапротьлбдюж.э	\N	10	15	image-1715178521153.png	2024-05-08 19:27:17.388+05	2024-06-09 02:35:55.872+05	тест	Наука и технологии	2	0
37	3	3	video-1714674733553.mp4	3	15	image-1714674733545.png	2024-05-02 23:32:13.576+05	2024-06-09 03:27:41.749+05	видео-урок	Музыка	2	0
39	rty	sdfghj	\N	10	11	image-1715181429130.png	2024-05-08 20:17:09.147+05	2024-06-09 03:29:37.101+05	тест	Литература и языки	2	0
41	Общая физическая подготовка	Общая физическая подготовка закаляет организм, позволяя оставаться бодрым и продуктивным в течение всего дня.	video-1717422147532.mp4	4	18	image-1717422147527.jpg	2024-06-03 18:42:27.897+05	2024-06-10 03:40:07.428+05	видео-урок	Спорт и физическая активность	6	0
\.


--
-- TOC entry 4849 (class 0 OID 16933)
-- Dependencies: 219
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (id, question, v1, v2, v3, v4, correct, clue, "createdAt", "updatedAt", image, "lessonId") FROM stdin;
15	ымвам	ыамва	амвам	\N	\N	v2	вмаваиптр полбдющжлшдгонпенку тшгенгекрувип смиматкпвеуиав пмтперьнктеувиа	2024-05-08 19:27:17.461+05	2024-05-08 19:27:17.461+05	questions[0][image]-1715178437448.png	38
16	ваи апрапнртьолбьопати	нрегоь	кепнгол	\N	\N	v1	хзщшогрнпеавувкапритопат аернтетоьпт а	2024-05-08 19:27:17.467+05	2024-05-08 19:27:17.467+05	questions[1][image]-1715178437456.png	38
18	pwspofvnslkv	ebrtb	tbvetb	ebertb	ebetb	v2	rtgyuio	2024-05-08 19:52:48.108+05	2024-05-08 20:11:31.174+05	\N	34
19	i 56ui57mr7u67k6 7iu6 67 47 56 7yutgfg fhjflfy	ergthbdrt	tyjukyil. yukit7	\N	\N		xsfvdfv	2024-05-08 20:17:09.203+05	2024-05-08 20:17:09.203+05	questions[0][image]-1715181429177.png	39
17	sfbgn dfb	fbgnrdethyjm n	 565j	ytjrtn 	\N	v3	rtnjym,gytfhm nfmrdtg 	2024-05-08 19:43:13.096+05	2024-05-08 20:15:36.174+05	questions[1][image]-1715181336154.png	34
\.


--
-- TOC entry 4845 (class 0 OID 16911)
-- Dependencies: 215
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, "createdAt", "updatedAt") FROM stdin;
USER	2024-04-04 00:41:49.731+05	2024-04-04 00:41:49.731+05
ADMIN	2024-04-04 00:41:49.731+05	2024-04-04 00:41:49.731+05
\.


--
-- TOC entry 4854 (class 0 OID 16970)
-- Dependencies: 224
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.statuses (id, "createdAt", "updatedAt") FROM stdin;
В обработке	2024-04-04 07:27:55.195+05	2024-04-04 07:27:55.195+05
Принят	2024-04-04 07:27:55.213+05	2024-04-04 07:27:55.213+05
Отклонен	2024-04-04 07:27:55.195+05	2024-04-04 07:27:55.195+05
\.


--
-- TOC entry 4850 (class 0 OID 16941)
-- Dependencies: 220
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types (id, "createdAt", "updatedAt") FROM stdin;
тест	2024-04-04 00:53:49.731+05	2024-04-04 00:53:49.731+05
видео-урок	2024-04-04 00:53:49.731+05	2024-04-04 00:53:49.731+05
\.


--
-- TOC entry 4847 (class 0 OID 16917)
-- Dependencies: 217
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, surname, name, birthday, email, password, "createdAt", "updatedAt", "roleId") FROM stdin;
4	admin	admin	2000-01-01	admin	$2b$10$NDs0WiKN/aHfZcPvonRU2eeycNJQevkq9Gu07TPb3/LRJftfuNce6	2024-04-04 07:48:21.784+05	2024-04-04 07:48:21.784+05	ADMIN
1	Иванов	Иван	2010-01-01	ivan@mail.ru	$2b$10$gSnTwl4YFscPrCwpCvvXQOpSCpYKAxLWSBPGd32lj5gnAd0eJMVuO	2024-04-04 00:41:49.731+05	2024-05-07 04:51:59.669+05	USER
7	Иванов	Иван	2017-07-20	ivanov@mail.ru	$2b$10$W5PrQ6R3gc5nBabUOraPVOmeU3icPT3GdahawdFts20YVwzjEPLp.	2024-06-03 18:53:26.972+05	2024-06-03 18:53:26.972+05	USER
8	Литвинов	Роберт	2018-11-28	litvinov@mail.ru	$2b$10$NxHa2dle4rXQGvTxZeJc7OiTFcXdXAyYqbx.Gd1IOshJLil22U3vm	2024-06-09 02:12:46.239+05	2024-06-09 02:23:08.255+05	USER
9	Литвинов	Роберт	2018-11-28	litvinov2@mail.ru	$2b$10$THH5mh2Qmv2O6JXg9EXyu.A1SAUoZGe7xS9dSr4UED9lmsPy5dFmO	2024-06-09 02:15:50.364+05	2024-06-10 03:40:19.979+05	USER
\.


--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 225
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 9, true);


--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 222
-- Name: lessons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lessons_id_seq', 41, true);


--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 218
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 23, true);


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 216
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 9, true);


--
-- TOC entry 4684 (class 2606 OID 16950)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4690 (class 2606 OID 16983)
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- TOC entry 4692 (class 2606 OID 17003)
-- Name: lessonCompliteds lessonCompliteds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."lessonCompliteds"
    ADD CONSTRAINT "lessonCompliteds_pkey" PRIMARY KEY ("userId", "lessonId");


--
-- TOC entry 4686 (class 2606 OID 16959)
-- Name: lessons lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);


--
-- TOC entry 4680 (class 2606 OID 16940)
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- TOC entry 4674 (class 2606 OID 16915)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4688 (class 2606 OID 16974)
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 4682 (class 2606 OID 16945)
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- TOC entry 4676 (class 2606 OID 16926)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4678 (class 2606 OID 16924)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4697 (class 2606 OID 16989)
-- Name: comments comments_lessonId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_lessonId_fkey" FOREIGN KEY ("lessonId") REFERENCES public.lessons(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4698 (class 2606 OID 16994)
-- Name: comments comments_statusId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_statusId_fkey" FOREIGN KEY ("statusId") REFERENCES public.statuses(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4699 (class 2606 OID 16984)
-- Name: comments comments_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4700 (class 2606 OID 17009)
-- Name: lessonCompliteds lessonCompliteds_lessonId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."lessonCompliteds"
    ADD CONSTRAINT "lessonCompliteds_lessonId_fkey" FOREIGN KEY ("lessonId") REFERENCES public.lessons(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4701 (class 2606 OID 17004)
-- Name: lessonCompliteds lessonCompliteds_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."lessonCompliteds"
    ADD CONSTRAINT "lessonCompliteds_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4694 (class 2606 OID 17124)
-- Name: questions lessonId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT "lessonId" FOREIGN KEY ("lessonId") REFERENCES public.lessons(id) NOT VALID;


--
-- TOC entry 4695 (class 2606 OID 16965)
-- Name: lessons lessons_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4696 (class 2606 OID 16960)
-- Name: lessons lessons_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4693 (class 2606 OID 16927)
-- Name: users users_roleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2024-06-17 13:09:22

--
-- PostgreSQL database dump complete
--

