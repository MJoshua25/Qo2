PGDMP         ;                w            ps    11.4    11.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    41376    ps    DATABASE     �   CREATE DATABASE ps WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE ps;
             postgres    false            �            1259    41408 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    41406    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    41418    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    41416    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    41400    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    41398    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    41564    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    41562    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    218            �            1259    41390    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    41388    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    41379    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    41377    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    41586    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    41480    pari_league    TABLE     g   CREATE TABLE public.pari_league (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
    DROP TABLE public.pari_league;
       public         postgres    false            �            1259    41501 
   pari_match    TABLE     �  CREATE TABLE public.pari_match (
    id integer NOT NULL,
    home_score integer,
    away_score integer,
    date_match date NOT NULL,
    time_match time without time zone NOT NULL,
    decision smallint,
    away_team_id integer NOT NULL,
    home_team_id integer NOT NULL,
    CONSTRAINT pari_match_away_score_check CHECK ((away_score >= 0)),
    CONSTRAINT pari_match_home_score_check CHECK ((home_score >= 0))
);
    DROP TABLE public.pari_match;
       public         postgres    false            �            1259    41499    pari_match_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pari_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pari_match_id_seq;
       public       postgres    false    217            �           0    0    pari_match_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pari_match_id_seq OWNED BY public.pari_match.id;
            public       postgres    false    216            �            1259    41492 	   pari_pari    TABLE       CREATE TABLE public.pari_pari (
    id integer NOT NULL,
    date_pari timestamp with time zone NOT NULL,
    somme integer NOT NULL,
    decision smallint NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT pari_pari_somme_check CHECK ((somme >= 0))
);
    DROP TABLE public.pari_pari;
       public         postgres    false            �            1259    41490    pari_pari_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pari_pari_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pari_pari_id_seq;
       public       postgres    false    215            �           0    0    pari_pari_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pari_pari_id_seq OWNED BY public.pari_pari.id;
            public       postgres    false    214            �            1259    41485 	   pari_team    TABLE     �   CREATE TABLE public.pari_team (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    emblem character varying(200) NOT NULL,
    league_id integer NOT NULL
);
    DROP TABLE public.pari_team;
       public         postgres    false            �            1259    41452 	   pari_user    TABLE     5  CREATE TABLE public.pari_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    solde integer NOT NULL,
    CONSTRAINT pari_user_solde_check CHECK ((solde >= 0))
);
    DROP TABLE public.pari_user;
       public         postgres    false            �            1259    41466    pari_user_groups    TABLE        CREATE TABLE public.pari_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.pari_user_groups;
       public         postgres    false            �            1259    41464    pari_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pari_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pari_user_groups_id_seq;
       public       postgres    false    209            �           0    0    pari_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pari_user_groups_id_seq OWNED BY public.pari_user_groups.id;
            public       postgres    false    208            �            1259    41450    pari_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pari_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pari_user_id_seq;
       public       postgres    false    207            �           0    0    pari_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pari_user_id_seq OWNED BY public.pari_user.id;
            public       postgres    false    206            �            1259    41474    pari_user_user_permissions    TABLE     �   CREATE TABLE public.pari_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.pari_user_user_permissions;
       public         postgres    false            �            1259    41472 !   pari_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pari_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.pari_user_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 !   pari_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.pari_user_user_permissions_id_seq OWNED BY public.pari_user_user_permissions.id;
            public       postgres    false    210            �
           2604    41411    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    41421    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            �
           2604    41403    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    41567    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            �
           2604    41393    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    41382    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    41504    pari_match id    DEFAULT     n   ALTER TABLE ONLY public.pari_match ALTER COLUMN id SET DEFAULT nextval('public.pari_match_id_seq'::regclass);
 <   ALTER TABLE public.pari_match ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217            �
           2604    41495    pari_pari id    DEFAULT     l   ALTER TABLE ONLY public.pari_pari ALTER COLUMN id SET DEFAULT nextval('public.pari_pari_id_seq'::regclass);
 ;   ALTER TABLE public.pari_pari ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            �
           2604    41455    pari_user id    DEFAULT     l   ALTER TABLE ONLY public.pari_user ALTER COLUMN id SET DEFAULT nextval('public.pari_user_id_seq'::regclass);
 ;   ALTER TABLE public.pari_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    41469    pari_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.pari_user_groups ALTER COLUMN id SET DEFAULT nextval('public.pari_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.pari_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    41477    pari_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.pari_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.pari_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.pari_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            �          0    41408 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��       �          0    41418    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ��       �          0    41400    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   Ӥ       �          0    41564    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    219   p�       �          0    41390    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   ��       �          0    41379    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   �       �          0    41586    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    220   ٨       �          0    41480    pari_league 
   TABLE DATA               /   COPY public.pari_league (id, name) FROM stdin;
    public       postgres    false    212   ��       �          0    41501 
   pari_match 
   TABLE DATA               ~   COPY public.pari_match (id, home_score, away_score, date_match, time_match, decision, away_team_id, home_team_id) FROM stdin;
    public       postgres    false    217   /�       �          0    41492 	   pari_pari 
   TABLE DATA               L   COPY public.pari_pari (id, date_pari, somme, decision, user_id) FROM stdin;
    public       postgres    false    215   E�       �          0    41485 	   pari_team 
   TABLE DATA               @   COPY public.pari_team (id, name, emblem, league_id) FROM stdin;
    public       postgres    false    213   b�       �          0    41452 	   pari_user 
   TABLE DATA               �   COPY public.pari_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, solde) FROM stdin;
    public       postgres    false    207   s�       �          0    41466    pari_user_groups 
   TABLE DATA               A   COPY public.pari_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    41474    pari_user_user_permissions 
   TABLE DATA               P   COPY public.pari_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
            public       postgres    false    200            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
            public       postgres    false    196            �           0    0    pari_match_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pari_match_id_seq', 1, false);
            public       postgres    false    216            �           0    0    pari_pari_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pari_pari_id_seq', 1, false);
            public       postgres    false    214            �           0    0    pari_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pari_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    pari_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pari_user_id_seq', 1, false);
            public       postgres    false    206            �           0    0 !   pari_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.pari_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �
           2606    41448    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    41444 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    41423 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    41413    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    41430 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    41405 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201                       2606    41573 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    219            �
           2606    41397 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    41395 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    41387 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197                       2606    41593 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    220                       2606    41484    pari_league pari_league_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pari_league
    ADD CONSTRAINT pari_league_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.pari_league DROP CONSTRAINT pari_league_pkey;
       public         postgres    false    212                       2606    41508    pari_match pari_match_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.pari_match
    ADD CONSTRAINT pari_match_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.pari_match DROP CONSTRAINT pari_match_pkey;
       public         postgres    false    217                       2606    41498    pari_pari pari_pari_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pari_pari
    ADD CONSTRAINT pari_pari_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pari_pari DROP CONSTRAINT pari_pari_pkey;
       public         postgres    false    215                       2606    41489    pari_team pari_team_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pari_team
    ADD CONSTRAINT pari_team_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pari_team DROP CONSTRAINT pari_team_pkey;
       public         postgres    false    213            �
           2606    41471 &   pari_user_groups pari_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pari_user_groups
    ADD CONSTRAINT pari_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pari_user_groups DROP CONSTRAINT pari_user_groups_pkey;
       public         postgres    false    209            �
           2606    41521 @   pari_user_groups pari_user_groups_user_id_group_id_45a99b0f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.pari_user_groups
    ADD CONSTRAINT pari_user_groups_user_id_group_id_45a99b0f_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.pari_user_groups DROP CONSTRAINT pari_user_groups_user_id_group_id_45a99b0f_uniq;
       public         postgres    false    209    209            �
           2606    41461    pari_user pari_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pari_user
    ADD CONSTRAINT pari_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pari_user DROP CONSTRAINT pari_user_pkey;
       public         postgres    false    207            �
           2606    41479 :   pari_user_user_permissions pari_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.pari_user_user_permissions
    ADD CONSTRAINT pari_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.pari_user_user_permissions DROP CONSTRAINT pari_user_user_permissions_pkey;
       public         postgres    false    211            �
           2606    41535 Y   pari_user_user_permissions pari_user_user_permissions_user_id_permission_id_281b462f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.pari_user_user_permissions
    ADD CONSTRAINT pari_user_user_permissions_user_id_permission_id_281b462f_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.pari_user_user_permissions DROP CONSTRAINT pari_user_user_permissions_user_id_permission_id_281b462f_uniq;
       public         postgres    false    211    211            �
           2606    41463     pari_user pari_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.pari_user
    ADD CONSTRAINT pari_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.pari_user DROP CONSTRAINT pari_user_username_key;
       public         postgres    false    207            �
           1259    41449    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    41445 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    41446 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    41431 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201                       1259    41584 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    219                       1259    41585 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    219                       1259    41595 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    220                       1259    41594 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    220                       1259    41560     pari_match_away_team_id_c85cbd97    INDEX     _   CREATE INDEX pari_match_away_team_id_c85cbd97 ON public.pari_match USING btree (away_team_id);
 4   DROP INDEX public.pari_match_away_team_id_c85cbd97;
       public         postgres    false    217            	           1259    41561     pari_match_home_team_id_afc78c61    INDEX     _   CREATE INDEX pari_match_home_team_id_afc78c61 ON public.pari_match USING btree (home_team_id);
 4   DROP INDEX public.pari_match_home_team_id_afc78c61;
       public         postgres    false    217                       1259    41549    pari_pari_user_id_d3029b94    INDEX     S   CREATE INDEX pari_pari_user_id_d3029b94 ON public.pari_pari USING btree (user_id);
 .   DROP INDEX public.pari_pari_user_id_d3029b94;
       public         postgres    false    215                       1259    41543    pari_team_league_id_a043498c    INDEX     W   CREATE INDEX pari_team_league_id_a043498c ON public.pari_team USING btree (league_id);
 0   DROP INDEX public.pari_team_league_id_a043498c;
       public         postgres    false    213            �
           1259    41523 "   pari_user_groups_group_id_4a3b8385    INDEX     c   CREATE INDEX pari_user_groups_group_id_4a3b8385 ON public.pari_user_groups USING btree (group_id);
 6   DROP INDEX public.pari_user_groups_group_id_4a3b8385;
       public         postgres    false    209            �
           1259    41522 !   pari_user_groups_user_id_1f0b1a38    INDEX     a   CREATE INDEX pari_user_groups_user_id_1f0b1a38 ON public.pari_user_groups USING btree (user_id);
 5   DROP INDEX public.pari_user_groups_user_id_1f0b1a38;
       public         postgres    false    209            �
           1259    41537 1   pari_user_user_permissions_permission_id_78e4a802    INDEX     �   CREATE INDEX pari_user_user_permissions_permission_id_78e4a802 ON public.pari_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.pari_user_user_permissions_permission_id_78e4a802;
       public         postgres    false    211            �
           1259    41536 +   pari_user_user_permissions_user_id_892f7cf6    INDEX     u   CREATE INDEX pari_user_user_permissions_user_id_892f7cf6 ON public.pari_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.pari_user_user_permissions_user_id_892f7cf6;
       public         postgres    false    211            �
           1259    41509     pari_user_username_2468fe32_like    INDEX     n   CREATE INDEX pari_user_username_2468fe32_like ON public.pari_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.pari_user_username_2468fe32_like;
       public         postgres    false    207                       2606    41438 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    205    2787                       2606    41433 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    2792    203                       2606    41424 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    199    201    2782                       2606    41574 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2782    199    219                        2606    41579 B   django_admin_log django_admin_log_user_id_c564eba6_fk_pari_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_pari_user_id FOREIGN KEY (user_id) REFERENCES public.pari_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_pari_user_id;
       public       postgres    false    219    2800    207                       2606    41550 ;   pari_match pari_match_away_team_id_c85cbd97_fk_pari_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pari_match
    ADD CONSTRAINT pari_match_away_team_id_c85cbd97_fk_pari_team_id FOREIGN KEY (away_team_id) REFERENCES public.pari_team(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.pari_match DROP CONSTRAINT pari_match_away_team_id_c85cbd97_fk_pari_team_id;
       public       postgres    false    217    213    2820                       2606    41555 ;   pari_match pari_match_home_team_id_afc78c61_fk_pari_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pari_match
    ADD CONSTRAINT pari_match_home_team_id_afc78c61_fk_pari_team_id FOREIGN KEY (home_team_id) REFERENCES public.pari_team(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.pari_match DROP CONSTRAINT pari_match_home_team_id_afc78c61_fk_pari_team_id;
       public       postgres    false    217    213    2820                       2606    41544 4   pari_pari pari_pari_user_id_d3029b94_fk_pari_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pari_pari
    ADD CONSTRAINT pari_pari_user_id_d3029b94_fk_pari_user_id FOREIGN KEY (user_id) REFERENCES public.pari_user(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.pari_pari DROP CONSTRAINT pari_pari_user_id_d3029b94_fk_pari_user_id;
       public       postgres    false    215    207    2800                       2606    41538 8   pari_team pari_team_league_id_a043498c_fk_pari_league_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pari_team
    ADD CONSTRAINT pari_team_league_id_a043498c_fk_pari_league_id FOREIGN KEY (league_id) REFERENCES public.pari_league(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.pari_team DROP CONSTRAINT pari_team_league_id_a043498c_fk_pari_league_id;
       public       postgres    false    213    212    2817                       2606    41515 D   pari_user_groups pari_user_groups_group_id_4a3b8385_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pari_user_groups
    ADD CONSTRAINT pari_user_groups_group_id_4a3b8385_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.pari_user_groups DROP CONSTRAINT pari_user_groups_group_id_4a3b8385_fk_auth_group_id;
       public       postgres    false    203    209    2792                       2606    41510 B   pari_user_groups pari_user_groups_user_id_1f0b1a38_fk_pari_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pari_user_groups
    ADD CONSTRAINT pari_user_groups_user_id_1f0b1a38_fk_pari_user_id FOREIGN KEY (user_id) REFERENCES public.pari_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.pari_user_groups DROP CONSTRAINT pari_user_groups_user_id_1f0b1a38_fk_pari_user_id;
       public       postgres    false    207    2800    209                       2606    41529 S   pari_user_user_permissions pari_user_user_permi_permission_id_78e4a802_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.pari_user_user_permissions
    ADD CONSTRAINT pari_user_user_permi_permission_id_78e4a802_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.pari_user_user_permissions DROP CONSTRAINT pari_user_user_permi_permission_id_78e4a802_fk_auth_perm;
       public       postgres    false    201    211    2787                       2606    41524 V   pari_user_user_permissions pari_user_user_permissions_user_id_892f7cf6_fk_pari_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pari_user_user_permissions
    ADD CONSTRAINT pari_user_user_permissions_user_id_892f7cf6_fk_pari_user_id FOREIGN KEY (user_id) REFERENCES public.pari_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.pari_user_user_permissions DROP CONSTRAINT pari_user_user_permissions_user_id_892f7cf6_fk_pari_user_id;
       public       postgres    false    2800    207    211            �      x������ � �      �      x������ � �      �   �  x�]�]j�0���S�%����^�PD"Cc�i����J�y[i>�A;
�3U�^�ǒf�k��F_�r�šK"����k�Ik���zK�o��D�f����'��\M�|��x�9j���̩$�e�~�)�ﮡ���NG�� � ���2Y��d�)νk�y}h�3T83��� ����8C&g�������ɚfN�[t�9kwA`�H�+�P ȡ�~�4���x�cGG_��iLJ�I�BMJ2���9.D�J3�4��e���y?��צ���])�t���7���w����n�;QH�}c�+:�1���@1 �_�a}=`�>���WۍoL��`�2������W��)�a�X?��o�q��
B�̙��8$�UBQ�L����?bC�      �      x������ � �      �   r   x�M�I
�@��Ǆ8{���p�x�� i�}ȥ�j�'꬙����
�!8��p�)�8�y���Yr��%������%��Vq�&iw�[��Է.�/��d����x�w5�      �   �  x����n� ��������}��J��d/�y��Hq�� Y���9瀻����R��6v!���3C�W$_� �N�;foTbF��O��	:��Y���叞�h�Q�0�E:���������V��=�0����}z4�z�S��vA�Q��5�PK̇�)
(��F���r�q������"��#�|��b˰/G@�,� <{�oq��Q]�E�'J�(�b���b�Q��E�|У���v-�e5%5�ܕ�@c���9���	�uC?(�6T�2��)��b��^欐�s��׻4>������l�;N�`@�:|N�et�qO�8A5��z��)�!\^k^�c�!B�Z7�AJ"�9���1�^�?�;?����:�l��:@�G2e��#*�ʦZ7y�V��
1�n@]��;�"* �����t�Fjw      �      x������ � �      �   )   x�316��t�K��,�P(J��L-R�IML/M����� ��	�      �     x���[�,7D�}��ޏYĬ��_�T)9h��J:dHIev)���?�{����a��_q�7����_ǜ[�+�y�s E���l1~�&�H�1b|�*9DQ�'E�]F��(�c���J�QPL�QDш��3Q�:��>bԩ1T�-Y�.�Ax��3G汻yĦ ?��wϣk���1�.KR���t1���fIq���w�j���1���3��p���hz����psҤ�c>���
�p��6&M���b��⣢�խ��=M�VZ�;ŮZ]݊kEbH��y`��X���U�,a�H�>*f�[�l�W�����X���,����Ċ��VY�kPݧ!��_*Jݧ!A�؞��АQ�ï�x+�`��ސ�[�<�:o�ÏJv�]Q��C�A���`�hw�z2�\w������Y��g���"ҼҊ�8*c��*2Q���mE��cyɪ�^�G��\���<����PA��ڪ�(*�+uцY�N���1�U
��:���1F"լ3̫t����$�:�x�v��YBb���7pu�bU���@�^��Ajp`}��	F[�3�)�u��y�V`^%�>�׽V�D���eT���+����{�rQ�1]�Ȓ�>��ӭU��1]����8�M�%>Ƨw�O���;u�y51K2V�vq��1��m�M!=+>��r��
{BN�<*VE�åP�QM��О��G
�Y�{T�����;��̉��瑌ý��'��G�
c�K�U���1K�b=�TQਈB+Jj0E�+6*{�~=t��(�_G�FU�ýXO��	9���PO\��y�b�/��!F6��J,P�K^�:OȜ(�>4�2'�O}lgHȜ��ZgH��)��:*d�b�	�{�ru���Y��2'����Q!s�/��p��b�;|�,wug�)�^�<�>W�'j&�}8�����}��<�]��GFc,���=;w�yd�%g��V���ه��<��=�pE�N����Ql���+VOFV�8�^!O,�΋cNb��k*��S�3��nq}����$�ȶj�お�S��`�L|�Q���Xgj2'*�D���̽B�d�UE�,ưU[�9Q���UE�La�ԩ���:eHEU���^��P1Kب�uъ٨��nżb���K*2�>KV�Lj�!s�ȶ#�2w���j6dNb�S�*��Wh���mȜŘ�jd�l��!�V����~bL�U�������8�����~{�.KV}��;�X��ꞝ;����yv�.�l����qE:<��܉"~f���Gq1��֦�wQ[Q�,0�]�gw�)�7&�p��m�,��S�Tɒ�E�u>s�ǹd8�^�*J�j8�N���%w�cNFU�S��+�%��p̉"�]m8��g��@��2w8ͫ�̉"O^���3LdN��*�;�9�a�k�D�D��M\���)��>�1�9U�^2����O/�Ȝ�U�N=�y��:3|�2'�l;E9 s��OEC��)���(
dNF�*������[��9�a�$d��ib����vs@�Lao�sp�ۭ�t��1��d;^9:�$F��s�X�2�蘣��|Dᘓ��>G��+��3�蘓����s�V�8\��9�y7^��c>�5(��;��]q��;�~>gH�9Q4��1'�`�='��+�_i�_ߕ,I���qtsr��<�I?'��+�}̦����N���^���]��^������M�vuM��o���s��CV���.��ZV���n1�	Y*����3���L�X�m�����eW۞X��S,/Y�X�9��λ2�̉by�xbA�lT�ԗ2g��2g����� s���ݨ\�9�q���y�w?rq�/����:�W�Sg���u7Pg���e���P󫋪3T����3T�����1��j��c~�vu��_�����O}�_��!s����2'1V�^fސ9�����E�o�̉b=�id�R`�cy��h��uP��ru��Y�~�uqv�6��(֩�ɜt�OE2���^�*�bw��Kz�Aa߈�=?+����^~�Ql���C�j���Gž}յ�?Ę���AlEu���ԫ��c~?S��1'���Sǜ(�u���|w��p̯.��1󻋊�ǜ(���p��u���c��;�ā��}���̉b�g)�;�9Q$��V�Ȝ���yLd����D�N�}�BxLdNb���٨�}T�ȜŰ�����<����9�?�O�%8�כj��s�ػA�cNn����srn{d%8��;�)
��݆��Y�ᘓyXg(�1'�����������y���9���8��(1������gU~TH��,�<�*�Y���45Xb{V,O�L����٠��/)����9KB�^���	��G�'d��?����̽B��\ٞ�9�1��2g7&�:\B�La��KB����(����Z�gΒ�9��k��9�i�v�22g���\22����Ȝ����JF�쮨Y���+Ӓ���+���W%#���v�����G'����o`k^A�(�/�+��qE��}86�UQ�%Ї�cw�>U$��p�>W�73��"�~I�>W���
����m��d��(j�Td���sq��̉"ڻ�R��W�od�*2g1��`�Ȝ)���̉"��G�Ȝ(����Td�V�ޫ���Y���S��WBZ��1'�.��qJs̯_	i�6ǜ���易Q[��1��%U�s��j�cNf~��c�껫j�cNfnߧ.�'���;sY��̝�{���Ȝ(�ǚGG�,�1��̉b�E%�:2'�t�nG�l��������헬�#s���:2g�o`�����j�SC�)���d;��x{cR�G��,.
}8�XϜ��p|T�-�}8>*�]j�>S�=JG՟߽VWw�0*{�]�c~��Lf>���gZ��1'1��G��9��Zg����{���1'�8���1�|K��a:��o���c~�&N��1'1������Er�dN��J����9�[/������/�H�ր�����tQ s6�W5 s��=�!
d��D���<�{5 s6����?���������`      �      x������ � �      �     x����n�0E��W�,>��.6
t��֛n����IE�__����Kv�Žw��	c9��A5�5 ���eι4�L�S��Nc����(���neJ�ً�/*�D�iK�(0���i� �h�!��=��϶�d��_�׆��9e\|4�,�G�Տ�$����M� ����
�u{i�i�n� ��eIp���:eh�wjM7��o�cE��ШΨ4����o�q/�(:�Հ��d'O*�C��Ww�4@�ϋҩ��,W}&�2R����Q�'e@�����0����qL+�]���|�a����6gqӢ�k�rA"u�O��Ђ�����kM� EP����(
���I��f^���*f_��Q���v��_[�8���C��s���Vu���-F�3�*���E������5ޘ�e��s�}PC�H���0]������Q�y�ip��ƭ��Ut{rt��~I��ZX�ۓ"�*jn���c�(�F�-v�&��,�v���/E_sC      �      x������ � �      �      x������ � �      �      x������ � �     