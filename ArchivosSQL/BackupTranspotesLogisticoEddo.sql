--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-08-15 19:55:50

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 228 (class 1259 OID 1368150)
-- Name: ciudad; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.ciudad (
    id_ciudad integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion_geografica character varying(255) NOT NULL,
    codigo_postal integer NOT NULL,
    id_departamento integer NOT NULL
);


ALTER TABLE public.ciudad OWNER TO "Comfe_owner";

--
-- TOC entry 227 (class 1259 OID 1368149)
-- Name: ciudad_id_ciudad_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.ciudad_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ciudad_id_ciudad_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 227
-- Name: ciudad_id_ciudad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.ciudad_id_ciudad_seq OWNED BY public.ciudad.id_ciudad;


--
-- TOC entry 230 (class 1259 OID 1368159)
-- Name: cliente; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nom_cliente character varying(50) NOT NULL,
    ape_cliente character varying(50) NOT NULL,
    tip_identificacion character varying(20) NOT NULL,
    num_identificacion character varying(20) NOT NULL,
    genero integer NOT NULL,
    fec_nacimiento date NOT NULL,
    estado character varying(10) NOT NULL
);


ALTER TABLE public.cliente OWNER TO "Comfe_owner";

--
-- TOC entry 229 (class 1259 OID 1368158)
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 229
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- TOC entry 224 (class 1259 OID 1368132)
-- Name: datosgenerales; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.datosgenerales (
    id_dato_general integer NOT NULL,
    numtelefono character varying(15) NOT NULL,
    direccion character varying(255) NOT NULL,
    correo character varying(100) NOT NULL,
    id_cliente integer,
    id_empleado integer,
    tiposangre character varying(10)
);


ALTER TABLE public.datosgenerales OWNER TO "Comfe_owner";

--
-- TOC entry 223 (class 1259 OID 1368131)
-- Name: datosgenerales_id_dato_general_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.datosgenerales_id_dato_general_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.datosgenerales_id_dato_general_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 223
-- Name: datosgenerales_id_dato_general_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.datosgenerales_id_dato_general_seq OWNED BY public.datosgenerales.id_dato_general;


--
-- TOC entry 226 (class 1259 OID 1368141)
-- Name: departamento; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.departamento (
    id_departamento integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion_geografica character varying(255) NOT NULL,
    codigo_postal integer NOT NULL
);


ALTER TABLE public.departamento OWNER TO "Comfe_owner";

--
-- TOC entry 225 (class 1259 OID 1368140)
-- Name: departamento_id_departamento_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.departamento_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departamento_id_departamento_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 225
-- Name: departamento_id_departamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.departamento_id_departamento_seq OWNED BY public.departamento.id_departamento;


--
-- TOC entry 232 (class 1259 OID 1368168)
-- Name: empleado; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nom_empleado character varying(50) NOT NULL,
    ape_empleado character varying(50) NOT NULL,
    tip_identificacion character varying(20) NOT NULL,
    num_identificacion character varying(20) NOT NULL,
    fec_nacimiento date NOT NULL,
    estado character varying(10) NOT NULL,
    id_tip_empleado integer NOT NULL,
    fec_inicio_contrato date NOT NULL,
    fec_fin_contrato date,
    genero integer
);


ALTER TABLE public.empleado OWNER TO "Comfe_owner";

--
-- TOC entry 231 (class 1259 OID 1368167)
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_id_empleado_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 231
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;


--
-- TOC entry 220 (class 1259 OID 1368106)
-- Name: genero; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    estado character varying(20) NOT NULL
);


ALTER TABLE public.genero OWNER TO "Comfe_owner";

--
-- TOC entry 219 (class 1259 OID 1368105)
-- Name: genero_id_genero_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.genero_id_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genero_id_genero_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 219
-- Name: genero_id_genero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.genero_id_genero_seq OWNED BY public.genero.id_genero;


--
-- TOC entry 222 (class 1259 OID 1368125)
-- Name: servicio; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.servicio (
    id_servicio integer NOT NULL,
    id_cliente integer NOT NULL,
    id_conductor integer NOT NULL,
    id_auxiliar integer NOT NULL,
    id_ciudad_origen integer NOT NULL,
    id_ciudad_destino integer NOT NULL,
    estado character varying(20) NOT NULL,
    valorservicio numeric(10,2) NOT NULL,
    fecha character varying(10)
);


