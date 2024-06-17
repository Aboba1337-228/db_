--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.0

-- Started on 2024-06-17 01:47:25

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
-- TOC entry 230 (class 1259 OID 17146)
-- Name: basket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket (
    id integer NOT NULL,
    userid integer NOT NULL
);


ALTER TABLE public.basket OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17145)
-- Name: basket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.basket_id_seq OWNER TO postgres;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 229
-- Name: basket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_id_seq OWNED BY public.basket.id;


--
-- TOC entry 232 (class 1259 OID 17474)
-- Name: basket_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_products (
    id integer NOT NULL,
    count integer NOT NULL,
    productid integer NOT NULL,
    pharmid integer NOT NULL,
    basketid integer NOT NULL
);


ALTER TABLE public.basket_products OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17473)
-- Name: basket_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.basket_products_id_seq OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 231
-- Name: basket_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_products_id_seq OWNED BY public.basket_products.id;


--
-- TOC entry 218 (class 1259 OID 17021)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id_cat integer NOT NULL,
    name_cat character varying(255) NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17020)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_id_seq OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 217
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id_cat;


--
-- TOC entry 220 (class 1259 OID 17028)
-- Name: maker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.maker (
    id_maker integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.maker OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17027)
-- Name: maker_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.maker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maker_id_seq OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 219
-- Name: maker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.maker_id_seq OWNED BY public.maker.id_maker;


--
-- TOC entry 238 (class 1259 OID 17962)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    date timestamp with time zone DEFAULT timezone('Asia/Yekaterinburg'::text, CURRENT_TIMESTAMP),
    price numeric NOT NULL,
    nameuser character varying(255) NOT NULL,
    teluser character varying(255) NOT NULL,
    userid integer NOT NULL,
    order_product_id integer NOT NULL,
    pharmid integer NOT NULL,
    statusid integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17961)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 237
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 236 (class 1259 OID 17880)
-- Name: orders_product_id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_product_id (
    id integer NOT NULL,
    productid integer NOT NULL,
    count integer NOT NULL,
    key integer NOT NULL
);


ALTER TABLE public.orders_product_id OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17879)
-- Name: orders_product_id_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_product_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_product_id_id_seq OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 235
-- Name: orders_product_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_product_id_id_seq OWNED BY public.orders_product_id.id;


--
-- TOC entry 226 (class 1259 OID 17101)
-- Name: pharm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pharm (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    is24 boolean NOT NULL,
    userid integer NOT NULL
);


ALTER TABLE public.pharm OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17100)
-- Name: pharm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pharm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pharm_id_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 225
-- Name: pharm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pharm_id_seq OWNED BY public.pharm.id;


--
-- TOC entry 222 (class 1259 OID 17054)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    descript text NOT NULL,
    price numeric NOT NULL,
    categoryid integer NOT NULL,
    makerid integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17053)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 228 (class 1259 OID 17120)
-- Name: quantity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quantity (
    id integer NOT NULL,
    quantity integer NOT NULL,
    productid integer NOT NULL,
    pharmid integer NOT NULL
);


ALTER TABLE public.quantity OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17119)
-- Name: quantity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quantity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quantity_id_seq OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 227
-- Name: quantity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quantity_id_seq OWNED BY public.quantity.id;


--
-- TOC entry 216 (class 1259 OID 16991)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    role character varying(255) NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16990)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 215
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 234 (class 1259 OID 17816)
-- Name: statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statuses (
    id integer NOT NULL,
    status character varying(255) NOT NULL
);


ALTER TABLE public.statuses OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17815)
-- Name: statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.statuses_id_seq OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 233
-- Name: statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;


--
-- TOC entry 224 (class 1259 OID 17085)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    tel character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    roleid integer NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17084)
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
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 223
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4696 (class 2604 OID 17149)
-- Name: basket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket ALTER COLUMN id SET DEFAULT nextval('public.basket_id_seq'::regclass);


