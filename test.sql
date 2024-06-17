PGDMP  :                    |            diplom    16.1    16.0 9    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16910    diplom    DATABASE     z   CREATE DATABASE diplom WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE diplom;
                postgres    false            �            1259    16946 
   categories    TABLE     �   CREATE TABLE public.categories (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    16976    comments    TABLE     8  CREATE TABLE public.comments (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    text text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "lessonId" integer,
    "statusId" character varying(255)
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    16975    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    226                        0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    225            �            1259    16999    lessonCompliteds    TABLE     �   CREATE TABLE public."lessonCompliteds" (
    result integer,
    promp integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "lessonId" integer NOT NULL
);
 &   DROP TABLE public."lessonCompliteds";
       public         heap    postgres    false            �            1259    16952    lessons    TABLE     �  CREATE TABLE public.lessons (
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
    DROP TABLE public.lessons;
       public         heap    postgres    false            �            1259    16951    lessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.lessons_id_seq;
       public          postgres    false    223                       0    0    lessons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;
          public          postgres    false    222            �            1259    16933 	   questions    TABLE     �  CREATE TABLE public.questions (
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
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    16932    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public          postgres    false    219                       0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public          postgres    false    218            �            1259    16911    roles    TABLE     �   CREATE TABLE public.roles (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16970    statuses    TABLE     �   CREATE TABLE public.statuses (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.statuses;
       public         heap    postgres    false            �            1259    16941    types    TABLE     �   CREATE TABLE public.types (
    id character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    16917    users    TABLE     �  CREATE TABLE public.users (
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
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16916    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216            @           2604    16979    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            ?           2604    16955 
   lessons id    DEFAULT     h   ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);
 9   ALTER TABLE public.lessons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            >           2604    16936    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            =           2604    16920    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �          0    16946 
   categories 
   TABLE DATA           B   COPY public.categories (id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   �F       �          0    16976    comments 
   TABLE DATA           o   COPY public.comments (id, value, text, "createdAt", "updatedAt", "userId", "lessonId", "statusId") FROM stdin;
    public          postgres    false    226   �G       �          0    16999    lessonCompliteds 
   TABLE DATA           k   COPY public."lessonCompliteds" (result, promp, "createdAt", "updatedAt", "userId", "lessonId") FROM stdin;
    public          postgres    false    227   [I       �          0    16952    lessons 
   TABLE DATA           �   COPY public.lessons (id, name, content, video, "ageUnder", "ageUp", image, "createdAt", "updatedAt", "typeId", "categoryId", finish, invite) FROM stdin;
    public          postgres    false    223   qJ       �          0    16933 	   questions 
   TABLE DATA           }   COPY public.questions (id, question, v1, v2, v3, v4, correct, clue, "createdAt", "updatedAt", image, "lessonId") FROM stdin;
    public          postgres    false    219   �L       �          0    16911    roles 
   TABLE DATA           =   COPY public.roles (id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   O       �          0    16970    statuses 
   TABLE DATA           @   COPY public.statuses (id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224   KO       �          0    16941    types 
   TABLE DATA           =   COPY public.types (id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   �O       �          0    16917    users 
   TABLE DATA           q   COPY public.users (id, surname, name, birthday, email, password, "createdAt", "updatedAt", "roleId") FROM stdin;
    public          postgres    false    217   P                  0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 9, true);
          public          postgres    false    225                       0    0    lessons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lessons_id_seq', 41, true);
          public          postgres    false    222                       0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 23, true);
          public          postgres    false    218                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          postgres    false    216            L           2606    16950    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    221            R           2606    16983    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    226            T           2606    17003 &   lessonCompliteds lessonCompliteds_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."lessonCompliteds"
    ADD CONSTRAINT "lessonCompliteds_pkey" PRIMARY KEY ("userId", "lessonId");
 T   ALTER TABLE ONLY public."lessonCompliteds" DROP CONSTRAINT "lessonCompliteds_pkey";
       public            postgres    false    227    227            N           2606    16959    lessons lessons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.lessons DROP CONSTRAINT lessons_pkey;
       public            postgres    false    223            H           2606    16940    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    219            B           2606    16915    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    215            P           2606    16974    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    224            J           2606    16945    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    220            D           2606    16926    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    217            F           2606    16924    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            Y           2606    16989    comments comments_lessonId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_lessonId_fkey" FOREIGN KEY ("lessonId") REFERENCES public.lessons(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.comments DROP CONSTRAINT "comments_lessonId_fkey";
       public          postgres    false    223    4686    226            Z           2606    16994    comments comments_statusId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_statusId_fkey" FOREIGN KEY ("statusId") REFERENCES public.statuses(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.comments DROP CONSTRAINT "comments_statusId_fkey";
       public          postgres    false    224    4688    226            [           2606    16984    comments comments_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.comments DROP CONSTRAINT "comments_userId_fkey";
       public          postgres    false    217    226    4678            \           2606    17009 /   lessonCompliteds lessonCompliteds_lessonId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."lessonCompliteds"
    ADD CONSTRAINT "lessonCompliteds_lessonId_fkey" FOREIGN KEY ("lessonId") REFERENCES public.lessons(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public."lessonCompliteds" DROP CONSTRAINT "lessonCompliteds_lessonId_fkey";
       public          postgres    false    227    4686    223            ]           2606    17004 -   lessonCompliteds lessonCompliteds_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."lessonCompliteds"
    ADD CONSTRAINT "lessonCompliteds_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 [   ALTER TABLE ONLY public."lessonCompliteds" DROP CONSTRAINT "lessonCompliteds_userId_fkey";
       public          postgres    false    217    4678    227            V           2606    17124    questions lessonId    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT "lessonId" FOREIGN KEY ("lessonId") REFERENCES public.lessons(id) NOT VALID;
 >   ALTER TABLE ONLY public.questions DROP CONSTRAINT "lessonId";
       public          postgres    false    4686    219    223            W           2606    16965    lessons lessons_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.lessons DROP CONSTRAINT "lessons_categoryId_fkey";
       public          postgres    false    4684    223    221            X           2606    16960    lessons lessons_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT "lessons_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.lessons DROP CONSTRAINT "lessons_typeId_fkey";
       public          postgres    false    220    223    4682            U           2606    16927    users users_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT "users_roleId_fkey";
       public          postgres    false    217    4674    215            �   �   x���A
�0E��ً%m-�g�0i��P�VPޠTJC�z�?7�t�"dv?��fp��TR�9�5��ot�^h���+F�t�)�d��KS���b+nB�����q�h��h�����+��v�
��9q�T ����!x�#�����+�8��c۹���c��D)����      �   �  x���Mn�@���)��4Ο%�!z�&v��d�]
�Jc�Jb�W o�ǱZ��"A��#�>>��J?�W��G�y�{��w��;�����������t0����rD�n��*O>�S��Pʑ�'����,-�9���6�Z%W�X���G���"T��ɽ���ޫ�Ƚ�����=hY���)O�ܩ&[4�E�����Q�C
�V���gD͞;�q��Rt�=�r���Ь��2J��ʬ;�@���OzqB���!���o�Š2p�f���jMѵ�$�"!`�l��1ŋ/�)���ot}ĵ&7�m�cQ�i\HH4FM��=7eK�ʫ;_��ӄ�<�`<�\�������ˠR]EwJ�(��;8����?�;2��9�Rx�>I!S��.Uj޸�����l!� �m��/$�����еo�.�b�xo���      �     x�m�K��0D��)��
�W����T�Ib�U�u?������@{�,i�̀��>��R#�A��6�����]~ �j��5�X�*���r0&W'o�S�V�Mi�w��É�ܡi̸$k�I?�)@��pI���R`�h����q e-��]��R����4�_�������و�g~����W��:��t-�n#J��^�w�<��eI?I}����S,͠�=^�����/O�8`�^�K@NxL��b���|��bl������B      �   W  x����N�@�ד��d4���'`�@���B�.��J˶R���IbpC�7�1i���Yx�39��g��/4����Q�O����xJ��Ut���c���������������F��6�2)��lw�Y�+�4�H�ԩQ��ϔP�+lW�D�B�Bj���a�RiW�P�R��x�c��
�	�0�'X`I#j����%tK%SLtt��?�'4EnNc���3�[JZ`C:@�M�g����#�t�URZ�.>Kd^(WH�u�=����S�⿃_TF�!�>Є���@^���x�v��_��qZ[��?4Ȭ�m���ǫt�U�k��:�7�;����4���`CSF� ���K�9{��-{�����-YɿYeҨ\jq�� U��K�Q��q)�:��T�� ̆QUK��NT��HF?�ʟG���5�Z���i�����/&��Ql�6%�*��BE�I�/c���F��&�2���]A�(�q�U�P8���,4���5��mn���,z��
h����������R@l��F1Lf��,�����j:�Yap����H�cD!7*��Q~����0��Q�媯?����N�7afa      �     x�}R�n�0}6_��-������}
HB20l�e�&�Z�o��fEI����G��dڢd���>������w���r%wz��踁����6��2:�ʽZ��{�&��|V?Խ�%��N>�'ȾBmq�n1��ARuܨ��@��+��X-��<�5[=H�� @p�[ve}w�l˦�X&~`�p�2��r�W�TE�Hgyye�\�ӏIt3 ���{��z�<O����^,��W�+0Y�Nv��;�-�%��)k��Y�=zH��&_�=��&���7	�v�6�9-�p��n�/5��_T�/����'�Ի�z�?��Y\��d\�(,D�DXG�DaT�Dx�H�*��v� �$�w�ɶB���S]kj��eU��i�+���b�qL9T0o*��	�GY<����B �dոI'&n�q*��p����a\��囶���w��K��}�y�o��8Lr<�C�7�0�&��q7C��
���8`W�5��I#����b(|�u☖�ΰt�ݻ�G=�8���gI�k�0��&Ș�      �   4   x�v�4202�5 !+C+K=scCmS<R\�.��~d����� ���      �   f   x��0I�¾/6\�pa�}�.캰�����D� �̭�̭LM�-M�L�Hq]�4fǅ��/6aUgdh���ׅy`��i���=... 6�B�      �   H   x���ta��ƋM�FF&� �```ejleb�gnl�m`�G��¦;.l����>݋�.컰�L�b���� D�(      �      x����n�@�5<v���ڞY�p�Cl�17uclNm�0�U����M��T)���� J+U:��̯s�i4$g��V  ��pQD�"E�2=�Z���c$wQ�B��q4��%�Y}	�1�Ͷ:^����I�4D���9Q8����w��+*Un��<̥�ӧ�[�3��>��Fx���m?��:1��* ���1��jVN�~K����ິn��K��b��ITr���t��+�r�D��
@. �)䔉��v�eV�y��N9k�;�si�qKj�C�K{d�mt�г��\w���rk�9����j4g�#	 ��)�H��N�7��Tɥ_���c|>j�f�������q'V����o��u�Fn���ߪ'���SY�;5���K���h-�]x�ϧj��p�`� ��ID��2�#�9PDD鋙����;���&H����U���X�fɺ�=ym2׌�U�� ���B�M9"�ȟh
 s8d�C���1�����)     