ALTER TABLE public.servicio OWNER TO "Comfe_owner";

--
-- TOC entry 221 (class 1259 OID 1368124)
-- Name: servicio_id_servicio_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.servicio_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.servicio_id_servicio_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 221
-- Name: servicio_id_servicio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.servicio_id_servicio_seq OWNED BY public.servicio.id_servicio;


--
-- TOC entry 218 (class 1259 OID 1368099)
-- Name: tipoempleado; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.tipoempleado (
    id_tipo integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    estado character varying(20) NOT NULL
);


ALTER TABLE public.tipoempleado OWNER TO "Comfe_owner";

--
-- TOC entry 217 (class 1259 OID 1368098)
-- Name: tipoempleado_id_tipo_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.tipoempleado_id_tipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipoempleado_id_tipo_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 217
-- Name: tipoempleado_id_tipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.tipoempleado_id_tipo_seq OWNED BY public.tipoempleado.id_tipo;


--
-- TOC entry 216 (class 1259 OID 1368092)
-- Name: tipovehiculo; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.tipovehiculo (
    id_tipo integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    estado character varying(20) NOT NULL
);


ALTER TABLE public.tipovehiculo OWNER TO "Comfe_owner";

--
-- TOC entry 215 (class 1259 OID 1368091)
-- Name: tipovehiculo_id_tipo_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.tipovehiculo_id_tipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipovehiculo_id_tipo_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 215
-- Name: tipovehiculo_id_tipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.tipovehiculo_id_tipo_seq OWNED BY public.tipovehiculo.id_tipo;


--
-- TOC entry 234 (class 1259 OID 1368176)
-- Name: vehiculo; Type: TABLE; Schema: public; Owner: Comfe_owner
--

CREATE TABLE public.vehiculo (
    id_vehiculo integer NOT NULL,
    placa character varying(10) NOT NULL,
    id_tip_vehiculo integer NOT NULL,
    estado character varying(20) NOT NULL
);


ALTER TABLE public.vehiculo OWNER TO "Comfe_owner";

--
-- TOC entry 233 (class 1259 OID 1368175)
-- Name: vehiculo_id_vehiculo_seq; Type: SEQUENCE; Schema: public; Owner: Comfe_owner
--

CREATE SEQUENCE public.vehiculo_id_vehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vehiculo_id_vehiculo_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 233
-- Name: vehiculo_id_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Comfe_owner
--

ALTER SEQUENCE public.vehiculo_id_vehiculo_seq OWNED BY public.vehiculo.id_vehiculo;


--
-- TOC entry 3231 (class 2604 OID 1368153)
-- Name: ciudad id_ciudad; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.ciudad ALTER COLUMN id_ciudad SET DEFAULT nextval('public.ciudad_id_ciudad_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 1368162)
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- TOC entry 3229 (class 2604 OID 1368135)
-- Name: datosgenerales id_dato_general; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.datosgenerales ALTER COLUMN id_dato_general SET DEFAULT nextval('public.datosgenerales_id_dato_general_seq'::regclass);


--
-- TOC entry 3230 (class 2604 OID 1368144)
-- Name: departamento id_departamento; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.departamento ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamento_id_departamento_seq'::regclass);


--
-- TOC entry 3233 (class 2604 OID 1368171)
-- Name: empleado id_empleado; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 1368109)
-- Name: genero id_genero; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.genero ALTER COLUMN id_genero SET DEFAULT nextval('public.genero_id_genero_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 1368128)
-- Name: servicio id_servicio; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.servicio ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicio_id_servicio_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 1368102)
-- Name: tipoempleado id_tipo; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.tipoempleado ALTER COLUMN id_tipo SET DEFAULT nextval('public.tipoempleado_id_tipo_seq'::regclass);