--
-- TOC entry 4697 (class 2604 OID 17477)
-- Name: basket_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products ALTER COLUMN id SET DEFAULT nextval('public.basket_products_id_seq'::regclass);


--
-- TOC entry 4690 (class 2604 OID 17024)
-- Name: category id_cat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id_cat SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- TOC entry 4691 (class 2604 OID 17031)
-- Name: maker id_maker; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maker ALTER COLUMN id_maker SET DEFAULT nextval('public.maker_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 17965)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 4699 (class 2604 OID 17883)
-- Name: orders_product_id id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_product_id ALTER COLUMN id SET DEFAULT nextval('public.orders_product_id_id_seq'::regclass);


--
-- TOC entry 4694 (class 2604 OID 17104)
-- Name: pharm id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pharm ALTER COLUMN id SET DEFAULT nextval('public.pharm_id_seq'::regclass);


--
-- TOC entry 4692 (class 2604 OID 17057)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4695 (class 2604 OID 17123)
-- Name: quantity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quantity ALTER COLUMN id SET DEFAULT nextval('public.quantity_id_seq'::regclass);


--
-- TOC entry 4689 (class 2604 OID 16994)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4698 (class 2604 OID 17819)
-- Name: statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);


--
-- TOC entry 4693 (class 2604 OID 17088)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4900 (class 0 OID 17146)
-- Dependencies: 230
-- Data for Name: basket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket (id, userid) FROM stdin;
7	11
10	35
11	36
12	37
13	38
14	39
\.


--
-- TOC entry 4902 (class 0 OID 17474)
-- Dependencies: 232
-- Data for Name: basket_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.basket_products (id, count, productid, pharmid, basketid) FROM stdin;
\.


--
-- TOC entry 4888 (class 0 OID 17021)
-- Dependencies: 218
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id_cat, name_cat) FROM stdin;
1	Аминоскислоты
2	Для иммуной системы
3	Для мам
4	Для детей и подростков
5	Для работы мозга
6	Для органов зрения
7	Для сердца, сосудов и вен
8	Для кожи, ногтей, волос
9	Для пищеварения
10	Для опорно-двигательного аппарата и суставов
11	Для мочеполовой ситемы
12	Другие
\.


--
-- TOC entry 4890 (class 0 OID 17028)
-- Dependencies: 220
-- Data for Name: maker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.maker (id_maker, name) FROM stdin;
2	Эвалар ЗАО
3	VITRUM
4	В-МИН ООО/ ДИОД ПАО
5	ОАО 'Фармстандарт-Лексредства'
6	ГЕЛАДРИНК
7	ОАО Фармстандарт-УфаВИТА
8	ООО 'Биоинвентика'
9	ULTRASUPPS
\.


