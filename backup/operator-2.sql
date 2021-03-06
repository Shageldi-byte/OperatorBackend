PGDMP     &    8                z            operator    13.2    14.2 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    123313    operator    DATABASE     l   CREATE DATABASE operator WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE operator;
                postgres    false            ?            1259    123415    courier    TABLE     j  CREATE TABLE public.courier (
    id bigint NOT NULL,
    fullname text,
    username text,
    password text,
    phone_number text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_role text,
    date_of_birthday text,
    work_start_date text,
    sell_point_id bigint,
    unique_id text
);
    DROP TABLE public.courier;
       public         heap    postgres    false            ?           0    0    TABLE courier    COMMENT     6   COMMENT ON TABLE public.courier IS 'Eltip berijiler';
          public          postgres    false    219            ?            1259    123413    courier_id_seq    SEQUENCE     w   CREATE SEQUENCE public.courier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courier_id_seq;
       public          postgres    false    219            ?           0    0    courier_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courier_id_seq OWNED BY public.courier.id;
          public          postgres    false    218            ?            1259    123316    customer    TABLE     ?  CREATE TABLE public.customer (
    id bigint NOT NULL,
    fullname text,
    phone_number text,
    question_mode text,
    find_us text,
    address_home text,
    address_work text,
    information text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    unique_id text,
    operator_unique_id text,
    speak_mode bigint,
    status bigint,
    speak_tone bigint,
    speak_accent bigint,
    focus_word bigint
);
    DROP TABLE public.customer;
       public         heap    postgres    false            ?            1259    123314    customer_ID_seq    SEQUENCE     z   CREATE SEQUENCE public."customer_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."customer_ID_seq";
       public          postgres    false    201            ?           0    0    customer_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."customer_ID_seq" OWNED BY public.customer.id;
          public          postgres    false    200            ?            1259    123327    customer_interested_product    TABLE     l  CREATE TABLE public.customer_interested_product (
    id bigint NOT NULL,
    interested_product_name text,
    interested_product_size text,
    interested_product_color text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    unique_id text,
    customer_unique_id text,
    operator_unique_id text
);
 /   DROP TABLE public.customer_interested_product;
       public         heap    postgres    false            ?            1259    123325 "   customer_interested_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_interested_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.customer_interested_product_id_seq;
       public          postgres    false    203            ?           0    0 "   customer_interested_product_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.customer_interested_product_id_seq OWNED BY public.customer_interested_product.id;
          public          postgres    false    202            ?            1259    123505    customer_order    TABLE     ,  CREATE TABLE public.customer_order (
    id bigint NOT NULL,
    unique_id text,
    is_express boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    additional_information text,
    customer_unique_id text,
    operator_unique_id text
);
 "   DROP TABLE public.customer_order;
       public         heap    postgres    false            ?            1259    123558    customer_order_address_history    TABLE       CREATE TABLE public.customer_order_address_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    address text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    reason text
);
 2   DROP TABLE public.customer_order_address_history;
       public         heap    postgres    false            ?            1259    123556 %   customer_order_address_history_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_order_address_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.customer_order_address_history_id_seq;
       public          postgres    false    243            ?           0    0 %   customer_order_address_history_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.customer_order_address_history_id_seq OWNED BY public.customer_order_address_history.id;
          public          postgres    false    242            ?            1259    123547    customer_order_courier_history    TABLE       CREATE TABLE public.customer_order_courier_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    courier_unique_id text,
    operator_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    reason text
);
 2   DROP TABLE public.customer_order_courier_history;
       public         heap    postgres    false            ?            1259    123545 %   customer_order_courier_history_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_order_courier_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.customer_order_courier_history_id_seq;
       public          postgres    false    241            ?           0    0 %   customer_order_courier_history_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.customer_order_courier_history_id_seq OWNED BY public.customer_order_courier_history.id;
          public          postgres    false    240            ?            1259    123569    customer_order_date_history    TABLE     ?   CREATE TABLE public.customer_order_date_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    order_date text,
    order_time text,
    user_unique_id text,
    created_at text,
    updated_at text,
    reason text
);
 /   DROP TABLE public.customer_order_date_history;
       public         heap    postgres    false            ?            1259    123567 "   customer_order_date_history_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_order_date_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.customer_order_date_history_id_seq;
       public          postgres    false    245            ?           0    0 "   customer_order_date_history_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.customer_order_date_history_id_seq OWNED BY public.customer_order_date_history.id;
          public          postgres    false    244            ?            1259    123591    customer_order_delivery_price    TABLE     "  CREATE TABLE public.customer_order_delivery_price (
    id bigint NOT NULL,
    customer_order_unique_id text,
    user_unique_id text,
    delivery_price double precision DEFAULT 0,
    reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 1   DROP TABLE public.customer_order_delivery_price;
       public         heap    postgres    false            ?           0    0 #   TABLE customer_order_delivery_price    COMMENT     R   COMMENT ON TABLE public.customer_order_delivery_price IS 'Eltip bermek bahalary';
          public          postgres    false    249            ?            1259    123589 $   customer_order_delivery_price_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_order_delivery_price_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.customer_order_delivery_price_id_seq;
       public          postgres    false    249            ?           0    0 $   customer_order_delivery_price_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.customer_order_delivery_price_id_seq OWNED BY public.customer_order_delivery_price.id;
          public          postgres    false    248            ?            1259    123503    customer_order_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.customer_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.customer_order_id_seq;
       public          postgres    false    235            ?           0    0    customer_order_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.customer_order_id_seq OWNED BY public.customer_order.id;
          public          postgres    false    234            ?            1259    123603    customer_order_location_history    TABLE       CREATE TABLE public.customer_order_location_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    user_unique_id text,
    latitude text,
    longitude text,
    reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 3   DROP TABLE public.customer_order_location_history;
       public         heap    postgres    false            ?           0    0 %   TABLE customer_order_location_history    COMMENT     b   COMMENT ON TABLE public.customer_order_location_history IS 'Eltip berilmeli yerin kordinatalary';
          public          postgres    false    251            ?            1259    123601 &   customer_order_location_history_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_order_location_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.customer_order_location_history_id_seq;
       public          postgres    false    251            ?           0    0 &   customer_order_location_history_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.customer_order_location_history_id_seq OWNED BY public.customer_order_location_history.id;
          public          postgres    false    250            ?            1259    123520    customer_order_product    TABLE     T  CREATE TABLE public.customer_order_product (
    id bigint NOT NULL,
    customer_order_unique_id text,
    product_name text,
    product_brand text,
    product_model text,
    product_artikul_code text,
    product_debt_price double precision DEFAULT 0,
    product_cash_price double precision DEFAULT 0,
    product_discount double precision DEFAULT 0,
    product_size text,
    product_color text,
    product_count bigint DEFAULT 0,
    unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    reason text,
    operator_unique_id text
);
 *   DROP TABLE public.customer_order_product;
       public         heap    postgres    false            ?            1259    123518    customer_order_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_order_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.customer_order_product_id_seq;
       public          postgres    false    237            ?           0    0    customer_order_product_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.customer_order_product_id_seq OWNED BY public.customer_order_product.id;
          public          postgres    false    236            ?            1259    123535 %   customer_order_product_status_history    TABLE       CREATE TABLE public.customer_order_product_status_history (
    id bigint NOT NULL,
    customer_order_product_unique_id text,
    status text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    reason text
);
 9   DROP TABLE public.customer_order_product_status_history;
       public         heap    postgres    false            ?            1259    123533 ,   customer_order_product_status_history_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_order_product_status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.customer_order_product_status_history_id_seq;
       public          postgres    false    239            ?           0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.customer_order_product_status_history_id_seq OWNED BY public.customer_order_product_status_history.id;
          public          postgres    false    238            ?            1259    123580    customer_order_status_history    TABLE       CREATE TABLE public.customer_order_status_history (
    id bigint NOT NULL,
    customer_order_unique_id text,
    status text,
    reason text,
    user_unique_id text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 1   DROP TABLE public.customer_order_status_history;
       public         heap    postgres    false            ?            1259    123578 $   customer_order_status_history_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.customer_order_status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.customer_order_status_history_id_seq;
       public          postgres    false    247            ?           0    0 $   customer_order_status_history_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.customer_order_status_history_id_seq OWNED BY public.customer_order_status_history.id;
          public          postgres    false    246            ?            1259    123349    customer_status    TABLE     ?   CREATE TABLE public.customer_status (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 #   DROP TABLE public.customer_status;
       public         heap    postgres    false            ?           0    0    TABLE customer_status    COMMENT     D   COMMENT ON TABLE public.customer_status IS 'Müşderiniň statusy';
          public          postgres    false    207            ?            1259    123347    customer_status_id_seq    SEQUENCE        CREATE SEQUENCE public.customer_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.customer_status_id_seq;
       public          postgres    false    207            ?           0    0    customer_status_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.customer_status_id_seq OWNED BY public.customer_status.id;
          public          postgres    false    206            ?            1259    123453 	   fcm_token    TABLE     ?   CREATE TABLE public.fcm_token (
    id bigint NOT NULL,
    token text,
    user_role bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_unique_id text
);
    DROP TABLE public.fcm_token;
       public         heap    postgres    false            ?           0    0    TABLE fcm_token    COMMENT     H   COMMENT ON TABLE public.fcm_token IS 'Firebase cloud messaging tokens';
          public          postgres    false    225            ?            1259    123451    fcm_token_id_seq    SEQUENCE     y   CREATE SEQUENCE public.fcm_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.fcm_token_id_seq;
       public          postgres    false    225            ?           0    0    fcm_token_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.fcm_token_id_seq OWNED BY public.fcm_token.id;
          public          postgres    false    224            ?            1259    123393    find_us    TABLE     ?   CREATE TABLE public.find_us (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.find_us;
       public         heap    postgres    false            ?           0    0    TABLE find_us    COMMENT     9   COMMENT ON TABLE public.find_us IS 'Bizi nireden tapdy';
          public          postgres    false    215            ?            1259    123391    find_us_id_seq    SEQUENCE     w   CREATE SEQUENCE public.find_us_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.find_us_id_seq;
       public          postgres    false    215            ?           0    0    find_us_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.find_us_id_seq OWNED BY public.find_us.id;
          public          postgres    false    214            ?            1259    123382 
   focus_word    TABLE     ?   CREATE TABLE public.focus_word (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.focus_word;
       public         heap    postgres    false            ?           0    0    TABLE focus_word    COMMENT     M   COMMENT ON TABLE public.focus_word IS 'Nähili ýüzlenilse gowy görýär';
          public          postgres    false    213            ?            1259    123380    focus_word_id_seq    SEQUENCE     z   CREATE SEQUENCE public.focus_word_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.focus_word_id_seq;
       public          postgres    false    213            ?           0    0    focus_word_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.focus_word_id_seq OWNED BY public.focus_word.id;
          public          postgres    false    212            ?            1259    123427    inbox    TABLE     S  CREATE TABLE public.inbox (
    id bigint NOT NULL,
    title text,
    message text,
    link_to_goal text,
    is_read boolean DEFAULT false,
    is_delete boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    unique_id text,
    from_unique_id text,
    to_unique_id text
);
    DROP TABLE public.inbox;
       public         heap    postgres    false            ?            1259    123425    inbox_id_seq    SEQUENCE     u   CREATE SEQUENCE public.inbox_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.inbox_id_seq;
       public          postgres    false    221            ?           0    0    inbox_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.inbox_id_seq OWNED BY public.inbox.id;
          public          postgres    false    220            ?            1259    123497    login_history    TABLE     ?   CREATE TABLE public.login_history (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    unique_id text,
    user_unique_id text,
    type bigint DEFAULT 1,
    device_name text
);
 !   DROP TABLE public.login_history;
       public         heap    postgres    false            ?            1259    123495    login_history_id_seq    SEQUENCE     }   CREATE SEQUENCE public.login_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.login_history_id_seq;
       public          postgres    false    233            ?           0    0    login_history_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.login_history_id_seq OWNED BY public.login_history.id;
          public          postgres    false    232            ?            1259    123404 
   phone_call    TABLE     w  CREATE TABLE public.phone_call (
    id bigint NOT NULL,
    phone_number text,
    contact_name text,
    call_direction text,
    call_time text,
    call_duration text,
    unique_id text,
    status text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_unique_id text,
    call_state text DEFAULT 0,
    call_date date
);
    DROP TABLE public.phone_call;
       public         heap    postgres    false            ?            1259    123402    phone_call_id_seq    SEQUENCE     z   CREATE SEQUENCE public.phone_call_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.phone_call_id_seq;
       public          postgres    false    217                        0    0    phone_call_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.phone_call_id_seq OWNED BY public.phone_call.id;
          public          postgres    false    216            ?            1259    123475    role_permission    TABLE       CREATE TABLE public.role_permission (
    id bigint NOT NULL,
    permission text,
    can_read boolean,
    can_write boolean,
    can_edit boolean,
    can_delete boolean,
    user_role bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
 #   DROP TABLE public.role_permission;
       public         heap    postgres    false            ?            1259    123473    role_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.role_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.role_permission_id_seq;
       public          postgres    false    229                       0    0    role_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.role_permission_id_seq OWNED BY public.role_permission.id;
          public          postgres    false    228            ?            1259    123486 
   sell_point    TABLE       CREATE TABLE public.sell_point (
    id bigint NOT NULL,
    name text,
    address text,
    phone_number text,
    latitude text,
    longitude text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    unique_id text
);
    DROP TABLE public.sell_point;
       public         heap    postgres    false                       0    0    TABLE sell_point    COMMENT     9   COMMENT ON TABLE public.sell_point IS 'Satuw nokatlary';
          public          postgres    false    231            ?            1259    123484    sell_point_id_seq    SEQUENCE     z   CREATE SEQUENCE public.sell_point_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sell_point_id_seq;
       public          postgres    false    231                       0    0    sell_point_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sell_point_id_seq OWNED BY public.sell_point.id;
          public          postgres    false    230            ?            1259    123371    speak_accent    TABLE     ?   CREATE TABLE public.speak_accent (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
     DROP TABLE public.speak_accent;
       public         heap    postgres    false                       0    0    TABLE speak_accent    COMMENT     J   COMMENT ON TABLE public.speak_accent IS 'Nähili äheňde gürleşýär';
          public          postgres    false    211            ?            1259    123369    speak_accent_id_seq    SEQUENCE     |   CREATE SEQUENCE public.speak_accent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.speak_accent_id_seq;
       public          postgres    false    211                       0    0    speak_accent_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.speak_accent_id_seq OWNED BY public.speak_accent.id;
          public          postgres    false    210            ?            1259    123338 
   speak_mode    TABLE     ?   CREATE TABLE public.speak_mode (
    id bigint NOT NULL,
    value text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    status bigint
);
    DROP TABLE public.speak_mode;
       public         heap    postgres    false                       0    0    TABLE speak_mode    COMMENT     <   COMMENT ON TABLE public.speak_mode IS 'Gepleýiş şekili';
          public          postgres    false    205            ?            1259    123336    speak_mode_id_seq    SEQUENCE     z   CREATE SEQUENCE public.speak_mode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.speak_mode_id_seq;
       public          postgres    false    205                       0    0    speak_mode_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.speak_mode_id_seq OWNED BY public.speak_mode.id;
          public          postgres    false    204            ?            1259    123360 
   speak_tone    TABLE     ?   CREATE TABLE public.speak_tone (
    id bigint NOT NULL,
    value text,
    status bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.speak_tone;
       public         heap    postgres    false                       0    0    TABLE speak_tone    COMMENT     :   COMMENT ON TABLE public.speak_tone IS 'Gürleýiş tony';
          public          postgres    false    209            ?            1259    123358    speak_tone_id_seq    SEQUENCE     z   CREATE SEQUENCE public.speak_tone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.speak_tone_id_seq;
       public          postgres    false    209            	           0    0    speak_tone_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.speak_tone_id_seq OWNED BY public.speak_tone.id;
          public          postgres    false    208            ?            1259    123442    users    TABLE     ?  CREATE TABLE public.users (
    id bigint NOT NULL,
    fullname text,
    username text,
    password text,
    phone_number text,
    status bigint,
    user_role bigint,
    sell_point_id bigint,
    token text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    work_start_date text,
    date_of_birthday text,
    unique_id text,
    user_number text DEFAULT 0
);
    DROP TABLE public.users;
       public         heap    postgres    false            
           0    0    TABLE users    COMMENT     ?   COMMENT ON TABLE public.users IS 'Admin, moderator, operator';
          public          postgres    false    223            ?            1259    123440    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    223                       0    0    user_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public.user_id_seq OWNED BY public.users.id;
          public          postgres    false    222            ?            1259    123464 	   user_role    TABLE     ?   CREATE TABLE public.user_role (
    id bigint NOT NULL,
    name text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            ?            1259    123462    user_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_role_id_seq;
       public          postgres    false    227                       0    0    user_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_role_id_seq OWNED BY public.user_role.id;
          public          postgres    false    226            ?           2604    123418 
   courier id    DEFAULT     h   ALTER TABLE ONLY public.courier ALTER COLUMN id SET DEFAULT nextval('public.courier_id_seq'::regclass);
 9   ALTER TABLE public.courier ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    123319    customer id    DEFAULT     l   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public."customer_ID_seq"'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?           2604    123330    customer_interested_product id    DEFAULT     ?   ALTER TABLE ONLY public.customer_interested_product ALTER COLUMN id SET DEFAULT nextval('public.customer_interested_product_id_seq'::regclass);
 M   ALTER TABLE public.customer_interested_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            ?           2604    123508    customer_order id    DEFAULT     v   ALTER TABLE ONLY public.customer_order ALTER COLUMN id SET DEFAULT nextval('public.customer_order_id_seq'::regclass);
 @   ALTER TABLE public.customer_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            ?           2604    123561 !   customer_order_address_history id    DEFAULT     ?   ALTER TABLE ONLY public.customer_order_address_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_address_history_id_seq'::regclass);
 P   ALTER TABLE public.customer_order_address_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            ?           2604    123550 !   customer_order_courier_history id    DEFAULT     ?   ALTER TABLE ONLY public.customer_order_courier_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_courier_history_id_seq'::regclass);
 P   ALTER TABLE public.customer_order_courier_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            ?           2604    123572    customer_order_date_history id    DEFAULT     ?   ALTER TABLE ONLY public.customer_order_date_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_date_history_id_seq'::regclass);
 M   ALTER TABLE public.customer_order_date_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            ?           2604    123594     customer_order_delivery_price id    DEFAULT     ?   ALTER TABLE ONLY public.customer_order_delivery_price ALTER COLUMN id SET DEFAULT nextval('public.customer_order_delivery_price_id_seq'::regclass);
 O   ALTER TABLE public.customer_order_delivery_price ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            ?           2604    123606 "   customer_order_location_history id    DEFAULT     ?   ALTER TABLE ONLY public.customer_order_location_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_location_history_id_seq'::regclass);
 Q   ALTER TABLE public.customer_order_location_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            ?           2604    123523    customer_order_product id    DEFAULT     ?   ALTER TABLE ONLY public.customer_order_product ALTER COLUMN id SET DEFAULT nextval('public.customer_order_product_id_seq'::regclass);
 H   ALTER TABLE public.customer_order_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            ?           2604    123538 (   customer_order_product_status_history id    DEFAULT     ?   ALTER TABLE ONLY public.customer_order_product_status_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_product_status_history_id_seq'::regclass);
 W   ALTER TABLE public.customer_order_product_status_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            ?           2604    123583     customer_order_status_history id    DEFAULT     ?   ALTER TABLE ONLY public.customer_order_status_history ALTER COLUMN id SET DEFAULT nextval('public.customer_order_status_history_id_seq'::regclass);
 O   ALTER TABLE public.customer_order_status_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            ?           2604    123352    customer_status id    DEFAULT     x   ALTER TABLE ONLY public.customer_status ALTER COLUMN id SET DEFAULT nextval('public.customer_status_id_seq'::regclass);
 A   ALTER TABLE public.customer_status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            ?           2604    123456    fcm_token id    DEFAULT     l   ALTER TABLE ONLY public.fcm_token ALTER COLUMN id SET DEFAULT nextval('public.fcm_token_id_seq'::regclass);
 ;   ALTER TABLE public.fcm_token ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ?           2604    123396 
   find_us id    DEFAULT     h   ALTER TABLE ONLY public.find_us ALTER COLUMN id SET DEFAULT nextval('public.find_us_id_seq'::regclass);
 9   ALTER TABLE public.find_us ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    123385    focus_word id    DEFAULT     n   ALTER TABLE ONLY public.focus_word ALTER COLUMN id SET DEFAULT nextval('public.focus_word_id_seq'::regclass);
 <   ALTER TABLE public.focus_word ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            ?           2604    123430    inbox id    DEFAULT     d   ALTER TABLE ONLY public.inbox ALTER COLUMN id SET DEFAULT nextval('public.inbox_id_seq'::regclass);
 7   ALTER TABLE public.inbox ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            ?           2604    123500    login_history id    DEFAULT     t   ALTER TABLE ONLY public.login_history ALTER COLUMN id SET DEFAULT nextval('public.login_history_id_seq'::regclass);
 ?   ALTER TABLE public.login_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            ?           2604    123407    phone_call id    DEFAULT     n   ALTER TABLE ONLY public.phone_call ALTER COLUMN id SET DEFAULT nextval('public.phone_call_id_seq'::regclass);
 <   ALTER TABLE public.phone_call ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    123478    role_permission id    DEFAULT     x   ALTER TABLE ONLY public.role_permission ALTER COLUMN id SET DEFAULT nextval('public.role_permission_id_seq'::regclass);
 A   ALTER TABLE public.role_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            ?           2604    123489    sell_point id    DEFAULT     n   ALTER TABLE ONLY public.sell_point ALTER COLUMN id SET DEFAULT nextval('public.sell_point_id_seq'::regclass);
 <   ALTER TABLE public.sell_point ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            ?           2604    123374    speak_accent id    DEFAULT     r   ALTER TABLE ONLY public.speak_accent ALTER COLUMN id SET DEFAULT nextval('public.speak_accent_id_seq'::regclass);
 >   ALTER TABLE public.speak_accent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ?           2604    123341    speak_mode id    DEFAULT     n   ALTER TABLE ONLY public.speak_mode ALTER COLUMN id SET DEFAULT nextval('public.speak_mode_id_seq'::regclass);
 <   ALTER TABLE public.speak_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            ?           2604    123363    speak_tone id    DEFAULT     n   ALTER TABLE ONLY public.speak_tone ALTER COLUMN id SET DEFAULT nextval('public.speak_tone_id_seq'::regclass);
 <   ALTER TABLE public.speak_tone ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    123467    user_role id    DEFAULT     l   ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);
 ;   ALTER TABLE public.user_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            ?           2604    123445    users id    DEFAULT     c   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ?          0    123415    courier 
   TABLE DATA           ?   COPY public.courier (id, fullname, username, password, phone_number, status, created_at, updated_at, user_role, date_of_birthday, work_start_date, sell_point_id, unique_id) FROM stdin;
    public          postgres    false    219   ??       ?          0    123316    customer 
   TABLE DATA           ?   COPY public.customer (id, fullname, phone_number, question_mode, find_us, address_home, address_work, information, created_at, updated_at, unique_id, operator_unique_id, speak_mode, status, speak_tone, speak_accent, focus_word) FROM stdin;
    public          postgres    false    201   J?       ?          0    123327    customer_interested_product 
   TABLE DATA           ?   COPY public.customer_interested_product (id, interested_product_name, interested_product_size, interested_product_color, status, created_at, updated_at, unique_id, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    203   ??       ?          0    123505    customer_order 
   TABLE DATA           ?   COPY public.customer_order (id, unique_id, is_express, created_at, updated_at, additional_information, customer_unique_id, operator_unique_id) FROM stdin;
    public          postgres    false    235   ??       ?          0    123558    customer_order_address_history 
   TABLE DATA           ?   COPY public.customer_order_address_history (id, customer_order_unique_id, address, user_unique_id, created_at, updated_at, reason) FROM stdin;
    public          postgres    false    243   ??       ?          0    123547    customer_order_courier_history 
   TABLE DATA           ?   COPY public.customer_order_courier_history (id, customer_order_unique_id, courier_unique_id, operator_unique_id, created_at, updated_at, reason) FROM stdin;
    public          postgres    false    241   ~?       ?          0    123569    customer_order_date_history 
   TABLE DATA           ?   COPY public.customer_order_date_history (id, customer_order_unique_id, order_date, order_time, user_unique_id, created_at, updated_at, reason) FROM stdin;
    public          postgres    false    245   2?       ?          0    123591    customer_order_delivery_price 
   TABLE DATA           ?   COPY public.customer_order_delivery_price (id, customer_order_unique_id, user_unique_id, delivery_price, reason, created_at, updated_at) FROM stdin;
    public          postgres    false    249   ??       ?          0    123603    customer_order_location_history 
   TABLE DATA           ?   COPY public.customer_order_location_history (id, customer_order_unique_id, user_unique_id, latitude, longitude, reason, created_at, updated_at) FROM stdin;
    public          postgres    false    251   A?       ?          0    123520    customer_order_product 
   TABLE DATA           5  COPY public.customer_order_product (id, customer_order_unique_id, product_name, product_brand, product_model, product_artikul_code, product_debt_price, product_cash_price, product_discount, product_size, product_color, product_count, unique_id, created_at, updated_at, reason, operator_unique_id) FROM stdin;
    public          postgres    false    237   ^?       ?          0    123535 %   customer_order_product_status_history 
   TABLE DATA           ?   COPY public.customer_order_product_status_history (id, customer_order_product_unique_id, status, user_unique_id, created_at, updated_at, reason) FROM stdin;
    public          postgres    false    239   ?       ?          0    123580    customer_order_status_history 
   TABLE DATA           ?   COPY public.customer_order_status_history (id, customer_order_unique_id, status, reason, user_unique_id, created_at, updated_at) FROM stdin;
    public          postgres    false    247   	?       ?          0    123349    customer_status 
   TABLE DATA           T   COPY public.customer_status (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    207   ??       ?          0    123453 	   fcm_token 
   TABLE DATA           a   COPY public.fcm_token (id, token, user_role, created_at, updated_at, user_unique_id) FROM stdin;
    public          postgres    false    225   t?       ?          0    123393    find_us 
   TABLE DATA           L   COPY public.find_us (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    215   P      ?          0    123382 
   focus_word 
   TABLE DATA           O   COPY public.focus_word (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    213   m      ?          0    123427    inbox 
   TABLE DATA           ?   COPY public.inbox (id, title, message, link_to_goal, is_read, is_delete, created_at, updated_at, unique_id, from_unique_id, to_unique_id) FROM stdin;
    public          postgres    false    221   "      ?          0    123497    login_history 
   TABLE DATA           q   COPY public.login_history (id, created_at, updated_at, unique_id, user_unique_id, type, device_name) FROM stdin;
    public          postgres    false    233   ?      ?          0    123404 
   phone_call 
   TABLE DATA           ?   COPY public.phone_call (id, phone_number, contact_name, call_direction, call_time, call_duration, unique_id, status, created_at, updated_at, user_unique_id, call_state, call_date) FROM stdin;
    public          postgres    false    217   _      ?          0    123475    role_permission 
   TABLE DATA           ?   COPY public.role_permission (id, permission, can_read, can_write, can_edit, can_delete, user_role, created_at, updated_at) FROM stdin;
    public          postgres    false    229   ?      ?          0    123486 
   sell_point 
   TABLE DATA           }   COPY public.sell_point (id, name, address, phone_number, latitude, longitude, created_at, updated_at, unique_id) FROM stdin;
    public          postgres    false    231   E      ?          0    123371    speak_accent 
   TABLE DATA           Q   COPY public.speak_accent (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    211   ?      ?          0    123338 
   speak_mode 
   TABLE DATA           O   COPY public.speak_mode (id, value, created_at, updated_at, status) FROM stdin;
    public          postgres    false    205   ?      ?          0    123360 
   speak_tone 
   TABLE DATA           O   COPY public.speak_tone (id, value, status, created_at, updated_at) FROM stdin;
    public          postgres    false    209   0      ?          0    123464 	   user_role 
   TABLE DATA           E   COPY public.user_role (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    227   ?      ?          0    123442    users 
   TABLE DATA           ?   COPY public.users (id, fullname, username, password, phone_number, status, user_role, sell_point_id, token, created_at, updated_at, work_start_date, date_of_birthday, unique_id, user_number) FROM stdin;
    public          postgres    false    223   V                 0    0    courier_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.courier_id_seq', 1, true);
          public          postgres    false    218                       0    0    customer_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."customer_ID_seq"', 2, true);
          public          postgres    false    200                       0    0 "   customer_interested_product_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.customer_interested_product_id_seq', 7, true);
          public          postgres    false    202                       0    0 %   customer_order_address_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_address_history_id_seq', 1, true);
          public          postgres    false    242                       0    0 %   customer_order_courier_history_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.customer_order_courier_history_id_seq', 1, true);
          public          postgres    false    240                       0    0 "   customer_order_date_history_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.customer_order_date_history_id_seq', 1, true);
          public          postgres    false    244                       0    0 $   customer_order_delivery_price_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.customer_order_delivery_price_id_seq', 1, true);
          public          postgres    false    248                       0    0    customer_order_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.customer_order_id_seq', 1, true);
          public          postgres    false    234                       0    0 &   customer_order_location_history_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.customer_order_location_history_id_seq', 1, false);
          public          postgres    false    250                       0    0    customer_order_product_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.customer_order_product_id_seq', 2, true);
          public          postgres    false    236                       0    0 ,   customer_order_product_status_history_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.customer_order_product_status_history_id_seq', 2, true);
          public          postgres    false    238                       0    0 $   customer_order_status_history_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.customer_order_status_history_id_seq', 2, true);
          public          postgres    false    246                       0    0    customer_status_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.customer_status_id_seq', 4, true);
          public          postgres    false    206                       0    0    fcm_token_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.fcm_token_id_seq', 13, true);
          public          postgres    false    224                       0    0    find_us_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.find_us_id_seq', 1, false);
          public          postgres    false    214                       0    0    focus_word_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.focus_word_id_seq', 5, true);
          public          postgres    false    212                       0    0    inbox_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.inbox_id_seq', 1, false);
          public          postgres    false    220                       0    0    login_history_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.login_history_id_seq', 12, true);
          public          postgres    false    232                       0    0    phone_call_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.phone_call_id_seq', 71, true);
          public          postgres    false    216                        0    0    role_permission_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.role_permission_id_seq', 7, true);
          public          postgres    false    228            !           0    0    sell_point_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sell_point_id_seq', 1, true);
          public          postgres    false    230            "           0    0    speak_accent_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.speak_accent_id_seq', 5, true);
          public          postgres    false    210            #           0    0    speak_mode_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_mode_id_seq', 3, true);
          public          postgres    false    204            $           0    0    speak_tone_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.speak_tone_id_seq', 3, true);
          public          postgres    false    208            %           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
          public          postgres    false    222            &           0    0    user_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_role_id_seq', 5, true);
          public          postgres    false    226            
           2606    123423    courier courier_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courier
    ADD CONSTRAINT courier_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courier DROP CONSTRAINT courier_pkey;
       public            postgres    false    219            ?           2606    123335 <   customer_interested_product customer_interested_product_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.customer_interested_product
    ADD CONSTRAINT customer_interested_product_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.customer_interested_product DROP CONSTRAINT customer_interested_product_pkey;
       public            postgres    false    203            "           2606    123566 B   customer_order_address_history customer_order_address_history_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.customer_order_address_history
    ADD CONSTRAINT customer_order_address_history_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.customer_order_address_history DROP CONSTRAINT customer_order_address_history_pkey;
       public            postgres    false    243                        2606    123555 B   customer_order_courier_history customer_order_courier_history_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.customer_order_courier_history
    ADD CONSTRAINT customer_order_courier_history_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.customer_order_courier_history DROP CONSTRAINT customer_order_courier_history_pkey;
       public            postgres    false    241            $           2606    123577 <   customer_order_date_history customer_order_date_history_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.customer_order_date_history
    ADD CONSTRAINT customer_order_date_history_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.customer_order_date_history DROP CONSTRAINT customer_order_date_history_pkey;
       public            postgres    false    245            (           2606    123600 @   customer_order_delivery_price customer_order_delivery_price_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.customer_order_delivery_price
    ADD CONSTRAINT customer_order_delivery_price_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.customer_order_delivery_price DROP CONSTRAINT customer_order_delivery_price_pkey;
       public            postgres    false    249            *           2606    123611 D   customer_order_location_history customer_order_location_history_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.customer_order_location_history
    ADD CONSTRAINT customer_order_location_history_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.customer_order_location_history DROP CONSTRAINT customer_order_location_history_pkey;
       public            postgres    false    251                       2606    123514 "   customer_order customer_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.customer_order DROP CONSTRAINT customer_order_pkey;
       public            postgres    false    235                       2606    123532 2   customer_order_product customer_order_product_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.customer_order_product
    ADD CONSTRAINT customer_order_product_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.customer_order_product DROP CONSTRAINT customer_order_product_pkey;
       public            postgres    false    237                       2606    123543 P   customer_order_product_status_history customer_order_product_status_history_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.customer_order_product_status_history
    ADD CONSTRAINT customer_order_product_status_history_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.customer_order_product_status_history DROP CONSTRAINT customer_order_product_status_history_pkey;
       public            postgres    false    239            &           2606    123588 @   customer_order_status_history customer_order_status_history_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.customer_order_status_history
    ADD CONSTRAINT customer_order_status_history_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.customer_order_status_history DROP CONSTRAINT customer_order_status_history_pkey;
       public            postgres    false    247            ?           2606    123324    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    201            ?           2606    123357 $   customer_status customer_status_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.customer_status
    ADD CONSTRAINT customer_status_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.customer_status DROP CONSTRAINT customer_status_pkey;
       public            postgres    false    207                       2606    123461    fcm_token fcm_token_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.fcm_token
    ADD CONSTRAINT fcm_token_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.fcm_token DROP CONSTRAINT fcm_token_pkey;
       public            postgres    false    225                       2606    123401    find_us find_us_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.find_us
    ADD CONSTRAINT find_us_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.find_us DROP CONSTRAINT find_us_pkey;
       public            postgres    false    215                       2606    123390    focus_word focus_word_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.focus_word
    ADD CONSTRAINT focus_word_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.focus_word DROP CONSTRAINT focus_word_pkey;
       public            postgres    false    213                       2606    123439    inbox inbox_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.inbox
    ADD CONSTRAINT inbox_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.inbox DROP CONSTRAINT inbox_pkey;
       public            postgres    false    221                       2606    123502     login_history login_history_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.login_history
    ADD CONSTRAINT login_history_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.login_history DROP CONSTRAINT login_history_pkey;
       public            postgres    false    233                       2606    123412    phone_call phone_call_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.phone_call
    ADD CONSTRAINT phone_call_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.phone_call DROP CONSTRAINT phone_call_pkey;
       public            postgres    false    217                       2606    123483 $   role_permission role_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.role_permission
    ADD CONSTRAINT role_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.role_permission DROP CONSTRAINT role_permission_pkey;
       public            postgres    false    229                       2606    123494    sell_point sell_point_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sell_point
    ADD CONSTRAINT sell_point_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sell_point DROP CONSTRAINT sell_point_pkey;
       public            postgres    false    231                       2606    123379    speak_accent speak_accent_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.speak_accent
    ADD CONSTRAINT speak_accent_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.speak_accent DROP CONSTRAINT speak_accent_pkey;
       public            postgres    false    211            ?           2606    123346    speak_mode speak_mode_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.speak_mode
    ADD CONSTRAINT speak_mode_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.speak_mode DROP CONSTRAINT speak_mode_pkey;
       public            postgres    false    205                        2606    123368    speak_tone speak_tone_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.speak_tone
    ADD CONSTRAINT speak_tone_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.speak_tone DROP CONSTRAINT speak_tone_pkey;
       public            postgres    false    209                       2606    123450    users user_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    223                       2606    123472    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    227            ?   ?   x?}L9
?0??W??c????Ҧ1H+!????#B??d`?\??Gw]^??<??SvFL???=?=??0??q??o
??5???Qh???iMYלm̥???T?,??z-Zr?{???{?7g?}?0?      ?   8  x???=O?@??z?)???vgf?ܑH'??t?x?k?8r"E????NW??)?O???? }??Q?L?Z.?*%?( ?z?E??E????Uu8??_d???0^볜&ًz???q?z??eһ????}YD0?j??[??M?*?-?R?P?s?D?LG?՘
Q?@5s??-????? ?FS8??R??R???}K?@H????mP?ʺ狾?i???!??E??,??M?_?'?1?1?E??ܿĿ7?)O??)???pp??	\gK?L\???Z?]FHٽ????$?T??.v??w????????      ?   U  x????n\G?룧?p??\??Ӹ0?p??Ù?d?2??????pcEls?9???oHǛ?0??C?x?_??????-?s???SU?#?]g	??,е'x]l??e?u??????m?.d??9?????[&??R@?t?8E???D???U?uu-0h7??q??????????????!?۽???>?yz????O??7???qqĘPc(I$t70*??B?? {?????'?M?͘??<t?kC???????!?3???U?K?(sU?]?Ϳ?{?`??mF?A0w`?Հ?$?f???X??7????
5X-MHq|T?2i??ޮR??Q????%s?1?࢚???4?????????龞??(?r??<S鹲??a?Y?z????|?	?;?|Ԛ̕??ڴ?x?>???o?	M??/O߿???|&<?u.?R?j??5쒚Qg??i	X:"lF????ڹ/u[>e?VG??˵?????~j???_?lf"????	#7W?,c̤?%D1l?\pZt%5/H!?2?>???r{%???N?\??$?E??f?1.cLS|ʍ???m????s????^#??R??뵩??nnn~ ?㭩      ?   ?   x?}??m1??*?+??<.Ձ{p???N?,?:pJԆ#A}?*p?o??!u??[b??l????&?-"??mO??	<	A)?JS+1d?i?#3????=Ӟ?.(&????_w????p6W?z?????;?χ{KI&&?Fw|>^??????Ml77]7y?̧? dڥ1t|??sl"??? 	???m?P?n%?(?#Ԯh>IV??r?????\?5.????c7???Tl      ?   ?   x?}???0@?s2Epe;???+pIҴ?q(??	??O??m????5CL????{??X??H??	"?Z?!?U{?T???????>?|?Wq???w?c??UF???cd??:Q^??9??ɿ??????)      ?   ?   x?}????0C??+?*$?N??G?.u,?u?????p?$??4?Ѷ?
?b?
???ae]???3???A)ĐJ?Z????L??mw=m?[??O??%rjܣ5k???l?ˣNm????K༶?????? ˅?m?*???k???{q????q???ز>/      ?   |   x?}???0ki??>R?j?4?,K?Y??????ى??a)?B??,*?94??̍?n(??3(@A?A(???????d?q?U٭k???k6????????8??RTْؖ?9>O?ټ????'?      ?   s   x?}???  ?3T???!?Z|?0?qi?? ?}???M?ߣ?W(?4|9?xb ???v$($Ġq?ӓΖ?3?w?5C?m	?	Sbd?????3??6SS??+[????$0      ?      x?????? ? ?      ?     x????JCA??s??H?u.????[73grzZԂV???.q?BB???G?L4?? ?԰C1?euI?	?!?eV?pD%!h????-Y?Z?????ǋ???a?w?~??C????|????QK?1KS?yw?@?ِ??!???_Pj%/?F?\%?%M?
??I16X?uҪ5s^?̀8_P\3???????)?{ߞ???m?9??????I?w=?W??QLA?ޡwI??&?^L?9?T?Y?\;CLӸ<U?????ˈF%???b?W?0|)C??      ?   z   x?͎??0c?
7p̽???8ABHC?C?o* v?;?,L9??ы?9??K	No?.?'ժRn??Y?)??Aj%?=?????su3?>?s?Qs???????Q?_?+?R$???d??s??Z??MJt      ?   ?   x?????0c?
7p??;}??	!L <v??M8q?;?????<?5? r??^?Ԫ52?|????gr?B?ȗ%??$S6??՘m?????E??B?0@?&a???A?????s?ڗGo?U???\書q?*Ћd?(jN5      ?   ?   x?}?A
? D?z
/ѯ?4g???_?6???t?%ڕ?^;%0?3??d??.]?F6???1??D ?hi?l?-??Fk-??˽?hS9??Ӄ?R???CT??n?Y??	??N,?l3;m~????W??aQM??Ǆ??qt?]????0?<Zo?ֹ???oC??P;?9???RYb      ?   ?  x?Օَ?X????????͆;evbqH'?AA???sNR]?6?˾?????k??`'???
yR2L?c\a?U?muv@?h?Oȋ/b??????I?qG[?c?Q??~?D̋??HE???8??8DB{???w?e??;+.??	G???;?P:(?ط??j???N?"?p*yI?????ܗ?K]k?0þ.???r?Y??+Y??????!?=q2 ʵ?^?}????˻?2?&?.??
???mCg?MvIC?Ŷߞ??KZ?=i????? ???? ~?^*s?7e?r?g+? ??Ke?	#}S?󋻿8}pK??)????3??^O???<???g??C??e??\?^?dm?J???$??a%o*s?1Hé?Z=g?^^??~??????[C??f%]ڃLl? ?k?ܧ??w???LbυSu??LE????8
?{?^*??6????P[?|??18?A????s)[????`????'?"D?? ???m???'t?MK???e??P???~X?j?^??M???p^3?K?ؿM?????3S????ʓ?[Rt?$?<???tsO?z|q??^????	LXδ`?Ǳ6w%E??r??2t?d?<V?EMS?0??)??r??o?DD?v??o?Ke??!??O~̳@?;???p????9sg0D?V'پ?zB?J1+??:?????)?c@i???lu?Qb?h???'UW|??v1$&'?\?A5.?CC???<?m??????F?J?˚??F?`?mN??۔N,k?????LO?#??`?D????-z???P?uP???tW?d(??L?b&#??4?'??e|?og_?k?V??4v?k!?Ҭ???
?(o-y?~??DA??kg<S???mMU-}(?:;C)f??r?????+?ۇ??P??[]X_????>܀?#?"??C??r&?????-z???????????7??aW      ?      x?????? ? ?      ?   ?   x?}̽?0@???):?@m?폲???.$4? ?M&^L'????Ū?2?P"????qe}/??X???U>?Z$a???cbe?ąO?4??pN???	4+'???Q???V??Om?%:0?l??rm}??g??m???m?????}?z?FwB? ?fiUy      ?      x?????? ? ?      ?     x???Kn$GD??)t6?K2ه?	f?̏?Y؀7s?a?53?Z@/??Wd$=12??P?+??n?Ld???ӷ??N??#:K??:?	FH?Y	]A?????b?v$????~????????߄??>?ӷ???#???~?F??H:?G?w?z?b?\6??hh[?c??? ?6???[t?hcp?ٙ?#??????????B?.?zgDz$y?n<? O?5Z
???͎5?#?(???Е;D6?ɇ?c??ԟ(????vk??#??\,?`gI9x??S??
??\|??x??6o??:?E?d[??_(X??7??h??l:???ٽ Ot?)?q֛?<??? ??TC?[/????26?3C>???? z?n?;s<?R?#?2?[/_j??G???ї9???N?8|8(??$-/[?=????l??n?;A!?s??o?M"I?????7????r;????+?U?@3???jA?e]?s??LW| ??l??B?\#?7????4??-?>OMU6??2?x	?w?^V?F6?????6?????j?.{?0~?h~?????H:ݫŊ[??|T?4??????^>??*??)??Z???v*JN?1??$???ꐚ2⛑??#iHv???*w?&?)L??I?"0?Yd??*o?u?h?3?u-V;??)?{?1??ߋ㦌U?$????Y?6????2z%???V?r?vyW?+P#?r?N????????i??~?p\Q^?X?z}?>??x?U?k??Uʓ??jg??ݧ???GJk?ѩ??V???!??!???_n????????      ?      x??[ێc9?|???z_?E????싮?3????:ә?e?mL?0??e?0?`???????$?s?}??3ə?G????5???,S??Ѥ?<z?d??ڞ?&EN??ȭ??$????Na?UhM?k֏??bJ!JH??u?S???.?9ꉓFK?{??߿???????oN???q??R|	J??~@5?????G?Dza
??[*y??lX?ZC??v?6?2ڒ?bՅ????}??X2?ǔ?Trd+o`?O?92??C???mΑ??\1m?*6)?1?H5?i!ۣ?M?vнu??h? ^{h?}?b?.????ﯝ?)K???SM?XCJ??+}????r?=L????h{?V;??F??T??XAĸ??؞{???????sj[?#?/???t??z??*L??>+??R?BsY#5?m??cfY(?e???9VvؖQSs?`?9?I?+ս??m?'????Dg??X??H??+=??rN???u??ք N$g?	=?bB????eC?K_@73jn,m1R??>gܩ?v???)U???Jj??*????Ϝ1Te??z?)dn?c?x?=?*+L?4?F@
8?'2?3pe????;??lt?????RI?̊?~??e?1>???S?????1??B??@$??ͼ?Z֜2??Ez?=h???\?n8?+|?
*?9??R???M??Wh?XR?????\?'N:?2IB??cj?v?????RМt"P`?? ?͡E ?ແp?	??$???;ɉ?J?gK?KJ?u??
.kiDtV#??ZW??`@4ވ[??{x;!C????C+-db?????'ԓ?#P?K?A?KP??"??w????ڈ%?j??=n&d?6?S-l???~HLBm??:3T?= ???	'E?-?e?A酒?R?d?	?&??C???cZE?
?F'?	jL	?n????ME??E??v?b/Dϖ^??_?	???yD=v)????<A=t.#$?C? ,???????G??4"??F&.????N'F8$?[z??????W?}??)??xd??K??B??A?'oXZ?Zp?8 0P[?w?3?b^zY\??В???U?jFxu+?*?[zC?????~??OG???<y?F?C?j?sZ??lnd??t???&??~??!s?LQe:U?k~??g?T_??̈???UF;?d`?Q25??VoC???l9M????BCLE;k??޸8Vd0?=B?;??ޚ?????????~fJ?(?#/??еҬ*T?a????H?.h$????@?Cj???ݣ????JDD?-??*?????u??^-lA2!ӣu??P?)?Y?C8$??UQ??Z?$?#:=F????#T?Ko?g[???>=a9????/???^???`????Il!?\D????)p?`?&?? ?I?ƾ??؈O?K??=?????ќ ?܁?????57k???;$??b(j^?7r*Pi?6^[??D??$E:m????:6?;_?)Z??g+?[ ??(Ƅ,???
??)????? ?le,AЁ?\?6_????uA???H?F'???;{N	?'ַJ_?@?s:?2/??XM}Ā>#?,i?T?@?j4-???CF?D??)?Щ?e8?p
??$???d?5??x?????;J<k??'?N?? ?GBPp3h<UX???Y??jp?C[m?c????vgxT???K??X߰?????EIn J\?A??M????=?2?i?0qѤm?????ڤ ??u^???в?_???!R??s?d'?7?г?W??W?j5t'װ] 
?=???l%?ưmm?????/??I?s??C?L	ڧ?f?-?	?(??zԺ?j??????N???T?-??*??J~P-??0t??'#???d?^?,???q?<"?e??=۠?????Ǩ? ϖ?@??s	ٜ?????ܽ?*	??-??[P?>?٥?6?j??\vH҃LX(?AP|?hu??????????S?Q?ӥ7?ʞ?? ؒUd?3????;????U$ls?????dK?ܰ!?k?G %#?ii??@]6B?!??????;z?v?t?T4??r?E?tmC?x?
??(??d???????=?hU?+?kn/?9????$ń???????Ыt???*aA?????=ܪϺ?y6?(R??
V??y???*?"3???Pl'T?Uz??(~*???????5',?K!???m?Ҁ???(8?6??a????_u?ڻR?e?6???_;y?Y?3T7Ko??Rj*???]P??C?????ؗ)?M4??W??Ѹ
????¢?ː??
n?я	I???????e?SBIU?:UD?!?m?P?%?|??ju?Xm%p?k?FA?$???s??KM??????RH?փ?{8&????o?Zja?uq???z? ??w??0CY>???j˧z??
P??/IK	??6#??H?A?ֳ
_l???'???ҹ> ?NbL?????;???[?bZu^??V??$(rTL??^.#?]?H@?{??n???u??? ??@A?pz ??=?@?????_5R????ϔ??&>?K?!'Pϸʒ?A???c?ˍ?4k?V?h????S?=ǵ?8??űޣ*?????X???I2?W??>|?????Z?????*}??X԰b????ǀ)???\9?򂆬?L???b*O??U}	J??0@Yu???P?????BQT???i???z+?J??)?!??eJ?--?"y@????@?-?F%י	ZM?v??o,??	.:???[T{6??eކ4C??[?!??r?"?Ƃ??y??v???2_??3?ss?d???OV???ҫ?_?_????,bՌVc>A???H!?P??
?֡??W???e????6H/Q????NJ?2???U?,?U?????i?"n fp-??m???
2f???G@??????????Bm???lI????lt??r~??Z???g??? ?f?4u??}?n???2U?IS??????u?K?geX?}r?#?hU????D!o?$:E?9???
????֠VS?c?T??Q?'?k ??y???4?)mQo??N">qND????{?"??f0?[???(rTT?rg??X?5?&??#xb?.??t?Z4?į?Z,x??QE?,???Qg?\T8(Z???:?|??>???O7a~?ʪ%O??'?????2?y?w`VA^??r?A??5??@}????Ag?*)J??? (B??>?G??ߨ*?0K??????*D???2Rf?Vܲ?|q???l??&u=?)9?5?????g?JWT ???ߡԁ&UT?b?r?B9#?=q????U?e-???`???X?a??,S?????&U?:CB??&???????@}??v
҉מ?*?}?6??O???8["7??"?A??~??-??@>???2?U~?~?K??I%=E?͝=?4?????ǘxs+???6}x>?oR?
b??W??m.?諡?????B'?????נrze=???????c?EA??????')p?????09??ۯ???4)??^??d??>????	o??4=?Lq?[???{K#?Lt???W?????B?G?jȽTP?0??6:?(??+?I'pJ?p???j???ͳ????????gO??0??????????)???jN??x?@cV*U?x??????=d8dZ???????S??bu1T???? ?ޑ~??|ߞ҈|??S???gq?|?x???!A9?[NG?????X?e????l??d'??T?I?Z?EU??}???j?u-?pK??<AeCɤC#&p????{?QW^???
L?rJB"?a??T?,rGr????=J|I?r#????F??~Z?}?7?u??????߅??Zh?c?e??'?0a???Gڨ?e`???]????1;X?????(?? L??/?O????????g???h?[?ץ?O??h???ۢO'??Nۯ?m??r?n?M6F8?,U?-?e??<??>?*?XgY?|????rL??U?d?m??   ?,곳?֭&?D?aEE8a=??(?S1???Wހt'?"Z???R?73???6îK?`?G011B??Y?Ӳ???h??=QTEDge]]??a?`=?Ъ<0??Ko??w@??&?тƊ?b???????:?"???ћx???>?;*??+???3??H?s׻W?zR?7?a??^?P=???m??/?%(}w*T1`?b?>+?ѳ?8J??V?????G`A??y?_ ???:?FW?X?&B?a}-??~???e|???Q?O]!?u??'???q?C?r??o?JD??>?~@???H%p??????<	;A; є?Q?x"?׌n??7۞??A?ӆڙ??M?!ِ?ۯ?#=??~??uc???>??L|?/)?h?]?:??>?QU?,??*yn?]&?>?"??7?z?????5??????w?}????/
??9?~Ov?죈??廕׊V?^>!?$Qgr???R?~??:?BZ?!?W????ė$7?\??7?tt֍??I??-??????88 oW?v?>????_?M? `???ٕDw=??	??GX???>??y?B?ܷ^?ir/?a? ?_??:?Y4?_^k>????F?-<???????,y??`]O@j?'????ޱ?????ӗ?H?0?qk?o?B??o9;y??]??˽+?;?_8?Ri???g\K??ۻ?2*?GK3?	?[a?Vo?? b??]?UW?=??????? ?ۇ˵+??r<?i?[.????@g?kZ????zS?>?\꿩7???&???c???b%"Z?-???\?]?Q??? 	F/K`????????/@??.?s-?g?t??????%#T???S??׼???/???6??߅?.?O%??:???????-2?(?R????V=H?R?\??@̣l#E?_?!=zNP????,?G?˥?GKz???(ԋ???-N=&?a?{s??~T????fm?Z?/????k??
??+>?us??????P9oH???5???N?~??'?K?      ?   ?   x????
?0??s?{K۴i????j7NGU??Od??؍????@?n????M???Zj]I???ĵ?Z&????sN??a?1B???)??3Nh?!????L??H???$?S?Z?㒻?s?f?q???o??B?1?)O????-9U"t???U?X/?H??~?"? ?s?      ?   ?   x?}??
?0 ϛ??EjBv?M??Ļ ??Ib?R????Y???p9????o?f???k??5???HV???6̰????(?v?`?e?S C??Uh%????HB???Ji??gf??m6?vwl??v⢅O'~      ?   ?   x?}λ?0??ڞ?Ċ???#-???1??bB?	?? ?]*??` '??s?rȟ?F?O?Ms<j??6??L?F?F*???.??1/8?X:Q??ӵ???샟???qi?:PEN??@???$??>?? ?3j??&m????g?2??]????͇B?kj????;6??9???+W?      ?   ?   x?}?A
?0@?u?s??L2mҜ?̀!-? Z)?2.=??⽤?S??????)eV?Xۘ?!??Er?Y???Ո?~{\?????Q~#??i
?7\#??^R???.?t.??8???y?A?????:?	?kDp? ?r?<?      ?   ?   x?3?t??-%5[A#=??R?8?X!)3'5O!?𞢜ԣ??=??H?Ӑ????H??L??\????????B????????ghIb^V??lF?????2?,I?I,???~s?2Sc3<R\1z\\\ ?8?      ?   ?   x?}?1?0??>E/P+???YX*ڡC	
???J?????C??m~?D?`#??V?qbQs?P`^???Q#u??t???돉?<'?Fx??#????Ʌa?k=ڶ~'?4p*?%8)??w/??/,F6      ?     x?}??n?0???Sp????d1?䴘BK?,?d#]Bx?B{譚?f4?t_?U?n1??*Eu?o㏺?+w?Q?r,?b"????Lf?Z(??/???y???	???	????+DRz??W?gz$
XݠR??MF?YVG?/s??x:????U??Pi???׵J?C??N(W??N?_???k?#zi???q??U{?????b??????p+??/܌?Jo??I?F???{@?1!c ????wfb0o ?ļ0?H?}??\?	ב(h???4??|jw     