--
-- TOC entry 3225 (class 2604 OID 1368095)
-- Name: tipovehiculo id_tipo; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.tipovehiculo ALTER COLUMN id_tipo SET DEFAULT nextval('public.tipovehiculo_id_tipo_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 1368179)
-- Name: vehiculo id_vehiculo; Type: DEFAULT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.vehiculo ALTER COLUMN id_vehiculo SET DEFAULT nextval('public.vehiculo_id_vehiculo_seq'::regclass);


--
-- TOC entry 3430 (class 0 OID 1368150)
-- Dependencies: 228
-- Data for Name: ciudad; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.ciudad (id_ciudad, nombre, ubicacion_geografica, codigo_postal, id_departamento) FROM stdin;
1	Bogotá	Centro	11001	1
2	Medellín	Noroeste	5001	2
3	Cali	Oeste	76001	3
4	Barranquilla	Noreste	8001	4
5	Cartagena	Noroeste	13001	5
6	Santa Marta	Noreste	47001	6
7	Bucaramanga	Noreste	68001	7
8	Pereira	Eje Cafetero	66001	8
9	Manizales	Eje Cafetero	17001	9
10	Cúcuta	Noreste	54001	10
11	Popayán	Suroccidente	19001	11
12	Ibagué	Centro	73001	12
13	Neiva	Sur	41001	13
14	Villavicencio	Centro-Oriente	50001	14
15	Soledad	Noreste	8027	4
16	Valledupar	Noreste	20001	15
\.


--
-- TOC entry 3432 (class 0 OID 1368159)
-- Dependencies: 230
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.cliente (id_cliente, nom_cliente, ape_cliente, tip_identificacion, num_identificacion, genero, fec_nacimiento, estado) FROM stdin;
2	María	Gómez	Cédula	87654321	1	1985-02-20	Activo
4	Ana	Martínez	Cédula	34567890	1	1991-04-25	Activo
8	Claudia	Cruz	Cédula	78901234	1	1995-08-31	Activo
10	Valeria	Pérez	Cédula	90123456	1	1990-10-05	Activo
12	Camila	Rodríguez	Cédula	12345679	1	1992-12-13	Inactivo
14	Isabella	Vega	Cédula	34567891	1	1994-02-22	Activo
16	María José	Rojas	Cédula	56789013	1	1995-04-30	Activo
18	Lucía	Bermúdez	Cédula	78901235	1	1986-06-14	Inactivo
21	Tatiana	Córdoba	Cédula	01234568	1	1993-09-30	Inactivo
1	Juan	Pérez	Cédula	12345678	2	1990-01-15	Activo
3	Carlos	Lopez	Cédula	23456789	2	1992-03-10	Inactivo
5	Luis	Salazar	Cédula	45678901	2	1984-05-30	Activo
7	Jorge	Torres	Cédula	67890123	2	1989-07-28	Activo
9	Andrés	Morales	Cédula	89012345	2	1988-09-16	Inactivo
11	Nicolás	Sánchez	Cédula	01234567	2	1987-11-20	Activo
13	Diego	Ramírez	Cédula	23456780	2	1986-01-18	Activo
15	Sebastián	Arce	Cédula	45678902	2	1983-03-14	Inactivo
17	Cristian	Salas	Cédula	67890124	2	1991-05-19	Activo
19	Daniel	Díaz	Cédula	89012346	2	1988-07-23	Activo
20	Camilo	Figueroa	Cédula	90123457	2	1992-08-29	Activo
6	Sofía	Jiménez	Cédula	56789012	3	1993-06-15	Inactivo
\.


--
-- TOC entry 3426 (class 0 OID 1368132)
-- Dependencies: 224
-- Data for Name: datosgenerales; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.datosgenerales (id_dato_general, numtelefono, direccion, correo, id_cliente, id_empleado, tiposangre) FROM stdin;
2	6332211	Calle con Crr	correo1@gmail.com	1	\N	O+
3	6998877	Av subc Diag 30	correo2@gmail.com	\N	2	O+
\.


--
-- TOC entry 3428 (class 0 OID 1368141)
-- Dependencies: 226
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.departamento (id_departamento, nombre, ubicacion_geografica, codigo_postal) FROM stdin;
1	Antioquia	Noroeste	5001
2	Atlántico	Noreste	8001
3	Bolívar	Noroeste	13001
4	Boyacá	Centro	15001
5	Caldas	Eje Cafetero	17001
6	Caquetá	Sur	18001
7	Casanare	Oriente	85001
8	Cauca	Suroccidente	19001
9	César	Noreste	20001
10	Chocó	Noroeste	27001
11	Córdoba	Centro-Norte	23001
12	Cundinamarca	Centro	25001
13	Guainía	Oriente	94001
14	Guaviare	Centro-Sur	95001
15	Huila	Sur	41001
16	La Guajira	Noreste	44001
17	Magdalena	Noreste	47001
18	Meta	Centro-Oriente	50001
19	Nariño	Suroccidente	52001
20	Norte de Santander	Noreste	54001
21	Putumayo	Sur	86001
22	Quindío	Eje Cafetero	63001
23	Risaralda	Eje Cafetero	66001
24	San Andrés y Providencia	Caribe	88001
25	Santander	Noreste	68001
26	Sucre	Noroeste	70001
27	Tolima	Centro	73001
28	Valle del Cauca	Suroccidente	76001
29	Vaupés	Oriente	97001
30	Vichada	Oriente	99001
\.


--
-- TOC entry 3434 (class 0 OID 1368168)
-- Dependencies: 232
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.empleado (id_empleado, nom_empleado, ape_empleado, tip_identificacion, num_identificacion, fec_nacimiento, estado, id_tip_empleado, fec_inicio_contrato, fec_fin_contrato, genero) FROM stdin;
19	Daniel	Díaz	Cédula	89012346	1988-07-23	Activo	3	2020-02-28	\N	2
3	Carlos	Lopez	Cédula	23456789	1988-03-10	Inactivo	3	2019-05-20	2023-05-20	2
1	Juan	Pérez	Cédula	12345678	1985-01-15	Activo	3	2020-01-01	\N	2
21	Tatiana	Córdoba	Cédula	01234568	1995-09-30	Inactivo	3	2018-11-11	2020-11-11	2
6	Sofía	Jiménez	Cédula	56789012	1989-06-15	Inactivo	1	2020-05-30	2021-12-30	1
4	Ana	Martínez	Cédula	34567890	1992-04-25	Activo	1	2022-07-22	\N	1
2	María	Gómez	Cédula	87654321	1990-02-20	Activo	1	2021-03-15	\N	1
14	Isabella	Vega	Cédula	34567891	1994-02-22	Activo	2	2021-04-10	\N	1
16	María José	Rojas	Cédula	56789013	1990-04-30	Activo	2	2020-06-01	\N	1
18	Lucía	Bermúdez	Cédula	78901235	1992-06-14	Inactivo	2	2021-09-05	\N	1
20	Camilo	Figueroa	Cédula	90123457	1993-08-29	Activo	2	2021-01-15	\N	1
8	Claudia	Cruz	Cédula	78901234	1991-08-31	Activo	2	2020-09-15	\N	1
10	Valeria	Pérez	Cédula	90123456	1986-10-05	Activo	2	2021-10-20	\N	1
12	Camila	Rodríguez	Cédula	12345679	1990-12-13	Inactivo	2	2019-07-18	\N	1
5	Luis	Salazar	Cédula	45678901	1984-05-30	Activo	3	2019-08-10	\N	2
7	Jorge	Torres	Cédula	67890123	1995-07-28	Activo	3	2023-01-01	\N	2
9	Andrés	Morales	Cédula	89012345	1987-09-16	Inactivo	3	2018-12-01	2022-10-10	2
11	Nicolás	Sánchez	Cédula	01234567	1993-11-20	Activo	3	2022-05-03	\N	2
13	Diego	Ramírez	Cédula	23456780	1985-01-18	Activo	3	2020-03-15	\N	2
15	Sebastián	Arce	Cédula	45678902	1991-03-14	Inactivo	3	2022-02-25	2023-07-01	2
17	Cristian	Salas	Cédula	67890124	1986-05-19	Activo	3	2022-08-15	\N	2
\.


--
-- TOC entry 3422 (class 0 OID 1368106)
-- Dependencies: 220
-- Data for Name: genero; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.genero (id_genero, descripcion, estado) FROM stdin;
1	Femenino	Activo
2	Masculino	Activo
3	Indefinido	Activo
\.


--
-- TOC entry 3424 (class 0 OID 1368125)
-- Dependencies: 222
-- Data for Name: servicio; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.servicio (id_servicio, id_cliente, id_conductor, id_auxiliar, id_ciudad_origen, id_ciudad_destino, estado, valorservicio, fecha) FROM stdin;
3	1	1	2	1	2	Activo	250000.00	2024-05-22
4	3	1	2	1	5	Activo	350000.00	2024-06-25
\.


--
-- TOC entry 3420 (class 0 OID 1368099)
-- Dependencies: 218
-- Data for Name: tipoempleado; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.tipoempleado (id_tipo, descripcion, estado) FROM stdin;
1	Administrativo	Activo
2	Conductor	Activo
3	Auxiliar	Activo
\.


--
-- TOC entry 3418 (class 0 OID 1368092)
-- Dependencies: 216
-- Data for Name: tipovehiculo; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.tipovehiculo (id_tipo, descripcion, estado) FROM stdin;
1	Furgon	Activo
2	Camion	Activo
3	Camioneta	Activo
4	Estaca	Activo
\.


--
-- TOC entry 3436 (class 0 OID 1368176)
-- Dependencies: 234
-- Data for Name: vehiculo; Type: TABLE DATA; Schema: public; Owner: Comfe_owner
--

COPY public.vehiculo (id_vehiculo, placa, id_tip_vehiculo, estado) FROM stdin;
1	ABC123	1	Activo
2	XYZ789	2	Inactivo
3	LMN456	1	Activo
4	QRS321	3	Activo
5	EFG987	2	Inactivo
6	HIJ654	1	Activo
7	KLM852	3	Activo
8	NOP741	2	Inactivo
9	STU369	1	Activo
10	VWX258	3	Inactivo
\.


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 227
-- Name: ciudad_id_ciudad_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.ciudad_id_ciudad_seq', 16, true);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 229
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 21, true);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 223
-- Name: datosgenerales_id_dato_general_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.datosgenerales_id_dato_general_seq', 3, true);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 225
-- Name: departamento_id_departamento_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.departamento_id_departamento_seq', 30, true);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 231
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 21, true);


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 219
-- Name: genero_id_genero_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.genero_id_genero_seq', 3, true);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 221
-- Name: servicio_id_servicio_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.servicio_id_servicio_seq', 4, true);


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 217
-- Name: tipoempleado_id_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.tipoempleado_id_tipo_seq', 3, true);


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 215
-- Name: tipovehiculo_id_tipo_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.tipovehiculo_id_tipo_seq', 4, true);


