PGDMP      '                |            TransportesLogisticosEddo    16.3    16.3 [    o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            r           1262    1359872    TransportesLogisticosEddo    DATABASE     }   CREATE DATABASE "TransportesLogisticosEddo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 +   DROP DATABASE "TransportesLogisticosEddo";
                Comfe_owner    false            �            1259    1368150    ciudad    TABLE     �   CREATE TABLE public.ciudad (
    id_ciudad integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion_geografica character varying(255) NOT NULL,
    codigo_postal integer NOT NULL,
    id_departamento integer NOT NULL
);
    DROP TABLE public.ciudad;
       public         heap    Comfe_owner    false            �            1259    1368149    ciudad_id_ciudad_seq    SEQUENCE     �   CREATE SEQUENCE public.ciudad_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ciudad_id_ciudad_seq;
       public          Comfe_owner    false    228            s           0    0    ciudad_id_ciudad_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ciudad_id_ciudad_seq OWNED BY public.ciudad.id_ciudad;
          public          Comfe_owner    false    227            �            1259    1368159    cliente    TABLE     y  CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nom_cliente character varying(50) NOT NULL,
    ape_cliente character varying(50) NOT NULL,
    tip_identificacion character varying(20) NOT NULL,
    num_identificacion character varying(20) NOT NULL,
    genero integer NOT NULL,
    fec_nacimiento date NOT NULL,
    estado character varying(10) NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    Comfe_owner    false            �            1259    1368158    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          Comfe_owner    false    230            t           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          Comfe_owner    false    229            �            1259    1368132    datosgenerales    TABLE     /  CREATE TABLE public.datosgenerales (
    id_dato_general integer NOT NULL,
    numtelefono character varying(15) NOT NULL,
    direccion character varying(255) NOT NULL,
    correo character varying(100) NOT NULL,
    id_cliente integer,
    id_empleado integer,
    tiposangre character varying(10)
);
 "   DROP TABLE public.datosgenerales;
       public         heap    Comfe_owner    false            �            1259    1368131 "   datosgenerales_id_dato_general_seq    SEQUENCE     �   CREATE SEQUENCE public.datosgenerales_id_dato_general_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.datosgenerales_id_dato_general_seq;
       public          Comfe_owner    false    224            u           0    0 "   datosgenerales_id_dato_general_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.datosgenerales_id_dato_general_seq OWNED BY public.datosgenerales.id_dato_general;
          public          Comfe_owner    false    223            �            1259    1368141    departamento    TABLE     �   CREATE TABLE public.departamento (
    id_departamento integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ubicacion_geografica character varying(255) NOT NULL,
    codigo_postal integer NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    Comfe_owner    false            �            1259    1368140     departamento_id_departamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.departamento_id_departamento_seq;
       public          Comfe_owner    false    226            v           0    0     departamento_id_departamento_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.departamento_id_departamento_seq OWNED BY public.departamento.id_departamento;
          public          Comfe_owner    false    225            �            1259    1368168    empleado    TABLE     �  CREATE TABLE public.empleado (
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
    DROP TABLE public.empleado;
       public         heap    Comfe_owner    false            �            1259    1368167    empleado_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.empleado_id_empleado_seq;
       public          Comfe_owner    false    232            w           0    0    empleado_id_empleado_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;
          public          Comfe_owner    false    231            �            1259    1368106    genero    TABLE     �   CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    estado character varying(20) NOT NULL
);
    DROP TABLE public.genero;
       public         heap    Comfe_owner    false            �            1259    1368105    genero_id_genero_seq    SEQUENCE     �   CREATE SEQUENCE public.genero_id_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.genero_id_genero_seq;
       public          Comfe_owner    false    220            x           0    0    genero_id_genero_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.genero_id_genero_seq OWNED BY public.genero.id_genero;
          public          Comfe_owner    false    219            �            1259    1368125    servicio    TABLE     n  CREATE TABLE public.servicio (
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
    DROP TABLE public.servicio;
       public         heap    Comfe_owner    false            �            1259    1368124    servicio_id_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicio_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicio_id_servicio_seq;
       public          Comfe_owner    false    222            y           0    0    servicio_id_servicio_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicio_id_servicio_seq OWNED BY public.servicio.id_servicio;
          public          Comfe_owner    false    221            �            1259    1368099    tipoempleado    TABLE     �   CREATE TABLE public.tipoempleado (
    id_tipo integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    estado character varying(20) NOT NULL
);
     DROP TABLE public.tipoempleado;
       public         heap    Comfe_owner    false            �            1259    1368098    tipoempleado_id_tipo_seq    SEQUENCE     �   CREATE SEQUENCE public.tipoempleado_id_tipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tipoempleado_id_tipo_seq;
       public          Comfe_owner    false    218            z           0    0    tipoempleado_id_tipo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tipoempleado_id_tipo_seq OWNED BY public.tipoempleado.id_tipo;
          public          Comfe_owner    false    217            �            1259    1368092    tipovehiculo    TABLE     �   CREATE TABLE public.tipovehiculo (
    id_tipo integer NOT NULL,
    descripcion character varying(50) NOT NULL,
    estado character varying(20) NOT NULL
);
     DROP TABLE public.tipovehiculo;
       public         heap    Comfe_owner    false            �            1259    1368091    tipovehiculo_id_tipo_seq    SEQUENCE     �   CREATE SEQUENCE public.tipovehiculo_id_tipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tipovehiculo_id_tipo_seq;
       public          Comfe_owner    false    216            {           0    0    tipovehiculo_id_tipo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tipovehiculo_id_tipo_seq OWNED BY public.tipovehiculo.id_tipo;
          public          Comfe_owner    false    215            �            1259    1368176    vehiculo    TABLE     �   CREATE TABLE public.vehiculo (
    id_vehiculo integer NOT NULL,
    placa character varying(10) NOT NULL,
    id_tip_vehiculo integer NOT NULL,
    estado character varying(20) NOT NULL
);
    DROP TABLE public.vehiculo;
       public         heap    Comfe_owner    false            �            1259    1368175    vehiculo_id_vehiculo_seq    SEQUENCE     �   CREATE SEQUENCE public.vehiculo_id_vehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.vehiculo_id_vehiculo_seq;
       public          Comfe_owner    false    234            |           0    0    vehiculo_id_vehiculo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.vehiculo_id_vehiculo_seq OWNED BY public.vehiculo.id_vehiculo;
          public          Comfe_owner    false    233            �           2604    1368153    ciudad id_ciudad    DEFAULT     t   ALTER TABLE ONLY public.ciudad ALTER COLUMN id_ciudad SET DEFAULT nextval('public.ciudad_id_ciudad_seq'::regclass);
 ?   ALTER TABLE public.ciudad ALTER COLUMN id_ciudad DROP DEFAULT;
       public          Comfe_owner    false    228    227    228            �           2604    1368162    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          Comfe_owner    false    229    230    230            �           2604    1368135    datosgenerales id_dato_general    DEFAULT     �   ALTER TABLE ONLY public.datosgenerales ALTER COLUMN id_dato_general SET DEFAULT nextval('public.datosgenerales_id_dato_general_seq'::regclass);
 M   ALTER TABLE public.datosgenerales ALTER COLUMN id_dato_general DROP DEFAULT;
       public          Comfe_owner    false    223    224    224            �           2604    1368144    departamento id_departamento    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamento_id_departamento_seq'::regclass);
 K   ALTER TABLE public.departamento ALTER COLUMN id_departamento DROP DEFAULT;
       public          Comfe_owner    false    225    226    226            �           2604    1368171    empleado id_empleado    DEFAULT     |   ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);
 C   ALTER TABLE public.empleado ALTER COLUMN id_empleado DROP DEFAULT;
       public          Comfe_owner    false    232    231    232            �           2604    1368109    genero id_genero    DEFAULT     t   ALTER TABLE ONLY public.genero ALTER COLUMN id_genero SET DEFAULT nextval('public.genero_id_genero_seq'::regclass);
 ?   ALTER TABLE public.genero ALTER COLUMN id_genero DROP DEFAULT;
       public          Comfe_owner    false    220    219    220            �           2604    1368128    servicio id_servicio    DEFAULT     |   ALTER TABLE ONLY public.servicio ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicio_id_servicio_seq'::regclass);
 C   ALTER TABLE public.servicio ALTER COLUMN id_servicio DROP DEFAULT;
       public          Comfe_owner    false    222    221    222            �           2604    1368102    tipoempleado id_tipo    DEFAULT     |   ALTER TABLE ONLY public.tipoempleado ALTER COLUMN id_tipo SET DEFAULT nextval('public.tipoempleado_id_tipo_seq'::regclass);
 C   ALTER TABLE public.tipoempleado ALTER COLUMN id_tipo DROP DEFAULT;
       public          Comfe_owner    false    217    218    218            �           2604    1368095    tipovehiculo id_tipo    DEFAULT     |   ALTER TABLE ONLY public.tipovehiculo ALTER COLUMN id_tipo SET DEFAULT nextval('public.tipovehiculo_id_tipo_seq'::regclass);
 C   ALTER TABLE public.tipovehiculo ALTER COLUMN id_tipo DROP DEFAULT;
       public          Comfe_owner    false    215    216    216            �           2604    1368179    vehiculo id_vehiculo    DEFAULT     |   ALTER TABLE ONLY public.vehiculo ALTER COLUMN id_vehiculo SET DEFAULT nextval('public.vehiculo_id_vehiculo_seq'::regclass);
 C   ALTER TABLE public.vehiculo ALTER COLUMN id_vehiculo DROP DEFAULT;
       public          Comfe_owner    false    234    233    234            f          0    1368150    ciudad 
   TABLE DATA           i   COPY public.ciudad (id_ciudad, nombre, ubicacion_geografica, codigo_postal, id_departamento) FROM stdin;
    public          Comfe_owner    false    228   [t       h          0    1368159    cliente 
   TABLE DATA           �   COPY public.cliente (id_cliente, nom_cliente, ape_cliente, tip_identificacion, num_identificacion, genero, fec_nacimiento, estado) FROM stdin;
    public          Comfe_owner    false    230   �u       b          0    1368132    datosgenerales 
   TABLE DATA           ~   COPY public.datosgenerales (id_dato_general, numtelefono, direccion, correo, id_cliente, id_empleado, tiposangre) FROM stdin;
    public          Comfe_owner    false    224   �w       d          0    1368141    departamento 
   TABLE DATA           d   COPY public.departamento (id_departamento, nombre, ubicacion_geografica, codigo_postal) FROM stdin;
    public          Comfe_owner    false    226   3x       j          0    1368168    empleado 
   TABLE DATA           �   COPY public.empleado (id_empleado, nom_empleado, ape_empleado, tip_identificacion, num_identificacion, fec_nacimiento, estado, id_tip_empleado, fec_inicio_contrato, fec_fin_contrato, genero) FROM stdin;
    public          Comfe_owner    false    232   �y       ^          0    1368106    genero 
   TABLE DATA           @   COPY public.genero (id_genero, descripcion, estado) FROM stdin;
    public          Comfe_owner    false    220   �|       `          0    1368125    servicio 
   TABLE DATA           �   COPY public.servicio (id_servicio, id_cliente, id_conductor, id_auxiliar, id_ciudad_origen, id_ciudad_destino, estado, valorservicio, fecha) FROM stdin;
    public          Comfe_owner    false    222   �|       \          0    1368099    tipoempleado 
   TABLE DATA           D   COPY public.tipoempleado (id_tipo, descripcion, estado) FROM stdin;
    public          Comfe_owner    false    218   :}       Z          0    1368092    tipovehiculo 
   TABLE DATA           D   COPY public.tipovehiculo (id_tipo, descripcion, estado) FROM stdin;
    public          Comfe_owner    false    216   �}       l          0    1368176    vehiculo 
   TABLE DATA           O   COPY public.vehiculo (id_vehiculo, placa, id_tip_vehiculo, estado) FROM stdin;
    public          Comfe_owner    false    234   �}       }           0    0    ciudad_id_ciudad_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ciudad_id_ciudad_seq', 16, true);
          public          Comfe_owner    false    227            ~           0    0    cliente_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 21, true);
          public          Comfe_owner    false    229                       0    0 "   datosgenerales_id_dato_general_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.datosgenerales_id_dato_general_seq', 3, true);
          public          Comfe_owner    false    223            �           0    0     departamento_id_departamento_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.departamento_id_departamento_seq', 30, true);
          public          Comfe_owner    false    225            �           0    0    empleado_id_empleado_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 21, true);
          public          Comfe_owner    false    231            �           0    0    genero_id_genero_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.genero_id_genero_seq', 3, true);
          public          Comfe_owner    false    219            �           0    0    servicio_id_servicio_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.servicio_id_servicio_seq', 4, true);
          public          Comfe_owner    false    221            �           0    0    tipoempleado_id_tipo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tipoempleado_id_tipo_seq', 3, true);
          public          Comfe_owner    false    217            �           0    0    tipovehiculo_id_tipo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tipovehiculo_id_tipo_seq', 4, true);
          public          Comfe_owner    false    215            �           0    0    vehiculo_id_vehiculo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehiculo_id_vehiculo_seq', 10, true);
          public          Comfe_owner    false    233            �           2606    1368157    ciudad ciudad_nombre_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_nombre_key UNIQUE (nombre);
 B   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_nombre_key;
       public            Comfe_owner    false    228            �           2606    1368155    ciudad ciudad_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id_ciudad);
 <   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_pkey;
       public            Comfe_owner    false    228            �           2606    1368166 &   cliente cliente_num_identificacion_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_num_identificacion_key UNIQUE (num_identificacion);
 P   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_num_identificacion_key;
       public            Comfe_owner    false    230            �           2606    1368164    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            Comfe_owner    false    230            �           2606    1368139 (   datosgenerales datosgenerales_correo_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.datosgenerales
    ADD CONSTRAINT datosgenerales_correo_key UNIQUE (correo);
 R   ALTER TABLE ONLY public.datosgenerales DROP CONSTRAINT datosgenerales_correo_key;
       public            Comfe_owner    false    224            �           2606    1368137 "   datosgenerales datosgenerales_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.datosgenerales
    ADD CONSTRAINT datosgenerales_pkey PRIMARY KEY (id_dato_general);
 L   ALTER TABLE ONLY public.datosgenerales DROP CONSTRAINT datosgenerales_pkey;
       public            Comfe_owner    false    224            �           2606    1368148 $   departamento departamento_nombre_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_nombre_key UNIQUE (nombre);
 N   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_nombre_key;
       public            Comfe_owner    false    226            �           2606    1368146    departamento departamento_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id_departamento);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            Comfe_owner    false    226            �           2606    1368173    empleado empleado_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            Comfe_owner    false    232            �           2606    1368111    genero genero_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public            Comfe_owner    false    220            �           2606    1368130    servicio servicio_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pkey PRIMARY KEY (id_servicio);
 @   ALTER TABLE ONLY public.servicio DROP CONSTRAINT servicio_pkey;
       public            Comfe_owner    false    222            �           2606    1368104    tipoempleado tipoempleado_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tipoempleado
    ADD CONSTRAINT tipoempleado_pkey PRIMARY KEY (id_tipo);
 H   ALTER TABLE ONLY public.tipoempleado DROP CONSTRAINT tipoempleado_pkey;
       public            Comfe_owner    false    218            �           2606    1368097    tipovehiculo tipovehiculo_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tipovehiculo
    ADD CONSTRAINT tipovehiculo_pkey PRIMARY KEY (id_tipo);
 H   ALTER TABLE ONLY public.tipovehiculo DROP CONSTRAINT tipovehiculo_pkey;
       public            Comfe_owner    false    216            �           2606    1368181    vehiculo vehiculo_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT vehiculo_pkey PRIMARY KEY (id_vehiculo);
 @   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_pkey;
       public            Comfe_owner    false    234            �           2606    1458181    cliente FK_IdGenero_idCliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT "FK_IdGenero_idCliente" FOREIGN KEY (genero) REFERENCES public.genero(id_genero) NOT VALID;
 I   ALTER TABLE ONLY public.cliente DROP CONSTRAINT "FK_IdGenero_idCliente";
       public          Comfe_owner    false    220    230    3240            �           2606    1466373    empleado FK_genero_id_genero    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT "FK_genero_id_genero" FOREIGN KEY (genero) REFERENCES public.genero(id_genero) NOT VALID;
 H   ALTER TABLE ONLY public.empleado DROP CONSTRAINT "FK_genero_id_genero";
       public          Comfe_owner    false    220    3240    232            �           2606    1458186 !   ciudad FK_idCiudad_idDepartamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT "FK_idCiudad_idDepartamento" FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento) NOT VALID;
 M   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT "FK_idCiudad_idDepartamento";
       public          Comfe_owner    false    226    3250    228            �           2606    1458196 %   datosgenerales FK_idCliente_idCliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.datosgenerales
    ADD CONSTRAINT "FK_idCliente_idCliente" FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) NOT VALID;
 Q   ALTER TABLE ONLY public.datosgenerales DROP CONSTRAINT "FK_idCliente_idCliente";
       public          Comfe_owner    false    3258    224    230            �           2606    1458191 '   datosgenerales FK_idEmpleado_idEmpleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.datosgenerales
    ADD CONSTRAINT "FK_idEmpleado_idEmpleado" FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado) NOT VALID;
 S   ALTER TABLE ONLY public.datosgenerales DROP CONSTRAINT "FK_idEmpleado_idEmpleado";
       public          Comfe_owner    false    232    3260    224            �           2606    1466510 '   servicio FK_id_ciudad_id_ciudad_destino    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT "FK_id_ciudad_id_ciudad_destino" FOREIGN KEY (id_ciudad_destino) REFERENCES public.ciudad(id_ciudad) NOT VALID;
 S   ALTER TABLE ONLY public.servicio DROP CONSTRAINT "FK_id_ciudad_id_ciudad_destino";
       public          Comfe_owner    false    3254    222    228            �           2606    1466505 &   servicio FK_id_ciudad_id_ciudad_origen    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT "FK_id_ciudad_id_ciudad_origen" FOREIGN KEY (id_ciudad_origen) REFERENCES public.ciudad(id_ciudad) NOT VALID;
 R   ALTER TABLE ONLY public.servicio DROP CONSTRAINT "FK_id_ciudad_id_ciudad_origen";
       public          Comfe_owner    false    3254    228    222            �           2606    1466383 !   servicio FK_id_cliente_id_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT "FK_id_cliente_id_cliente" FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) NOT VALID;
 M   ALTER TABLE ONLY public.servicio DROP CONSTRAINT "FK_id_cliente_id_cliente";
       public          Comfe_owner    false    3258    230    222            �           2606    1466388 #   servicio FK_id_empleado_id_Empelado    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT "FK_id_empleado_id_Empelado" FOREIGN KEY (id_conductor) REFERENCES public.empleado(id_empleado) NOT VALID;
 O   ALTER TABLE ONLY public.servicio DROP CONSTRAINT "FK_id_empleado_id_Empelado";
       public          Comfe_owner    false    222    232    3260            �           2606    1466368 +   empleado FK_id_tip_empleado_id_tip_empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT "FK_id_tip_empleado_id_tip_empleado" FOREIGN KEY (id_tip_empleado) REFERENCES public.tipoempleado(id_tipo) NOT VALID;
 W   ALTER TABLE ONLY public.empleado DROP CONSTRAINT "FK_id_tip_empleado_id_tip_empleado";
       public          Comfe_owner    false    218    3238    232            �           2606    1466378 !   vehiculo FK_vehiculo_tip_vehiculo    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT "FK_vehiculo_tip_vehiculo" FOREIGN KEY (id_tip_vehiculo) REFERENCES public.tipovehiculo(id_tipo) NOT VALID;
 M   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT "FK_vehiculo_tip_vehiculo";
       public          Comfe_owner    false    234    216    3236            $           826    1376257     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     {   ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO neon_superuser WITH GRANT OPTION;
          public          cloud_admin    false            #           826    1376256    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     x   ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON TABLES TO neon_superuser WITH GRANT OPTION;
          public          cloud_admin    false            f   ,  x�U�;n�0�g��@Ӗ�d�ѡC@�L]X�5T�R����d��t��j)m�>��ȏ`�Z�G��v�Q����F��-,�w����R̠b�a��"<f�`�޳}�12OU���q+�/u��c�Oa�Te��0�k��ƶ��"�8��xў��U&�H'�E�j�3X�՟ld;@�}��@5����ǹ�
$�����p��齫k݌���gq��Rx|������&J�2X�>pH�:Y͐l����������V^���pTH9l����+�i9���lF��؟az
��t����Q�f      h     x�e��n�0������Ejtm���Ed�B۬�B���ɨ�S��z��%ذF~�y������
�u'}�U��R�̳4��
��	��ܟ�_�H`Y�<w�j�$�rY�*�	��IX��9+�LL�q�x�$ld�WUj�Џ�u�(���(a���8����g{��͌�\^x�����J6��Z�t�G_�Q���`���,x���u�b�oUG�[��qƄ�(�Ixl�}_�;u��NN�[��H��Xϋ:U���p����H�)-��iL�4����H��*e�E������h�̘���
,c
Jq:S�V��\�¦���h3�)�ac�QËuNO���3�9�rd
�I캭��:ܙ	�zL�&�����fo��oٽW�_���ܳ9al��е�G���]ݽ�l�o�F�z���4X�����='���Y�o��}��;5�/��:YX���ָf�[1Y�>��������qVݾ�<6.	�al��~�7�Ե���862�+��y�X�7T-      b   b   x�3�4366224�tN��IUH��Sp.*�L�/*J�7tH�M���K���4������2�4����07�t,S(.MJVp�LLW06��1B��a����� J*      d   �  x�m�=R1F��S��i���e�ظ�HIQ��ю�j�C�`G�����`;�S�^�'k7Z�-�lGU�����8LOD�O�I�H��0v�%�H�$�G5=Ao�<nUA���-�<���f4�5������*�BC�[t|	�Z��ܩ%��^)��.����vvb%��c�C���|t���T�����t#aEH�����z��5D�#Z7p�J&e";��_��������hևR�Qg�QɃ���s���N�`�4˷pn�E�ա�G����~��{�$�ϙi�]��is\Z�/K�q��shk>��5Z����d��|�@��/>��@�ek������wIM���I��R��e���3�IH�r�4�Y6��v���N-\�0�a��?_���:���1M^s�õU����̟���j�����      j   �  x�e�=n�@���)r���?�R����m����Jb7XJ)|�*T�Kˋefw%R����{�fD	w������y�����7tɅTi�Ԛ�I�ծ�kA��3.����2Qpk\c;x����ﳼ�ed(&8ܷf����IN@u�L�������`"��1.�Ȧ��� )���j�|���vi� H*T25U��@����䰰?1"����Ў�y�H%eh('eg`��7�m"MҧHR���G�v�q���q�'O�<�0�!ɨH$H���s;��"�R�1 $��_@�G "���,��V3��)���EFJJC�<j�2�]�g��tӐT�Rc������a�"[7�����#g!k��x0�tH���z���m�X�Vo������� �O3YN݉sFn�_�����Ԥ��Pbj�r��j��!dR�(�o:��L�����F�����՚�!g�F~�\�����;X�Ƽw��
��u�;��[/���m*x��U���V��g]��ª��b�-z9t�hf�M�[>��z]%��n`N�O��6���?�կQH1�8y�pya�V� �����g�������$��I:-b2XTK��jT3���i�X"uQ� Iw �Vx��(��uGg��*�4�	��r�O���}M��?Я��      ^   6   x�3�tK�M�����tL.�,��2��M,N.�A2���KIM���L����qqq �      `   >   x�3�4B#0vL.�,��425 =N##]S]##.Nc�:S�:c4uf�F�\1z\\\ ���      \   :   x�3�tL����,.)J,�,��tLQ\F���y)��%�E0!cN�Ҋ̜�D�H� ���      Z   5   x�3�t+-J���tL.�,��2�tN��D����ԒD��	�kqIb2����� A�%      l      x�M���@���7#Ι93g�%Ei�E+6be�F\?�0ݾyB6�[����zFן�F0����,ʪv����5�	�W�l5�ǢXzq���J��S��Mp4tM��>&Gc��~�;��1o��1     