--
-- TOC entry 4908 (class 0 OID 17962)
-- Dependencies: 238
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, date, price, nameuser, teluser, userid, order_product_id, pharmid, statusid) FROM stdin;
1	2024-05-13 19:20:46+05	1840.4	Галимьянова Элеонора Руслановна	89873435055	11	335239	26	4
2	2024-05-13 20:11:18+05	422.4	Галимьянова Элеонора Руслановна	89873435055	11	120450	26	3
3	2024-05-13 20:30:09+05	2836	Галимьянова Элеонора Руслановна	89873435055	11	658616	26	3
4	2024-05-13 20:31:41+05	709	Галимьянова Элеонора Руслановна	89873435055	11	633835	26	4
8	2024-05-30 12:01:30+05	3258.4	Галимьянова Элеонора	89873435055	11	623665	26	3
7	2024-05-27 14:34:10+05	2836	Галимьянова Элеонора	89873435055	11	866850	26	3
6	2024-05-15 11:21:52+05	2549.4	Галимьянова Элеонора	89873435055	11	552083	26	4
5	2024-05-13 22:58:29+05	3967.4	Галимьянова Элеонора Руслановна	89873435055	11	633723	26	4
11	2024-06-08 23:01:20+05	609	Галимьянова Элеонора	89873435055	11	863610	23	1
12	2024-06-08 23:04:48+05	609	Галимьянова Элеонора	89873435055	11	879481	20	1
13	2024-06-08 23:08:43+05	609	Галимьянова Элеонора	89873435055	11	401083	20	1
14	2024-06-08 23:09:59+05	609	Галимьянова Элеонора	89873435055	11	611178	20	1
15	2024-06-08 23:16:18+05	609	Галимьянова Элеонора	89873435055	11	638146	20	1
16	2024-06-08 23:44:47+05	609	Галимьянова Элеонора	89873435055	11	245348	20	1
9	2024-06-06 01:58:03+05	709	Галимьянова Элеонора	89873435055	11	839829	26	3
10	2024-06-07 02:46:24+05	1840.4	Галимьянова Элеонора	89873435055	11	378385	26	3
18	2024-06-16 01:13:48+05	2127	Галимьянова Элеонора	89873435055	11	964808	26	4
17	2024-06-16 01:13:34+05	422.4	Галимьянова Элеонора	89873435055	11	840292	26	3
19	2024-06-16 20:26:13+05	709	Галимьянова Элеонора	89873435055	11	329943	26	4
20	2024-06-16 22:36:31+05	2836	Галимьянова Элеонора Руслановна	89873435055	11	911089	26	2
21	2024-06-17 00:37:31+05	844.8	Галимьянова Элеонора Руслановна	89873435055	11	215755	26	3
\.


--
-- TOC entry 4906 (class 0 OID 17880)
-- Dependencies: 236
-- Data for Name: orders_product_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_product_id (id, productid, count, key) FROM stdin;
1	15	2	335239
2	14	1	335239
3	14	1	120450
4	15	4	658616
5	15	1	633835
6	15	5	633723
7	14	1	633723
8	15	3	552083
9	14	1	552083
10	15	4	866850
11	15	4	623665
12	14	1	623665
13	15	1	839829
14	15	2	378385
15	14	1	378385
16	12	1	863610
17	12	1	879481
18	12	1	401083
19	12	1	611178
20	12	1	638146
21	12	1	245348
22	14	1	840292
23	15	3	964808
24	15	1	329943
25	15	4	911089
26	14	2	215755
\.


--
-- TOC entry 4896 (class 0 OID 17101)
-- Dependencies: 226
-- Data for Name: pharm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pharm (id, name, is24, userid) FROM stdin;
20	Аптека Карагандинская 102	f	15
21	Аптека Гагарина 23 литер Е	f	16
22	Аптека Комсомольская 66	f	17
23	Аптека Невельская 24	f	18
24	Аптечный пункт Гагарина 19А	f	19
25	Аптечный пункт Гагарина 11	f	20
26	Аптечный пункт 1 Мая 61	f	21
27	Аптечный пункт М. Жукова 42	f	22
28	Аптечный пункт Ноябрьская 43/2	f	23
29	Аптечный пункт Пролетарская 265	f	24
30	Аптечный пункт Центральная 11	f	25
31	Аптечный пункт Победы 140В	f	26
32	Аптечный пункт Химическая 6	f	27
33	Аптечный пункт Салмышская 13	f	28
34	Аптечный пункт Краснохолм Дзержинского 43	f	29
\.