--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 233
-- Name: vehiculo_id_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: Comfe_owner
--

SELECT pg_catalog.setval('public.vehiculo_id_vehiculo_seq', 10, true);


--
-- TOC entry 3252 (class 2606 OID 1368157)
-- Name: ciudad ciudad_nombre_key; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_nombre_key UNIQUE (nombre);


--
-- TOC entry 3254 (class 2606 OID 1368155)
-- Name: ciudad ciudad_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id_ciudad);


--
-- TOC entry 3256 (class 2606 OID 1368166)
-- Name: cliente cliente_num_identificacion_key; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_num_identificacion_key UNIQUE (num_identificacion);


--
-- TOC entry 3258 (class 2606 OID 1368164)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 3244 (class 2606 OID 1368139)
-- Name: datosgenerales datosgenerales_correo_key; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.datosgenerales
    ADD CONSTRAINT datosgenerales_correo_key UNIQUE (correo);


--
-- TOC entry 3246 (class 2606 OID 1368137)
-- Name: datosgenerales datosgenerales_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.datosgenerales
    ADD CONSTRAINT datosgenerales_pkey PRIMARY KEY (id_dato_general);


--
-- TOC entry 3248 (class 2606 OID 1368148)
-- Name: departamento departamento_nombre_key; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_nombre_key UNIQUE (nombre);


