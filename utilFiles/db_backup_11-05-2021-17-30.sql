PGDMP                         y         
   HenDevHRMS    13.2    13.2 3    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16561 
   HenDevHRMS    DATABASE     i   CREATE DATABASE "HenDevHRMS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "HenDevHRMS";
                postgres    false            ?            1259    16621 
   AuthClaims    TABLE     ~   CREATE TABLE public."AuthClaims" (
    id integer NOT NULL,
    "memberId" integer NOT NULL,
    "authId" integer NOT NULL
);
     DROP TABLE public."AuthClaims";
       public         heap    postgres    false            ?            1259    16669    AuthClaims_id_seq    SEQUENCE     ?   ALTER TABLE public."AuthClaims" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."AuthClaims_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205            ?            1259    16626 	   AuthRoles    TABLE     k   CREATE TABLE public."AuthRoles" (
    id integer NOT NULL,
    "roleDef" character varying(10) NOT NULL
);
    DROP TABLE public."AuthRoles";
       public         heap    postgres    false            ?            1259    16667    AuthRoles_id_seq    SEQUENCE     ?   ALTER TABLE public."AuthRoles" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."AuthRoles_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    206            ?            1259    16611 	   CorpTypes    TABLE     k   CREATE TABLE public."CorpTypes" (
    id integer NOT NULL,
    "corpDef" character varying(50) NOT NULL
);
    DROP TABLE public."CorpTypes";
       public         heap    postgres    false            ?            1259    16671    CorpTypes_id_seq    SEQUENCE     ?   ALTER TABLE public."CorpTypes" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CorpTypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203            ?            1259    16606    Genders    TABLE     k   CREATE TABLE public."Genders" (
    id integer NOT NULL,
    "genderDef" character varying(10) NOT NULL
);
    DROP TABLE public."Genders";
       public         heap    postgres    false            ?            1259    16673    Genders_id_seq    SEQUENCE     ?   ALTER TABLE public."Genders" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Genders_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    202            ?            1259    16616 	   JobStatus    TABLE     m   CREATE TABLE public."JobStatus" (
    id integer NOT NULL,
    "statusDef" character varying(50) NOT NULL
);
    DROP TABLE public."JobStatus";
       public         heap    postgres    false            ?            1259    16675    JobStatus_id_seq    SEQUENCE     ?   ALTER TABLE public."JobStatus" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."JobStatus_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            ?            1259    16601    MemberTypes    TABLE     o   CREATE TABLE public."MemberTypes" (
    id integer NOT NULL,
    "memberDef" character varying(50) NOT NULL
);
 !   DROP TABLE public."MemberTypes";
       public         heap    postgres    false            ?            1259    16677    MemberTypes_id_seq    SEQUENCE     ?   ALTER TABLE public."MemberTypes" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."MemberTypes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    201            ?            1259    16592    Members    TABLE     J  CREATE TABLE public."Members" (
    id integer NOT NULL,
    "nationalId" character varying(11) NOT NULL,
    name character varying(50) NOT NULL,
    "lastName" character varying(50) NOT NULL,
    gender smallint NOT NULL,
    birthdate date NOT NULL,
    phone character varying(10) NOT NULL,
    mail character varying(100) NOT NULL,
    password character varying(9999) NOT NULL,
    "registerDate" date NOT NULL,
    "memberType" smallint NOT NULL,
    "jobStatus" smallint,
    "corpName" character varying(150),
    "corpType" smallint,
    active smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public."Members";
       public         heap    postgres    false            ?            1259    16679    Members_id_seq    SEQUENCE     ?   ALTER TABLE public."Members" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Members_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    200            ?          0    16621 
   AuthClaims 
   TABLE DATA           @   COPY public."AuthClaims" (id, "memberId", "authId") FROM stdin;
    public          postgres    false    205   $;       ?          0    16626 	   AuthRoles 
   TABLE DATA           4   COPY public."AuthRoles" (id, "roleDef") FROM stdin;
    public          postgres    false    206   A;       ?          0    16611 	   CorpTypes 
   TABLE DATA           4   COPY public."CorpTypes" (id, "corpDef") FROM stdin;
    public          postgres    false    203   ?;       ?          0    16606    Genders 
   TABLE DATA           4   COPY public."Genders" (id, "genderDef") FROM stdin;
    public          postgres    false    202   ?;       ?          0    16616 	   JobStatus 
   TABLE DATA           6   COPY public."JobStatus" (id, "statusDef") FROM stdin;
    public          postgres    false    204   1<       ?          0    16601    MemberTypes 
   TABLE DATA           8   COPY public."MemberTypes" (id, "memberDef") FROM stdin;
    public          postgres    false    201   ?<       ?          0    16592    Members 
   TABLE DATA           ?   COPY public."Members" (id, "nationalId", name, "lastName", gender, birthdate, phone, mail, password, "registerDate", "memberType", "jobStatus", "corpName", "corpType", active) FROM stdin;
    public          postgres    false    200   ?<       ?           0    0    AuthClaims_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."AuthClaims_id_seq"', 1, false);
          public          postgres    false    208            ?           0    0    AuthRoles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."AuthRoles_id_seq"', 4, true);
          public          postgres    false    207            ?           0    0    CorpTypes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."CorpTypes_id_seq"', 7, true);
          public          postgres    false    209            ?           0    0    Genders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Genders_id_seq"', 3, true);
          public          postgres    false    210            ?           0    0    JobStatus_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JobStatus_id_seq"', 9, true);
          public          postgres    false    211            ?           0    0    MemberTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."MemberTypes_id_seq"', 4, true);
          public          postgres    false    212            ?           0    0    Members_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Members_id_seq"', 1, true);
          public          postgres    false    213            W           2606    16625    AuthClaims AuthClaims_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."AuthClaims"
    ADD CONSTRAINT "AuthClaims_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."AuthClaims" DROP CONSTRAINT "AuthClaims_pkey";
       public            postgres    false    205            [           2606    16630    AuthRoles AuthRoles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."AuthRoles"
    ADD CONSTRAINT "AuthRoles_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."AuthRoles" DROP CONSTRAINT "AuthRoles_pkey";
       public            postgres    false    206            S           2606    16615    CorpTypes CorpTypes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."CorpTypes"
    ADD CONSTRAINT "CorpTypes_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."CorpTypes" DROP CONSTRAINT "CorpTypes_pkey";
       public            postgres    false    203            Q           2606    16610    Genders Gender_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "Gender_pkey" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "Gender_pkey";
       public            postgres    false    202            U           2606    16620    JobStatus JobStatus_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."JobStatus"
    ADD CONSTRAINT "JobStatus_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."JobStatus" DROP CONSTRAINT "JobStatus_pkey";
       public            postgres    false    204            O           2606    16605    MemberTypes MemberTypes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."MemberTypes"
    ADD CONSTRAINT "MemberTypes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."MemberTypes" DROP CONSTRAINT "MemberTypes_pkey";
       public            postgres    false    201            I           2606    16600    Members Members_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "Members_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Members" DROP CONSTRAINT "Members_pkey";
       public            postgres    false    200            X           1259    16666    fki_authId_to_AuthRoles_id    INDEX     Y   CREATE INDEX "fki_authId_to_AuthRoles_id" ON public."AuthClaims" USING btree ("authId");
 0   DROP INDEX public."fki_authId_to_AuthRoles_id";
       public            postgres    false    205            J           1259    16654    fki_corpType_to_CorpTypes_id    INDEX     Z   CREATE INDEX "fki_corpType_to_CorpTypes_id" ON public."Members" USING btree ("corpType");
 2   DROP INDEX public."fki_corpType_to_CorpTypes_id";
       public            postgres    false    200            K           1259    16636    fki_gender_to_genders_    INDEX     N   CREATE INDEX fki_gender_to_genders_ ON public."Members" USING btree (gender);
 *   DROP INDEX public.fki_gender_to_genders_;
       public            postgres    false    200            L           1259    16648    fki_jobStatus_to_JobStatus_id    INDEX     \   CREATE INDEX "fki_jobStatus_to_JobStatus_id" ON public."Members" USING btree ("jobStatus");
 3   DROP INDEX public."fki_jobStatus_to_JobStatus_id";
       public            postgres    false    200            Y           1259    16660    fki_memberId_to_Members_id    INDEX     [   CREATE INDEX "fki_memberId_to_Members_id" ON public."AuthClaims" USING btree ("memberId");
 0   DROP INDEX public."fki_memberId_to_Members_id";
       public            postgres    false    205            M           1259    16642     fki_memberType_to_MemberTypes_id    INDEX     `   CREATE INDEX "fki_memberType_to_MemberTypes_id" ON public."Members" USING btree ("memberType");
 6   DROP INDEX public."fki_memberType_to_MemberTypes_id";
       public            postgres    false    200            `           2606    16661 !   AuthClaims authId_to_AuthRoles_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AuthClaims"
    ADD CONSTRAINT "authId_to_AuthRoles_id" FOREIGN KEY ("authId") REFERENCES public."AuthRoles"(id);
 O   ALTER TABLE ONLY public."AuthClaims" DROP CONSTRAINT "authId_to_AuthRoles_id";
       public          postgres    false    205    206    2907            \           2606    16649     Members corpType_to_CorpTypes_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "corpType_to_CorpTypes_id" FOREIGN KEY ("corpType") REFERENCES public."CorpTypes"(id);
 N   ALTER TABLE ONLY public."Members" DROP CONSTRAINT "corpType_to_CorpTypes_id";
       public          postgres    false    203    200    2899            ]           2606    16631    Members gender_to_Genders_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "gender_to_Genders_id" FOREIGN KEY (gender) REFERENCES public."Genders"(id);
 J   ALTER TABLE ONLY public."Members" DROP CONSTRAINT "gender_to_Genders_id";
       public          postgres    false    2897    200    202            ^           2606    16643 !   Members jobStatus_to_JobStatus_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "jobStatus_to_JobStatus_id" FOREIGN KEY ("jobStatus") REFERENCES public."JobStatus"(id);
 O   ALTER TABLE ONLY public."Members" DROP CONSTRAINT "jobStatus_to_JobStatus_id";
       public          postgres    false    2901    204    200            a           2606    16655 !   AuthClaims memberId_to_Members_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."AuthClaims"
    ADD CONSTRAINT "memberId_to_Members_id" FOREIGN KEY ("memberId") REFERENCES public."Members"(id);
 O   ALTER TABLE ONLY public."AuthClaims" DROP CONSTRAINT "memberId_to_Members_id";
       public          postgres    false    2889    205    200            _           2606    16637 $   Members memberType_to_MemberTypes_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "memberType_to_MemberTypes_id" FOREIGN KEY ("memberType") REFERENCES public."MemberTypes"(id);
 R   ALTER TABLE ONLY public."Members" DROP CONSTRAINT "memberType_to_MemberTypes_id";
       public          postgres    false    2895    200    201            ?      x?????? ? ?      ?   1   x?3?tL????2???OI-J,?/?2?t?/*?2??M?MJ-?????? ?A      ?   m   x?3??O+)O,J?2???/(??KWPS?M,?N-???9}?J??KJ??L8??????%??\???y9?y?
0?\f???E%?@%?9?I?\朎?
!??\1z\\\ ?."      ?   "   x?3?tK?M?I?2??QƜ?%?E\1z\\\ t?C      ?   {   x?]?1?0@??>?O?
?B?B?XXJ? 4???ܞ?e??o	???????'ʷ??2?!{V??l???)F?Bb??????j3???^?`??Q??fo??F?N"c?Or?t?;??_nD???.x      ?   /   x?3??M?MJ-?2?t?-?ɯLM?2?1??L8?KR???b???? ??+      ?   d   x??1
?@???]Vf????YY??HXT?*?Br???)?ֺ3R??}????Ah?LQx?[r?%>0?u)??Ne\>?{+P&sP?Q<???^wCB?
G?     