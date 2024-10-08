PGDMP     3        	            |            solati    14.6    14.6     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16486    solati    DATABASE     e   CREATE DATABASE solati WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE solati;
                postgres    false            �            1259    16489    tasks    TABLE       CREATE TABLE public.tasks (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    status character(1) DEFAULT 'P'::bpchar NOT NULL,
    log jsonb,
    CONSTRAINT tasks_status_check CHECK ((status = ANY (ARRAY['P'::bpchar, 'C'::bpchar])))
);
    DROP TABLE public.tasks;
       public         heap    postgres    false            �            1259    16488    tasks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tasks_id_seq;
       public          postgres    false    210                       0    0    tasks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;
          public          postgres    false    209            �            1259    16500    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    identification character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16499    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    212                       0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    211            a           2604    16492    tasks id    DEFAULT     d   ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);
 7   ALTER TABLE public.tasks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            d           2604    16503    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �          0    16489    tasks 
   TABLE DATA           D   COPY public.tasks (id, title, description, status, log) FROM stdin;
    public          postgres    false    210   �       �          0    16500    user 
   TABLE DATA           >   COPY public."user" (id, identification, password) FROM stdin;
    public          postgres    false    212   �                  0    0    tasks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tasks_id_seq', 19, true);
          public          postgres    false    209                       0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 2, true);
          public          postgres    false    211            f           2606    16498    tasks pk_public_tasks_id 
   CONSTRAINT     V   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT pk_public_tasks_id PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tasks DROP CONSTRAINT pk_public_tasks_id;
       public            postgres    false    210            j           2606    16507    user pk_public_user_id 
   CONSTRAINT     V   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT pk_public_user_id PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT pk_public_user_id;
       public            postgres    false    212            h           2606    16511    tasks unique_title 
   CONSTRAINT     N   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT unique_title UNIQUE (title);
 <   ALTER TABLE ONLY public.tasks DROP CONSTRAINT unique_title;
       public            postgres    false    210            l           2606    16509    user user_identification_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_identification_key UNIQUE (identification);
 H   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_identification_key;
       public            postgres    false    212            �   
  x����N1Ek�WX�B�y��G��RP�Lc�E"m %F(���+Eɦ�>>W�j�<Cκ,V���3O�{��)���M��	�N N@f ��DрE�H ����j]n�N����K!%�	��\��Ԯ��BR����=�Bo b�m)�9��/6�y�c�D|�ϩ�����?��u��։o��C.��}4ոA��}��k�Ϛ@}M�����֢�D�3'b����e�jY�z�[}�tJ6$"㭷A.s01D�î�M�u� ��      �   "   x�3�4426153���,H,..�/J����� R�F     