--
-- TOC entry 3250 (class 2606 OID 1368146)
-- Name: departamento departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id_departamento);


--
-- TOC entry 3260 (class 2606 OID 1368173)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 3240 (class 2606 OID 1368111)
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);


--
-- TOC entry 3242 (class 2606 OID 1368130)
-- Name: servicio servicio_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pkey PRIMARY KEY (id_servicio);


--
-- TOC entry 3238 (class 2606 OID 1368104)
-- Name: tipoempleado tipoempleado_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.tipoempleado
    ADD CONSTRAINT tipoempleado_pkey PRIMARY KEY (id_tipo);


--
-- TOC entry 3236 (class 2606 OID 1368097)
-- Name: tipovehiculo tipovehiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.tipovehiculo
    ADD CONSTRAINT tipovehiculo_pkey PRIMARY KEY (id_tipo);


--
-- TOC entry 3262 (class 2606 OID 1368181)
-- Name: vehiculo vehiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT vehiculo_pkey PRIMARY KEY (id_vehiculo);


--
-- TOC entry 3270 (class 2606 OID 1458181)
-- Name: cliente FK_IdGenero_idCliente; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT "FK_IdGenero_idCliente" FOREIGN KEY (genero) REFERENCES public.genero(id_genero) NOT VALID;