--
-- TOC entry 4892 (class 0 OID 17054)
-- Dependencies: 222
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, title, image, descript, price, categoryid, makerid) FROM stdin;
12	Левокарнил 500мг таб 1,2г n30	image-1710787664554.png	ЛЕВOКАРНИЛ – это новое лекарство от известного фармацевтического производителя «Эвалар», которое поможет «открыть второе дыхание»! Лекарство «ЛЕВОКАРНИЛ» содержит самый известный «спортивный ингредиент» L- карнитин. L-карнитин - это особое вещество, которое повышает скорость метаболизма жиров в организме и выполняет функцию жиросжигателя, вырабатывая большое количество так необходимой нам энергии! Вот он и есть источник того самого «второго дыхания»! Если человек испытывает тяжелые физические нагрузки или получает неполноценное питание, в организме наблюдается недостаток L-карнитина. Поэтому всем, соблюдающим диету и активно занимающимся спортом, L- карнитин жизненно необходим! «ЛЕВОКАРНИЛ» - это лекарственное средство, которое содержит оптимальную дозу L- карнитина: при приеме всего 5 мл раствора вы получите терапевтическую дозу этого «метаболического активатора» - 1 500 мг! Создан специально для людей с синдромом «хронической усталости» и менеджеров с признаками «выгорания». Повышает образование энергии при расщеплении жиров. Улучшает настроение, повышая выработку эндорфинов. Повышает стрессоустойчивость и работоспособность. Улучшает способность работать в условиях многозадачности. Повышает концентрацию и внимание к деталям. Необходим для спортсменов, тренеров и инструкторов. Повышает выносливость организма к физическим нагрузкам. Усиливает интенсивность сжигания жировой ткани во время тренировок с образованием энергии. Улучшает усвоение белков. Повышает физическую выносливость без чувства усталости. Улучшает настроение, повышая выработку эндорфинов. Улучшает координацию и скоростно-силовые показатели. Ускоряет восстановительные процессы после занятий. Рекомендован для всех «худеющих» и для людей, контролирующих вес. Ускоряет метаболизм, способствует сжиганию жира. Повышает эффективность тренировок, сжиганию жира и образованию энергии, необходимой для тренировок. Способствует повышению эффективности диетотерапии.	609	1	2
13	Витрум пренатал плюс таб. п/о плен. 1470мг №30	image-1710787692544.png	Профилактика гиповитаминозов и дефицита минералов в период беременности и лактации, профилактика железа и кальция в период беременности.	847	3	3
14	Лимфотранзит 30 шт. капсулы массой 0,46г 	image-1710787740473.png	Снятие отеков, активизация работы лимфатической системы, очищение организма от токсинов.	422.4	11	2
15	Бэби формула мишки спокойствие пастилки жеват. 2,5г №60 	image-1710787773521.png	Российская Федерация, ; патока крахмальная, сахар, желатин, магния лактат, глицин, лимонная кислота (регулятор кислотности), экстракт мяты, экстракт мелиссы, краситель натуральный красный, ароматизатор натуральный "Клубника", глазирователь (кокосовое и пальмоядровое масла, воск	709	4	2
16	Спирулина ВЭЛ табл. 500 мг №120	image-1710787799469.png	Биологически активная добавка к пище — содержит микроводоросль Спирулины Платенсис, которая известна во всем мире как природное средство для укрепления иммунитета. Дополнительный источник фикоцианинов и бета-каротина.	385	2	4
17	Компливит формула роста волос капс. №30	image-1710787827865.png	Единственный* специализированный комплекс против выпадения волос, содержащий комбинацию экстракта карликовой пальмы, витаминов и минералов, благодаря которой он работает** в 2-ух направлениях: предотвращает выпадение волос и способствует росту новых волос.	787	8	5
18	Тройчатка эвалар капс. 0,42г №90	image-1710787851297.png	Тройчатка — специально разработанный комплекс из экстрактов трех трав, создающий неблагоприятные условия для паразитов. Травяные горечи, заключенные в капсулы Тройчатки обладают мягким желчегонным и сокогонным действием, что способствует выведению из организма как «непрошеных гостей», так и продуктов их жизнедеятельности.	641	9	2
19	Геладринк артродиет капс. 639мг №360	image-1710787880458.png	Артродиетическое питание для суставов и сосудов, замедляет процессы старения всех соединительной ткани. Способствует продлению активной жизнедеятельности суставов, позвоночника и сосудов. Улучшает состояние кожи, волос и ногтей.	3061.9	10	6
20	Компливит Офтальмо таблетки п/о плен. 472,5мг 30шт	image-1710787901357.png	Компливит Офтальмо - это биологически активная добавка к пище, разработанная российской фармацевтической компанией. При производстве используется специальная технология, которая обеспечивает совместимость всех компонентов в 1 таблетке.	425	6	7
21	Когнивия пакеты-саше порошок Эвалар 14,5г 10шт	image-1710787934961.png	Комплекс для оптимизации работы и здоровья когнитивной системы.	662.5	5	2
22	Сироп шиповника на сахаре 250мл	image-1710787959686.png	«Сироп шиповника» - это старое средство, изготовленное по новой технологии на основе сухого экстракта плодов шиповника. Это источник природных поливитаминов и микроэлементов. Высокое содержание витамина С определяет его антиоксидантную активность, что помогает восстановиться после перенесенных заболеваний, тяжелых физических и умственных нагрузок.	81	12	8
26	Ультрасаппс коэнзим q10 антиоксидант 100 мг 30 шт. капсулы массой 380 мг/банка\n\n	image-1718480421702.png	УЛЬТРАСАППС Коэнзим Q10 Антиоксидант 100мг (ULTRASUPPS CoQ10 Antioxidant 100mg) - мягкие желатиновые капсулы массой 380 мг.\nКоэнзим Q10 присутствует в каждой клетке организма человека и выполняет две важные функции: способствует правильному обмену веществ и производит энергию. Уровень коэнзима начинает снижаться у мужчин и женщин около 35 лет.\nПреимущества Coenzyme Q10 100mg от бренда Ultrasupps - это:\n- Поддержание здорового функционирования мозга и сердечно-сосудистой системы.\n- Антиоксидантная защита, которая помогает предотвратить развитие атеросклероза и образование холестериновых бляшек, а также замедляет процессы старения.\n- Повышение физической выносливости и работоспособности, а также помощь в борьбе с хронической усталостью.\n- Укрепление иммунной системы.\nСодержание биологически активных компонентов в 1 порции:\nв 1 порции - 1 капсула (в % от адекватного уровня потребления): коэнзим Q10 - 100мг (333%).	1107	7	9
\.


--
-- TOC entry 4898 (class 0 OID 17120)
-- Dependencies: 228
-- Data for Name: quantity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quantity (id, quantity, productid, pharmid) FROM stdin;
13	20	13	24
14	14	13	25
11	9	12	22
12	2	12	23
9	3	12	20
10	3	12	21
16	4	15	26
15	2	14	26
\.


--
-- TOC entry 4886 (class 0 OID 16991)
-- Dependencies: 216
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, role) FROM stdin;
1	USER
2	PHARM
3	ADMIN
\.