--
-- TOC entry 3271 (class 2606 OID 1466373)
-- Name: empleado FK_genero_id_genero; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT "FK_genero_id_genero" FOREIGN KEY (genero) REFERENCES public.genero(id_genero) NOT VALID;


--
-- TOC entry 3269 (class 2606 OID 1458186)
-- Name: ciudad FK_idCiudad_idDepartamento; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT "FK_idCiudad_idDepartamento" FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento) NOT VALID;


--
-- TOC entry 3267 (class 2606 OID 1458196)
-- Name: datosgenerales FK_idCliente_idCliente; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.datosgenerales
    ADD CONSTRAINT "FK_idCliente_idCliente" FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) NOT VALID;


--
-- TOC entry 3268 (class 2606 OID 1458191)
-- Name: datosgenerales FK_idEmpleado_idEmpleado; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.datosgenerales
    ADD CONSTRAINT "FK_idEmpleado_idEmpleado" FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado) NOT VALID;


--
-- TOC entry 3263 (class 2606 OID 1466510)
-- Name: servicio FK_id_ciudad_id_ciudad_destino; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT "FK_id_ciudad_id_ciudad_destino" FOREIGN KEY (id_ciudad_destino) REFERENCES public.ciudad(id_ciudad) NOT VALID;


--
-- TOC entry 3264 (class 2606 OID 1466505)
-- Name: servicio FK_id_ciudad_id_ciudad_origen; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT "FK_id_ciudad_id_ciudad_origen" FOREIGN KEY (id_ciudad_origen) REFERENCES public.ciudad(id_ciudad) NOT VALID;


--
-- TOC entry 3265 (class 2606 OID 1466383)
-- Name: servicio FK_id_cliente_id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT "FK_id_cliente_id_cliente" FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) NOT VALID;


--
-- TOC entry 3266 (class 2606 OID 1466388)
-- Name: servicio FK_id_empleado_id_Empelado; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT "FK_id_empleado_id_Empelado" FOREIGN KEY (id_conductor) REFERENCES public.empleado(id_empleado) NOT VALID;


--
-- TOC entry 3272 (class 2606 OID 1466368)
-- Name: empleado FK_id_tip_empleado_id_tip_empleado; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT "FK_id_tip_empleado_id_tip_empleado" FOREIGN KEY (id_tip_empleado) REFERENCES public.tipoempleado(id_tipo) NOT VALID;


--
-- TOC entry 3273 (class 2606 OID 1466378)
-- Name: vehiculo FK_vehiculo_tip_vehiculo; Type: FK CONSTRAINT; Schema: public; Owner: Comfe_owner
--

ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT "FK_vehiculo_tip_vehiculo" FOREIGN KEY (id_tip_vehiculo) REFERENCES public.tipovehiculo(id_tipo) NOT VALID;


--
-- TOC entry 2084 (class 826 OID 1376257)
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO neon_superuser WITH GRANT OPTION;


--
-- TOC entry 2083 (class 826 OID 1376256)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON TABLES TO neon_superuser WITH GRANT OPTION;


-- Completed on 2024-08-15 19:56:03

--
-- PostgreSQL database dump complete
--