--
-- TOC entry 4904 (class 0 OID 17816)
-- Dependencies: 234
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.statuses (id, status) FROM stdin;
1	В ожидании
2	Готов к получению
3	Отклонён
4	Получен
\.


--
-- TOC entry 4894 (class 0 OID 17085)
-- Dependencies: 224
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, tel, password, roleid) FROM stdin;
13	аптека	430	$2a$07$TDmOuhu4z660zYMuA19sY.4gynH0AWsyoNBfWV7UCQaEsbv2puHla	2
14	аптека	460	$2a$07$WbHyRR91eSP656lvfxw9AOdx1BckXXU/xXt1jjnUndOq6DqGSTW86	2
15	аптека	405	$2a$07$kRX/hjpMNDiQOxVyEXv4hO1xR07sdGnAZvtRtH/Kv7tYAp.tQiFE6	2
16	аптека	470	$2a$07$keu2Iy8vnCfShfddn8caYOIksV3c8rIxNLMPXQWSsa9OoDUmn0sqi	2
17	аптека	440	$2a$07$NJ54ZoAPgteWPF7MA5AFg.i3e9nQJuXTBfaS7RvU5vVeup40ejGXK	2
18	аптека	510	$2a$07$6VLLz8lEnbb0EHrNgN7Zx.0K0VCAsi00Uwg65k.J16VWlLK6WFMiG	2
19	аптека	488	$2a$07$sn3AL4Br4yiorFIb4HU/Mu6BBPKcYJjgmSf2ZedhDWQnHMFe/Z/fe	2
20	аптека	486	$2a$07$oIFiZR/jpc2lLF7D22yvGOHIK5f2kKL4NGROwqwRlBHwg4Yoxx/xa	2
21	аптека	495	$2a$07$FRyReYyscsrkvNvoF63C4uEHrqVHCwsh6yQiDc70mX6OlCvCzXCk.	2
22	аптека	498	$2a$07$DE/IH16Q06LHxCTqyftVMe8WiY89z8.9.wjH.HEVBHlD.Is1jZiD2	2
23	аптека	529	$2a$07$dYjkUGbHs1nG6AJDQFdnyOADAYSfzQmONQiXkr3UjLiXb9W94afey	2
24	аптека	514	$2a$07$EqhyJF2iGEat8koU1TNClOXPEFhET1YuTplA/D9sK/Ds11XICn6i6	2
25	аптека	540	$2a$07$a1LZTELJ7YkDVbfwtyh/SuOclwmLJlEiN.ufhgpUdUa6xgBYLSVPm	2
26	аптека	520	$2a$07$tFF/zv1ox4q5saehoJ1TJu73FGJZGZm3fdvlsCuh8m8bqjgGCR4HC	2
27	аптека	524	$2a$07$i2nLmFgwFfYX23NN967JG.yVdC5eP8tybuFhNWINpVpMV3RpJKYoC	2
28	аптека	534	$2a$07$biJzzePKYCtBw7WBI8c4nuPdpOzxMyPb64Ybf2egDew6x4x91civO	2
30	Иванов Иван	507507	$2a$07$xZEG9trAP125H4g5lhns3uDFCTgnp7BIfgHOeFCDQGL3tlO8Yno.y	1
31	Karimulin Valey	89228451407	$2a$07$2XYkNdRhGwmjQZvphidCm.p8Tspjbde0xbs.gNovVHJmbHW6Imz7C	1
34	апиер	+7	$2a$07$YK4F2tHi6ARhdE/C2nAVSeNJB8XyjtwmZcBIQRBfxCr6olWoyDoHS	1
35	эля	+7(111)-111-11-11	$2a$07$MYvYHfyXJ0uCJ6R1yxT3.euu0gXq76FXPqMDA.GWrVLJq3DHSzPN.	1
29	аптека	544	$2a$07$WWl8iv0xq7E1oXYZm3XJAuabDHHFRP2tN81vRY7kMF.LF.xtovhaa	2
11	Галимьянова Элеонора Руслановна	89873435055	$2a$07$8UIhOwbBhXmKt2vf/SeGmuYs/nx.dyaZhHaAj4xI3iprMVByWLY3m	1
36	кто	+7(880)-055-53-53	$2a$07$0YlNL12d7rcTqx.Xx075eeepjnrADjXTlu7gypA3CSxqHrF2yQ.lC	1
37	где	+7(800)-555-35-35	$2a$07$ojpy6RC8vSoF8xWq4TFzdum2irYd3qcMakmq.nUWC2Dl5tYvlmYha	1
38	Люблю тебя Солнышко	+7(228)-133-73-33	$2a$07$73FlqxPkvzH5oWUTOJe7tOE7E2E6mHsGH7Pk/UrSoU5sJJ65hjT52	1
39	У тебя все получится 	+7(666)-666-66-66	$2a$07$.wNZhDJkZiyY2y3mcUxT2OeUj3jAeCcxgCLaeBgYIXpgnamWmitk2	1
\.


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 229
-- Name: basket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_id_seq', 14, true);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 231
-- Name: basket_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_products_id_seq', 91, true);


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 217
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 13, true);


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 219
-- Name: maker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.maker_id_seq', 9, true);


--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 237
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 21, true);


--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 235
-- Name: orders_product_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_product_id_id_seq', 26, true);


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 225
-- Name: pharm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pharm_id_seq', 34, true);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 26, true);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 227
-- Name: quantity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quantity_id_seq', 16, true);


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 215
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 233
-- Name: statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statuses_id_seq', 4, true);


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 223
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 39, true);


--
-- TOC entry 4719 (class 2606 OID 17151)
-- Name: basket basket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket
    ADD CONSTRAINT basket_pkey PRIMARY KEY (id);


--
-- TOC entry 4721 (class 2606 OID 17479)
-- Name: basket_products basket_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_pkey PRIMARY KEY (id);


--
-- TOC entry 4705 (class 2606 OID 17026)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id_cat);


--
-- TOC entry 4707 (class 2606 OID 17033)
-- Name: maker maker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maker
    ADD CONSTRAINT maker_pkey PRIMARY KEY (id_maker);


--
-- TOC entry 4727 (class 2606 OID 17970)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4725 (class 2606 OID 17885)
-- Name: orders_product_id orders_product_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_product_id
    ADD CONSTRAINT orders_product_id_pkey PRIMARY KEY (id);


--
-- TOC entry 4715 (class 2606 OID 17106)
-- Name: pharm pharm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pharm
    ADD CONSTRAINT pharm_pkey PRIMARY KEY (id);


--
-- TOC entry 4709 (class 2606 OID 17061)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 17125)
-- Name: quantity quantity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quantity
    ADD CONSTRAINT quantity_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16996)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4723 (class 2606 OID 17821)
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 4711 (class 2606 OID 17092)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4713 (class 2606 OID 17094)
-- Name: users users_tel_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_tel_key UNIQUE (tel);


--
-- TOC entry 4735 (class 2606 OID 17490)
-- Name: basket_products basket_products_basketid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_basketid_fkey FOREIGN KEY (basketid) REFERENCES public.basket(id);


--
-- TOC entry 4736 (class 2606 OID 17485)
-- Name: basket_products basket_products_pharmid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_pharmid_fkey FOREIGN KEY (pharmid) REFERENCES public.pharm(id);


--
-- TOC entry 4737 (class 2606 OID 17480)
-- Name: basket_products basket_products_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id);


--
-- TOC entry 4734 (class 2606 OID 17152)
-- Name: basket basket_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket
    ADD CONSTRAINT basket_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id);


--
-- TOC entry 4739 (class 2606 OID 17976)
-- Name: orders orders_pharmid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pharmid_fkey FOREIGN KEY (pharmid) REFERENCES public.pharm(id);


--
-- TOC entry 4738 (class 2606 OID 17886)
-- Name: orders_product_id orders_product_id_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_product_id
    ADD CONSTRAINT orders_product_id_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id);


--
-- TOC entry 4740 (class 2606 OID 17981)
-- Name: orders orders_statusid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_statusid_fkey FOREIGN KEY (statusid) REFERENCES public.statuses(id);


--
-- TOC entry 4741 (class 2606 OID 17971)
-- Name: orders orders_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id);


--
-- TOC entry 4731 (class 2606 OID 17107)
-- Name: pharm pharm_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pharm
    ADD CONSTRAINT pharm_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id);


--
-- TOC entry 4728 (class 2606 OID 17062)
-- Name: products products_categoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.category(id_cat);


--
-- TOC entry 4729 (class 2606 OID 17067)
-- Name: products products_makerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_makerid_fkey FOREIGN KEY (makerid) REFERENCES public.maker(id_maker);


--
-- TOC entry 4732 (class 2606 OID 17131)
-- Name: quantity quantity_pharmid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quantity
    ADD CONSTRAINT quantity_pharmid_fkey FOREIGN KEY (pharmid) REFERENCES public.pharm(id);


--
-- TOC entry 4733 (class 2606 OID 17126)
-- Name: quantity quantity_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quantity
    ADD CONSTRAINT quantity_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id);


--
-- TOC entry 4730 (class 2606 OID 17095)
-- Name: users users_roleid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_roleid_fkey FOREIGN KEY (roleid) REFERENCES public.roles(id);


-- Completed on 2024-06-17 01:47:25

--
-- PostgreSQL database dump complete
--

