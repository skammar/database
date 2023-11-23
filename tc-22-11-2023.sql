--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

-- Started on 2023-11-22 12:05:47 IST

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
-- TOC entry 8 (class 2615 OID 296760)
-- Name: ct; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ct;


ALTER SCHEMA ct OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 296761)
-- Name: account_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.account_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    account_no character varying(255),
    gst_no character varying(255),
    merchant_id bigint NOT NULL,
    service_provider_id bigint NOT NULL,
    status boolean,
    vat character varying(255)
);


ALTER TABLE ct.account_detail OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 296767)
-- Name: account_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.account_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.account_detail_id_seq OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 296769)
-- Name: address; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.address (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    city_id bigint NOT NULL,
    closing_time character varying(255),
    poc_mobile character varying(255),
    country_id bigint NOT NULL,
    gstn_id character varying(255),
    latitude numeric(19,2),
    address_line1 character varying(255) NOT NULL,
    address_line2 character varying(255),
    locality character varying(255),
    loc_code character varying(255),
    location_tag_type character varying(255),
    location_tag_id bigint,
    longitude numeric(19,2),
    lsp_code character varying(255),
    merchant_id bigint NOT NULL,
    opening_time character varying(255),
    plant_type character varying(255),
    poc_name character varying(255),
    zipcode_id bigint NOT NULL,
    so_code character varying(255),
    state_id bigint NOT NULL,
    status boolean,
    time_detail jsonb,
    type_id character varying(255) NOT NULL
);


ALTER TABLE ct.address OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 296775)
-- Name: address_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.address_id_seq OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 296783)
-- Name: analytics_data_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.analytics_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.analytics_data_id_seq OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 296785)
-- Name: api_history; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.api_history (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    cart_id bigint,
    end_time timestamp without time zone,
    event_name character varying(255),
    request jsonb,
    response jsonb,
    service_name character varying(255),
    start_time timestamp without time zone,
    url character varying(255)
);


ALTER TABLE ct.api_history OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 296791)
-- Name: api_history_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.api_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.api_history_id_seq OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 296793)
-- Name: banner; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.banner (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    banner_position character varying(255),
    banner_type character varying(255),
    button_position character varying(255),
    button_status boolean,
    button_title character varying(255),
    button_url character varying(255),
    image_path character varying(255),
    sequence bigint,
    short_description character varying(255),
    status boolean,
    title character varying(255),
    title_position character varying(255)
);


ALTER TABLE ct.banner OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 296799)
-- Name: banner_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.banner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.banner_id_seq OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 296804)
-- Name: blackout_date_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.blackout_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.blackout_date_id_seq OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 296806)
-- Name: blog_detail_id_sequence; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.blog_detail_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.blog_detail_id_sequence OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 296808)
-- Name: booking_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.booking_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    actual_checkin_time timestamp without time zone,
    actual_checkout_time timestamp without time zone,
    booking_amount double precision,
    booking_code character varying(255),
    booking_date timestamp without time zone,
    booking_source character varying(255),
    booking_status character varying(255),
    cancel_booking_by_admin boolean,
    cancel_booking_by_service_provider boolean,
    cancellation_date timestamp without time zone,
    cancellation_reason character varying(255),
    card_amount double precision,
    channel character varying(255),
    checkin_checkout_qr character varying(255),
    checkin_qr character varying(255),
    checkin_time timestamp without time zone,
    checkout_qr character varying(255),
    checkout_time timestamp without time zone,
    commission_amount double precision,
    convenience_fee double precision,
    county_tax double precision,
    customer_id bigint,
    dispute_resolution_date timestamp without time zone,
    extra_booking_amt double precision,
    extra_comm_amt double precision,
    extra_county_tax double precision,
    extra_sales_tax double precision,
    extra_state_tax double precision,
    extra_total_amt double precision,
    extra_transaction_id character varying(255),
    extra_ven_county_tax double precision,
    extra_ven_sales_tax double precision,
    extra_ven_state_tax double precision,
    extra_vendor_comm double precision,
    fixed_fee double precision,
    is_checkin boolean,
    is_checkout boolean,
    is_disputed boolean,
    is_guest boolean,
    is_vendor_paid boolean,
    merchant_id bigint NOT NULL,
    offer_detail_id bigint,
    paid_by character varying(255),
    paid_on timestamp without time zone,
    parking_category_id bigint,
    parking_location_id bigint NOT NULL,
    parking_slot_id bigint NOT NULL,
    payment_status character varying(255),
    reservation_number character varying(255),
    reward_gained double precision,
    reward_used double precision,
    sales_tax double precision,
    service_provider_id bigint NOT NULL,
    sf_fixed_fee double precision,
    state_tax double precision,
    status boolean,
    tax_amount double precision,
    total_amount double precision,
    total_discount double precision,
    unique_booking_id character varying(255),
    user_timezone character varying(255),
    vendor_commission double precision,
    vendor_county_tax double precision,
    vendor_payment_id bigint,
    vendor_sales_tax double precision,
    vendor_state_tax double precision
);


ALTER TABLE ct.booking_detail OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 296814)
-- Name: booking_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.booking_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.booking_detail_id_seq OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 296822)
-- Name: cart_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.cart_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.cart_detail_id_seq OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 296824)
-- Name: city_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.city_id_seq OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 296826)
-- Name: city; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.city (
    id bigint DEFAULT nextval('ct.city_id_seq'::regclass) NOT NULL,
    state_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_by bigint,
    updated_date timestamp with time zone,
    version integer NOT NULL,
    image_path character varying(255),
    status boolean
);


ALTER TABLE ct.city OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 296831)
-- Name: coin_offer_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.coin_offer_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.coin_offer_detail_id_seq OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 296833)
-- Name: contact_support; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.contact_support (
    id bigint NOT NULL,
    contact_type character varying(255),
    description character varying(255),
    email character varying(255) NOT NULL,
    status boolean,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    customer_id bigint
);


ALTER TABLE ct.contact_support OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 296839)
-- Name: contact_support_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.contact_support_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.contact_support_id_seq OWNER TO postgres;

--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 221
-- Name: contact_support_id_seq; Type: SEQUENCE OWNED BY; Schema: ct; Owner: postgres
--

ALTER SEQUENCE ct.contact_support_id_seq OWNED BY ct.contact_support.id;


--
-- TOC entry 222 (class 1259 OID 296841)
-- Name: country_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.country_id_seq OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 296843)
-- Name: country; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.country (
    id bigint DEFAULT nextval('ct.country_id_seq'::regclass) NOT NULL,
    code character varying(20),
    name character varying(100) NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_by bigint,
    updated_date timestamp with time zone,
    version integer NOT NULL
);


ALTER TABLE ct.country OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 296848)
-- Name: customer_account_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.customer_account_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    account_holder_name character varying(255),
    account_vault_id character varying(255),
    customer_id bigint,
    expiry_date character varying(255),
    first_six character varying(255),
    last_four character varying(255),
    payment_method character varying(255),
    status boolean,
    token_id character varying(255)
);


ALTER TABLE ct.customer_account_detail OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 296854)
-- Name: customer_account_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.customer_account_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.customer_account_detail_id_seq OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 296856)
-- Name: customer_address_location; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.customer_address_location (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    latitude character varying(255),
    longitude character varying(255),
    status boolean,
    customer_id bigint NOT NULL
);


ALTER TABLE ct.customer_address_location OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 296862)
-- Name: customer_address_location_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.customer_address_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.customer_address_location_id_seq OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 296864)
-- Name: customer_balance; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.customer_balance (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    balance double precision,
    customer_id bigint NOT NULL,
    low_balance boolean,
    merchant_id bigint NOT NULL
);


ALTER TABLE ct.customer_balance OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 296867)
-- Name: customer_balance_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.customer_balance_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    closing_amount double precision NOT NULL,
    customer_id bigint NOT NULL,
    merchant_id bigint NOT NULL,
    opening_amount double precision NOT NULL,
    status boolean NOT NULL,
    transaction_amount double precision NOT NULL,
    transaction_ref_id character varying(255) NOT NULL,
    transaction_type character varying(255) NOT NULL
);


ALTER TABLE ct.customer_balance_detail OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 296873)
-- Name: customer_balance_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.customer_balance_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.customer_balance_detail_id_seq OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 296875)
-- Name: customer_balance_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.customer_balance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.customer_balance_id_seq OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 296877)
-- Name: customer_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.customer_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    address_line_1 character varying(255),
    address_line_2 character varying(255),
    booking_cancel_count bigint,
    dob timestamp without time zone,
    email character varying(255) NOT NULL,
    gender character varying(255),
    image_url character varying(255),
    merchant_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    phone_no character varying(255),
    reward_balance double precision,
    status boolean,
    total_points double precision,
    user_id bigint NOT NULL,
    vehicle_registration_number character varying(255)
);


ALTER TABLE ct.customer_detail OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 296883)
-- Name: customer_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.customer_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.customer_detail_id_seq OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 296888)
-- Name: customer_favourite_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.customer_favourite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.customer_favourite_id_seq OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 296893)
-- Name: customer_feedback_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.customer_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.customer_feedback_id_seq OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 296895)
-- Name: district; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.district (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    name character varying(255) NOT NULL,
    state_id bigint NOT NULL
);


ALTER TABLE ct.district OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 296898)
-- Name: district_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.district_id_seq OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 296900)
-- Name: employee_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.employee_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    locality character varying(255),
    name character varying(255) NOT NULL,
    address_line_1 character varying(255) NOT NULL,
    address_line_2 character varying(255) NOT NULL,
    city character varying(255),
    country character varying(255),
    email character varying(255) NOT NULL,
    merchant_id bigint NOT NULL,
    mobile character varying(255),
    state character varying(255),
    status boolean,
    user_id bigint NOT NULL
);


ALTER TABLE ct.employee_detail OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 296906)
-- Name: employee_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.employee_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.employee_detail_id_seq OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 296908)
-- Name: enum_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.enum_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.enum_id_seq OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 296910)
-- Name: enum; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.enum (
    id bigint DEFAULT nextval('ct.enum_id_seq'::regclass) NOT NULL,
    enum_type character varying(100) NOT NULL,
    enum_code character varying(50) NOT NULL,
    enum_display_value character varying(200),
    enum_description character varying(200),
    enum_order bigint,
    created_by bigint NOT NULL,
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_by bigint,
    updated_date timestamp with time zone,
    version integer NOT NULL,
    language_code character varying(255)
);


ALTER TABLE ct.enum OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 296918)
-- Name: file_upload_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.file_upload_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    contract_id bigint,
    failed_record jsonb,
    file_path character varying(255),
    is_latest boolean,
    merchant_id bigint NOT NULL,
    module_id character varying(255),
    movement_sub_type_id character varying(255),
    movement_type_id character varying(255),
    status boolean
);


ALTER TABLE ct.file_upload_detail OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 296924)
-- Name: file_upload_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.file_upload_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.file_upload_detail_id_seq OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 296926)
-- Name: flyway_schema_history; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE ct.flyway_schema_history OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 296933)
-- Name: hours_of_operation; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.hours_of_operation (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    day_id bigint,
    day_of_week character varying(255),
    from_time timestamp without time zone,
    operational_status character varying(255),
    parking_location_id bigint,
    to_time timestamp without time zone
);


ALTER TABLE ct.hours_of_operation OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 296939)
-- Name: hours_of_operation_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.hours_of_operation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.hours_of_operation_id_seq OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 296941)
-- Name: invoice_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.invoice_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    booking_id bigint NOT NULL,
    invoice_amount double precision,
    invoice_date timestamp without time zone,
    invoice_id character varying(255),
    invoice_type character varying(255),
    is_master_invoice boolean,
    merchant_id bigint NOT NULL,
    payment_status character varying(255),
    status boolean,
    transaction_ref_id character varying(255) NOT NULL,
    transaction_type character varying(255)
);


ALTER TABLE ct.invoice_detail OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 296947)
-- Name: invoice_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.invoice_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.invoice_detail_id_seq OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 296949)
-- Name: languages; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.languages (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    languages character varying(255)
);


ALTER TABLE ct.languages OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 296952)
-- Name: languages_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.languages_id_seq OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 296954)
-- Name: merchant; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.merchant (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    code character varying(255),
    name character varying(255) NOT NULL,
    email character varying(255),
    merchant_type character varying(255) NOT NULL,
    mobile character varying(255),
    org_logo_path character varying(255),
    status boolean NOT NULL
);


ALTER TABLE ct.merchant OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 296960)
-- Name: merchant_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.merchant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.merchant_id_seq OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 296962)
-- Name: notes_detail_id_sequence; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.notes_detail_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.notes_detail_id_sequence OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 296964)
-- Name: notes_details; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.notes_details (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    booking_id bigint,
    description character varying(255),
    type character varying(255),
    user_id bigint NOT NULL
);


ALTER TABLE ct.notes_details OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 296970)
-- Name: offer_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.offer_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    city_id bigint,
    expiry_date timestamp without time zone NOT NULL,
    merchant_id bigint NOT NULL,
    offer_title character varying(255) NOT NULL,
    offer_type character varying(255) NOT NULL,
    offer_value double precision NOT NULL,
    promo_code character varying(255) NOT NULL,
    start_date timestamp without time zone NOT NULL,
    status boolean NOT NULL,
    user_category character varying(255),
    valid_in character varying(255) NOT NULL
);


ALTER TABLE ct.offer_detail OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 296976)
-- Name: over_booking; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.over_booking (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    booking_amount double precision,
    booking_date timestamp without time zone,
    booking_status character varying(255),
    card_amount double precision,
    checkin_time timestamp without time zone,
    checkout_time timestamp without time zone,
    commission_amount double precision,
    convenience_fee double precision,
    customer_id bigint,
    is_guest boolean,
    offer_detail_id bigint,
    parking_location_id bigint NOT NULL,
    parking_slot_id bigint NOT NULL,
    payment_status character varying(255),
    reward_gained double precision,
    reward_used double precision,
    service_provider_id bigint NOT NULL,
    status boolean,
    tax_amount double precision,
    total_amount double precision,
    transaction_ref_id character varying(255)
);


ALTER TABLE ct.over_booking OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 296985)
-- Name: parking_category_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.parking_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.parking_category_id_seq OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 296993)
-- Name: parking_slot_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.parking_slot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.parking_slot_id_seq OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 297007)
-- Name: parking_space_location_document_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.parking_space_location_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.parking_space_location_document_id_seq OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 297009)
-- Name: parking_space_location_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.parking_space_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.parking_space_location_id_seq OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 297017)
-- Name: parking_type_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.parking_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.parking_type_id_seq OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 297019)
-- Name: payment_method_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.payment_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.payment_method_id_seq OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 297021)
-- Name: permission_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.permission_id_seq OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 297023)
-- Name: permission; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.permission (
    id bigint DEFAULT nextval('ct.permission_id_seq'::regclass) NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    code character varying(255) NOT NULL,
    description character varying(255),
    permission_group_id bigint NOT NULL,
    is_view boolean,
    is_add boolean,
    is_update boolean,
    is_import boolean,
    is_export boolean,
    is_delete boolean
);


ALTER TABLE ct.permission OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 297030)
-- Name: permission_group_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.permission_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.permission_group_id_seq OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 297032)
-- Name: permission_group; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.permission_group (
    id bigint DEFAULT nextval('ct.permission_group_id_seq'::regclass) NOT NULL,
    name character varying(100) NOT NULL,
    merchant_type character varying(10) NOT NULL,
    description character varying(250),
    created_by bigint NOT NULL,
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_by bigint,
    updated_date timestamp with time zone,
    version integer NOT NULL,
    role_id bigint,
    code character varying(255)
);


ALTER TABLE ct.permission_group OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 297043)
-- Name: postalcode; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.postalcode (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    city_id bigint NOT NULL,
    district_id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE ct.postalcode OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 297046)
-- Name: postalcode_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.postalcode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.postalcode_id_seq OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 297054)
-- Name: referal_data_log_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.referal_data_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.referal_data_log_id_seq OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 297062)
-- Name: referal_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.referal_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.referal_detail_id_seq OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 297064)
-- Name: role; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.role (
    id bigint NOT NULL,
    merchant_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    permission_group_id bigint,
    description character varying(200),
    created_by bigint NOT NULL,
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_by bigint,
    updated_date timestamp with time zone,
    version integer NOT NULL,
    status boolean,
    code character varying(255)
);


ALTER TABLE ct.role OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 297071)
-- Name: role_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.role_id_seq OWNER TO postgres;

--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 272
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: ct; Owner: postgres
--

ALTER SEQUENCE ct.role_id_seq OWNED BY ct.role.id;


--
-- TOC entry 273 (class 1259 OID 297073)
-- Name: role_permission_mapping; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.role_permission_mapping (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    permission_id bigint NOT NULL,
    status boolean,
    role_id bigint NOT NULL
);


ALTER TABLE ct.role_permission_mapping OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 297076)
-- Name: role_permission_mapping_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.role_permission_mapping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.role_permission_mapping_id_seq OWNER TO postgres;

--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 274
-- Name: role_permission_mapping_id_seq; Type: SEQUENCE OWNED BY; Schema: ct; Owner: postgres
--

ALTER SEQUENCE ct.role_permission_mapping_id_seq OWNED BY ct.role_permission_mapping.id;


--
-- TOC entry 275 (class 1259 OID 297084)
-- Name: service_provider_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.service_provider_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.service_provider_detail_id_seq OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 297086)
-- Name: service_provider_document_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.service_provider_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.service_provider_document_id_seq OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 297094)
-- Name: service_provider_feedback_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.service_provider_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.service_provider_feedback_id_seq OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 297099)
-- Name: slab_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.slab_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.slab_detail_id_seq OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 297101)
-- Name: state_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.state_id_seq OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 297103)
-- Name: state; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.state (
    id bigint DEFAULT nextval('ct.state_id_seq'::regclass) NOT NULL,
    country_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_by bigint,
    updated_date timestamp with time zone,
    version integer NOT NULL
);


ALTER TABLE ct.state OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 297108)
-- Name: sub_booking_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.sub_booking_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.sub_booking_detail_id_seq OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 297116)
-- Name: subscribed_users_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.subscribed_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.subscribed_users_id_seq OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 297121)
-- Name: tax_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.tax_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.tax_detail_id_seq OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 297123)
-- Name: template_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.template_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    expire_in_hours character varying(255),
    labels jsonb,
    logo_url character varying(255),
    placeholder_fields jsonb,
    template_id character varying(255),
    title character varying(255)
);


ALTER TABLE ct.template_detail OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 297129)
-- Name: template_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.template_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.template_detail_id_seq OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 297131)
-- Name: user_appointment; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.user_appointment (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    address_line_1 character varying(255),
    address_line_2 character varying(255),
    all_day boolean,
    city character varying(255),
    country character varying(255),
    customer_user_id bigint NOT NULL,
    end_date_and_time date,
    event_color character varying(255),
    latitude character varying(255),
    locality character varying(255),
    longitude character varying(255),
    merchant_id bigint NOT NULL,
    service_provider_user_id bigint NOT NULL,
    stage character varying(255),
    start_date_and_time date,
    state character varying(255),
    status boolean,
    description character varying(255)
);


ALTER TABLE ct.user_appointment OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 297137)
-- Name: user_appointment_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.user_appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.user_appointment_id_seq OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 297139)
-- Name: user_location; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.user_location (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    address_line_1 character varying(255),
    address_line_2 character varying(255),
    city character varying(255),
    country character varying(255),
    latitude character varying(255),
    locality character varying(255),
    location_type character varying(255),
    longitude character varying(255),
    merchant_id bigint NOT NULL,
    state character varying(255),
    status boolean,
    user_id bigint NOT NULL,
    user_type character varying(255)
);


ALTER TABLE ct.user_location OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 297145)
-- Name: user_location_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.user_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.user_location_id_seq OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 297147)
-- Name: user_notification; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.user_notification (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    category character varying(255),
    description character varying(255),
    end_date_and_time date,
    icon character varying(255),
    merchant_id bigint NOT NULL,
    status boolean,
    user_id bigint NOT NULL,
    user_notifier_id bigint NOT NULL
);


ALTER TABLE ct.user_notification OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 297153)
-- Name: user_notification_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.user_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.user_notification_id_seq OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 297155)
-- Name: user_role_mapping_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.user_role_mapping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.user_role_mapping_id_seq OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 297157)
-- Name: user_role_mapping; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.user_role_mapping (
    id bigint DEFAULT nextval('ct.user_role_mapping_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    role_id bigint NOT NULL,
    permission_group_id bigint,
    created_by bigint NOT NULL,
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_by bigint,
    updated_date timestamp with time zone,
    version integer NOT NULL
);


ALTER TABLE ct.user_role_mapping OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 297162)
-- Name: user_so_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.user_so_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.user_so_id_seq OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 297164)
-- Name: user_t4t_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.user_t4t_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.user_t4t_id_seq OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 297166)
-- Name: user_tc; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.user_tc (
    id bigint DEFAULT nextval('ct.user_t4t_id_seq'::regclass) NOT NULL,
    merchant_id bigint NOT NULL,
    user_name character varying(100) NOT NULL,
    password character varying(250) NOT NULL,
    mobile character varying(20),
    email_verified boolean,
    created_by bigint NOT NULL,
    created_date timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_by bigint,
    updated_date timestamp with time zone,
    email character varying,
    status boolean DEFAULT true,
    realm character varying(255),
    version integer,
    prev_login_date timestamp without time zone,
    is_enabled boolean DEFAULT true,
    company_id bigint,
    fb_access_token character varying(255),
    fb_id character varying(255),
    fb_image_url character varying(255),
    g_access_token character varying(255),
    g_id character varying(255),
    g_id_token character varying(255),
    g_image_url character varying(255),
    g_server_auth_code character varying(255),
    registration_status boolean,
    terms_and_condition boolean,
    dob timestamp without time zone,
    name character varying(255),
    category_type_id character varying,
    device_id character varying(255),
    registration_completed boolean,
    one_time_password character varying(255),
    otp_expiry_time timestamp without time zone,
    service_provider_id bigint
);


ALTER TABLE ct.user_tc OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 297182)
-- Name: vehicle_category_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.vehicle_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.vehicle_category_id_seq OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 297190)
-- Name: vehicle_sub_category_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.vehicle_sub_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.vehicle_sub_category_id_seq OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 337843)
-- Name: vendor_address_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.vendor_address_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    address character varying(255),
    area character varying(255),
    city character varying(255),
    country character varying(255),
    landmark character varying(255),
    pincode character varying(255),
    state character varying(255),
    street_name character varying(255)
);


ALTER TABLE ct.vendor_address_detail OWNER TO postgres;

--
-- TOC entry 306 (class 1259 OID 337853)
-- Name: vendor_address_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.vendor_address_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.vendor_address_detail_id_seq OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 329524)
-- Name: vendor_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.vendor_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    merchant_id bigint NOT NULL,
    user_id bigint NOT NULL,
    phone_no character varying(255),
    email character varying(255),
    name character varying(255),
    status character varying(255),
    address character varying(255),
    area character varying(255),
    business_information character varying(255),
    city character varying(255),
    country character varying(255),
    is_cash boolean,
    is_cheque boolean,
    is_credit_card boolean,
    is_debit_card boolean,
    is_demand_draft boolean,
    is_haj boolean,
    is_online_booking boolean,
    is_umrah boolean,
    is_upi boolean,
    is_ziyarat boolean,
    landmark character varying(255),
    pincode character varying(255),
    state character varying(255),
    street_name character varying(255),
    year_of_establishment character varying(255),
    business_pan character varying(255),
    gst_number character varying(255),
    pan character varying(255),
    vendor_address_detail_id bigint
);


ALTER TABLE ct.vendor_detail OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 337797)
-- Name: vendor_detail_document_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.vendor_detail_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.vendor_detail_document_id_seq OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 329531)
-- Name: vendor_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.vendor_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.vendor_detail_id_seq OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 337787)
-- Name: vendor_document_detail; Type: TABLE; Schema: ct; Owner: postgres
--

CREATE TABLE ct.vendor_document_detail (
    id bigint NOT NULL,
    created_by bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_by bigint,
    updated_date timestamp without time zone,
    version integer,
    document_type character varying(255),
    file_name character varying(255),
    file_path character varying,
    source_type character varying(255),
    status boolean,
    vendor_detail_id bigint NOT NULL
);


ALTER TABLE ct.vendor_document_detail OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 297198)
-- Name: vendor_payment_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.vendor_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.vendor_payment_id_seq OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 297206)
-- Name: vendor_template_detail_id_seq; Type: SEQUENCE; Schema: ct; Owner: postgres
--

CREATE SEQUENCE ct.vendor_template_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ct.vendor_template_detail_id_seq OWNER TO postgres;

--
-- TOC entry 3146 (class 2604 OID 297208)
-- Name: contact_support id; Type: DEFAULT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.contact_support ALTER COLUMN id SET DEFAULT nextval('ct.contact_support_id_seq'::regclass);


--
-- TOC entry 3156 (class 2604 OID 297209)
-- Name: role id; Type: DEFAULT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.role ALTER COLUMN id SET DEFAULT nextval('ct.role_id_seq'::regclass);


--
-- TOC entry 3157 (class 2604 OID 297210)
-- Name: role_permission_mapping id; Type: DEFAULT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.role_permission_mapping ALTER COLUMN id SET DEFAULT nextval('ct.role_permission_mapping_id_seq'::regclass);


--
-- TOC entry 3411 (class 0 OID 296761)
-- Dependencies: 203
-- Data for Name: account_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.account_detail (id, created_by, created_date, updated_by, updated_date, version, account_no, gst_no, merchant_id, service_provider_id, status, vat) FROM stdin;
\.


--
-- TOC entry 3413 (class 0 OID 296769)
-- Dependencies: 205
-- Data for Name: address; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.address (id, created_by, created_date, updated_by, updated_date, version, city_id, closing_time, poc_mobile, country_id, gstn_id, latitude, address_line1, address_line2, locality, loc_code, location_tag_type, location_tag_id, longitude, lsp_code, merchant_id, opening_time, plant_type, poc_name, zipcode_id, so_code, state_id, status, time_detail, type_id) FROM stdin;
\.


--
-- TOC entry 3416 (class 0 OID 296785)
-- Dependencies: 208
-- Data for Name: api_history; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.api_history (id, created_by, created_date, updated_by, updated_date, version, cart_id, end_time, event_name, request, response, service_name, start_time, url) FROM stdin;
\.


--
-- TOC entry 3418 (class 0 OID 296793)
-- Dependencies: 210
-- Data for Name: banner; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.banner (id, created_by, created_date, updated_by, updated_date, version, banner_position, banner_type, button_position, button_status, button_title, button_url, image_path, sequence, short_description, status, title, title_position) FROM stdin;
\.


--
-- TOC entry 3422 (class 0 OID 296808)
-- Dependencies: 214
-- Data for Name: booking_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.booking_detail (id, created_by, created_date, updated_by, updated_date, version, actual_checkin_time, actual_checkout_time, booking_amount, booking_code, booking_date, booking_source, booking_status, cancel_booking_by_admin, cancel_booking_by_service_provider, cancellation_date, cancellation_reason, card_amount, channel, checkin_checkout_qr, checkin_qr, checkin_time, checkout_qr, checkout_time, commission_amount, convenience_fee, county_tax, customer_id, dispute_resolution_date, extra_booking_amt, extra_comm_amt, extra_county_tax, extra_sales_tax, extra_state_tax, extra_total_amt, extra_transaction_id, extra_ven_county_tax, extra_ven_sales_tax, extra_ven_state_tax, extra_vendor_comm, fixed_fee, is_checkin, is_checkout, is_disputed, is_guest, is_vendor_paid, merchant_id, offer_detail_id, paid_by, paid_on, parking_category_id, parking_location_id, parking_slot_id, payment_status, reservation_number, reward_gained, reward_used, sales_tax, service_provider_id, sf_fixed_fee, state_tax, status, tax_amount, total_amount, total_discount, unique_booking_id, user_timezone, vendor_commission, vendor_county_tax, vendor_payment_id, vendor_sales_tax, vendor_state_tax) FROM stdin;
\.


--
-- TOC entry 3426 (class 0 OID 296826)
-- Dependencies: 218
-- Data for Name: city; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.city (id, state_id, name, created_by, created_date, updated_by, updated_date, version, image_path, status) FROM stdin;
1	1	Mumbai	1	2020-07-06 11:22:18.646647+05:30	\N	\N	1	\N	\N
3	1	Nagpur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
4	1	Thane	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
5	1	Nashik	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
6	1	Kalyan-Dombivali	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
7	1	Vasai-Virar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
8	1	Solapur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
9	1	Mira-Bhayandar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
10	1	Bhiwandi	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
11	1	Amravati	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
12	1	Nanded-Waghala	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
13	1	Sangli	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
14	1	Malegaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
15	1	Akola	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
16	1	Latur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
17	1	Dhule	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
18	1	Ahmednagar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
19	1	Ichalkaranji	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
20	1	Parbhani	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
21	1	Panvel	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
22	1	Yavatmal	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
23	1	Achalpur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
24	1	Osmanabad	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
25	1	Nandurbar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
26	1	Satara	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
27	1	Wardha	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
28	1	Udgir	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
29	1	Aurangabad	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
30	1	Amalner	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
31	1	Akot	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
32	1	Pandharpur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
33	1	Shrirampur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
34	1	Parli	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
35	1	Washim	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
36	1	Ambejogai	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
37	1	Manmad	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
38	1	Ratnagiri	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
39	1	Uran Islampur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
40	1	Pusad	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
41	1	Sangamner	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
42	1	Shirpur-Warwade	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
43	1	Malkapur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
44	1	Wani	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
45	1	Lonavla	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
46	1	Talegaon Dabhade	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
47	1	Anjangaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
48	1	Umred	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
49	1	Palghar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
50	1	Shegaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
51	1	Ozar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
52	1	Phaltan	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
53	1	Yevla	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
54	1	Shahade	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
55	1	Vita	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
56	1	Umarkhed	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
57	1	Warora	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
58	1	Pachora	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
59	1	Tumsar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
60	1	Manjlegaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
61	1	Sillod	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
62	1	Arvi	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
63	1	Nandura	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
64	1	Vaijapur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
65	1	Wadgaon Road	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
66	1	Sailu	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
67	1	Murtijapur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
68	1	Tasgaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
69	1	Mehkar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
70	1	Yawal	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
71	1	Pulgaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
72	1	Nilanga	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
73	1	Wai	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
74	1	Umarga	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
75	1	Paithan	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
76	1	Rahuri	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
77	1	Nawapur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
78	1	Tuljapur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
79	1	Morshi	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
80	1	Purna	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
81	1	Satana	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
82	1	Pathri	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
83	1	Sinnar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
84	1	Uchgaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
85	1	Uran	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
86	1	Pen	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
87	1	Karjat	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
88	1	Manwath	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
89	1	Partur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
90	1	Sangole	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
91	1	Mangrulpir	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
92	1	Risod	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
93	1	Shirur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
94	1	Savner	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
95	1	Sasvad	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
96	1	Pandharkaoda	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
97	1	Talode	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
98	1	Shrigonda	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
99	1	Shirdi	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
100	1	Raver	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
101	1	Mukhed	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
103	1	VadgaonKasba	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
104	1	Tirora	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
105	1	Mahad	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
106	1	Lonar	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
107	1	Sawantwadi	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
108	1	Pathardi	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
109	1	Pauni	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
110	1	Ramtek	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
111	1	Mul	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
112	1	Soyagaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
113	1	Mangalvedhe	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
114	1	Narkhed	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
115	1	Shendurjana	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
116	1	Patur	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
117	1	Mhaswad	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
118	1	Loha	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
119	1	Nandgaon	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
120	1	Warud	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
121	3	Visakhapatnam	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
122	3	Vijayawada	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
123	3	Guntur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
124	3	Nellore	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
125	3	Kurnool	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
126	3	Rajahmundry	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
127	3	Kakinada	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
128	3	Tirupati	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
129	3	Anantapur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
130	3	Kadapa	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
131	3	Vizianagaram	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
132	3	Eluru	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
133	3	Ongole	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
134	3	Nandyal	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
135	3	Machilipatnam	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
136	3	Adoni	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
137	3	Tenali	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
138	3	Chittoor	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
139	3	Hindupur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
140	3	Proddatur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
141	3	Bhimavaram	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
142	3	Madanapalle	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
143	3	Guntakal	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
144	3	Dharmavaram	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
145	3	Gudivada	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
146	3	Srikakulam	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
147	3	Narasaraopet	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
148	3	Rajampet	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
149	3	Tadpatri	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
150	3	Tadepalligudem	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
151	3	Chilakaluripet	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
152	3	Yemmiganur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
153	3	Kadiri	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
154	3	Chirala	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
155	3	Anakapalle	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
156	3	Kavali	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
157	3	Palacole	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
158	3	Sullurpeta	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
159	3	Tanuku	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
160	3	Rayachoti	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
161	3	Srikalahasti	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
162	3	Bapatla	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
163	3	Naidupet	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
164	3	Nagari	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
165	3	Gudur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
166	3	Vinukonda	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
167	3	Narasapuram	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
168	3	Nuzvid	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
169	3	Markapur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
170	3	Ponnur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
171	3	Kandukur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
172	3	Bobbili	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
173	3	Rayadurg	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
174	3	Samalkot	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
175	3	Jaggaiahpet	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
176	3	Tuni	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
177	3	Amalapuram	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
178	3	Bheemunipatnam	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
179	3	Venkatagiri	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
180	3	Sattenapalle	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
181	3	Pithapuram	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
182	3	Palasa Kasibugga	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
183	3	Parvathipuram	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
184	3	Macherla	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
185	3	Gooty	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
186	3	Salur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
187	3	Mandapeta	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
188	3	Jammalamadugu	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
189	3	Peddapuram	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
190	3	Punganur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
191	3	Nidadavole	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
192	3	Repalle	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
194	3	Kovvur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
195	3	Tiruvuru	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
196	3	Uravakonda	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
197	3	Narsipatnam	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
198	3	Yerraguntla	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
199	3	Pedana	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
200	3	Puttur	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
201	3	Renigunta	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
202	3	Rajam	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
203	3	Srisailam Project (Right Flank Colony) Township	1	2020-07-12 16:49:06.361848+05:30	\N	\N	1	\N	\N
204	33	Lucknow	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
205	33	Kanpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
206	33	Firozabad	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
207	33	Agra	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
208	33	Meerut	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
209	33	Varanasi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
210	33	Allahabad	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
211	33	Amroha	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
212	33	Moradabad	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
213	33	Aligarh	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
214	33	Saharanpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
215	33	Noida	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
216	33	Loni	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
217	33	Jhansi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
218	33	Shahjahanpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
219	33	Rampur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
220	33	Modinagar	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
221	33	Hapur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
222	33	Etawah	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
223	33	Sambhal	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
224	33	Orai	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
225	33	Bahraich	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
226	33	Unnao	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
227	33	Rae Bareli	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
228	33	Lakhimpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
229	33	Sitapur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
230	33	Lalitpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
231	33	Pilibhit	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
232	33	Chandausi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
233	33	Hardoi 	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
234	33	Azamgarh	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
235	33	Khair	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
236	33	Sultanpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
237	33	Tanda	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
238	33	Nagina	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
239	33	Shamli	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
240	33	Najibabad	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
241	33	Shikohabad	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
242	33	Sikandrabad	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
243	33	Shahabad, Hardoi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
244	33	Pilkhuwa	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
245	33	Renukoot	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
246	33	Vrindavan	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
247	33	Ujhani	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
248	33	Laharpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
249	33	Tilhar	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
250	33	Sahaswan	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
251	33	Rath	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
252	33	Sherkot	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
253	33	Kalpi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
254	33	Tundla	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
255	33	Sandila	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
256	33	Nanpara	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
257	33	Sardhana	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
258	33	Nehtaur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
259	33	Seohara	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
260	33	Padrauna	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
261	33	Mathura	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
262	33	Thakurdwara	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
263	33	Nawabganj	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
264	33	Siana	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
265	33	Noorpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
266	33	Sikandra Rao	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
267	33	Puranpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
268	33	Rudauli	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
269	33	Thana Bhawan	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
270	33	Palia Kalan	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
271	33	Zaidpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
272	33	Nautanwa	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
273	33	Zamania	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
274	33	Shikarpur, Bulandshahr	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
275	33	Naugawan Sadat	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
276	33	Fatehpur Sikri	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
277	33	Shahabad, Rampur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
278	33	Robertsganj	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
279	33	Utraula	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
280	33	Sadabad	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
281	33	Rasra	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
282	33	Lar	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
283	33	Lal Gopalganj Nindaura	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
284	33	Sirsaganj	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
285	33	Pihani	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
286	33	Shamsabad, Agra	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
287	33	Rudrapur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
288	33	Soron	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
289	33	SUrban Agglomerationr	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
290	33	Samdhan	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
291	33	Sahjanwa	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
292	33	Rampur Maniharan	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
293	33	Sumerpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
294	33	Shahganj	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
295	33	Tulsipur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
296	33	Tirwaganj	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
297	33	PurqUrban Agglomerationzi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
298	33	Shamsabad, Farrukhabad	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
299	33	Warhapur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
300	33	Powayan	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
301	33	Sandi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
302	33	Achhnera	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
303	33	Naraura	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
304	33	Nakur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
305	33	Sahaspur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
306	33	Safipur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
307	33	Reoti	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
308	33	Sikanderpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
309	33	Saidpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
310	33	Sirsi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
311	33	Purwa	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
312	33	Parasi	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
313	33	Lalganj	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
314	33	Phulpur	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
315	33	Shishgarh	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
316	33	Sahawar	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
317	33	Samthar	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
318	33	Pukhrayan	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
319	33	Obra	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
320	33	Niwai	1	2020-07-12 16:58:58.28801+05:30	\N	\N	1	\N	\N
321	11	New Delhi	1	2020-09-06 13:00:22.215515+05:30	\N	\N	1	\N	\N
322	11	Delhi	1	2020-09-06 13:00:27.257572+05:30	\N	\N	1	\N	\N
324	14	Ballabgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
326	14	Hathin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
327	14	Baded	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
325	14	Palwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
328	14	Hodal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
331	14	Dundahera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
333	14	Sohna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
334	14	Firozpur Jhirka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
335	14	Tauru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
337	14	Nuh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
343	14	Kosli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
344	14	Matanhail	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
339	14	Narnaul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
347	14	Mahem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
348	14	Beri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
352	14	Khanpur Khurd	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
353	11	Bichpari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
354	11	Rithal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
355	14	Nindana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
357	11	Rohna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
359	14	Hansi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
361	14	Agroha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
363	14	Ratia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
364	14	Adampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
366	14	Bighar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
367	14	Chanot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
369	14	Jamauri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
370	14	Kharar Ailapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
371	14	Ellenabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
372	14	Dabwali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
362	14	Fatehabad (Haryana)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
360	14	Barwala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
375	14	Barwala Mandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
376	14	Kheder 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
377	14	Prabhuwala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
378	14	Nehla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
379	14	Hassangarh (Hissar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
381	14	Safidon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
383	14	Kalayat Mandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
385	14	Bawani Khera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
386	14	Tosham	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
388	14	Siwani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
387	14	Charkhi Dadri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
392	14	Rai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
394	11	Ghasauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
395	11	Kheri Gujar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
396	11	Sonipath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
397	11	Mehlana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
398	14	Chulkana (Sonepat)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
400	14	Kharkhauda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
404	14	Samalkha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
406	14	Gharaunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
407	14	Nilokheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
411	14	Barara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
413	14	Kalka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
414	14	Pinjore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
417	14	Narayangarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
421	14	Guhla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
425	28	Morinda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
426	28	Sidhupur Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
427	28	Kurali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
430	28	Pathreri Jattan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
432	28	Bela	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
433	28	Chamkaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
434	28	Ghanauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
436	28	Kiratpur Sahib	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
437	28	Paharpur Samloh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
438	28	Jatauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
439	28	Anandpur Sahib	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
443	28	Nangal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
444	28	Khabra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
445	28	Derabassi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
447	28	Sirhind	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
448	28	Bassipathana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
451	28	Lalru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
454	28	Halwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
457	28	Sanewal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
460	28	Nurmahal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
461	28	Motor Terminus	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
455	28	Samrala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
458	28	Machhiwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
456	28	Malaudh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
464	28	Hissowal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
463	28	Doraha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
467	28	Baghapurana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
472	28	Sultanwind	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
473	28	Rayya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
475	28	Chuslewar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
476	28	Beas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
477	28	Baba Bakula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
478	28	D.B.J.Singh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
479	28	Butter Sivia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
480	28	Bundala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
481	28	Bsf Campus Bhikhiwind	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
482	28	Fatehabad (Punjab)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
483	28	Dadeha Sahib	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
484	28	Patti (Pun)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
485	28	Sabhra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
486	28	Algon Khurd	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
497	28	Mukerian	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
496	28	Dasoya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
499	28	Goraya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
501	28	Banga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
492	28	Phillaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
503	28	Balachaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
505	28	Sultanpur Lodhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
506	28	Lohian Khas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
494	28	Nakodar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
508	28	Hamira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
507	28	Bholath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
510	28	Sujanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
511	28	Madhopur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
512	28	Sarna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
513	28	Bajrawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
502	28	Mahalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
514	28	Ajram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
516	28	Samana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
518	28	Bhadson	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
519	28	Mandi Govindgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
521	28	Ahmedgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
522	28	Amargarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
523	28	Malerkotla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
525	28	Sherpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
526	28	Bhawanigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
527	28	Pakki Khanauri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
528	28	Sunam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
529	28	Cheema	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
531	28	Lehragaga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
532	28	Moonak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
524	28	Dhuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
533	28	Dirba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
534	28	Kothla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
535	28	Mauran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
536	28	Tallewal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
537	28	Barnala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
538	28	Bhadaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
539	28	Shaina	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
540	28	Mehal Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
541	28	Dhanaula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
542	28	Longowal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
543	28	Handiaya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
544	28	Tapa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
545	28	Sanghera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
546	28	Kattu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
548	28	Rampura Phul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
550	28	Bhai Rupa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
551	28	Jaitu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
553	28	Kotkapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
554	28	Bhagta Bhai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
552	28	Faridkot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
557	28	Bareta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
558	28	Mansa (Pun)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
559	28	Maur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
468	28	Zira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
562	28	Malaut	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
564	7	Manimajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
566	15	Mehli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
572	15	Chirgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
570	15	Jubbal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
573	15	Chaupal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
575	15	Dodra Kawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
571	15	Rohru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
569	15	Kothkhai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
568	15	Theog	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
577	15	Karsog	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
576	15	Suni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
578	15	Rampur (H P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
582	15	Nermand Ani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
580	15	Nankhari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
581	15	Rampur Bushahr	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
584	15	Niehar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
585	15	Kinnaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
586	15	Puh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
587	15	Kyelang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
588	15	Kaja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
583	15	Kalpa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
589	15	Ribba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
592	15	Girinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
594	15	Renukha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
595	15	Sangarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
593	15	Pontasahib	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
591	15	Nahan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
596	15	Shillai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
597	15	Rajban	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
598	15	Sataun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
602	15	Sonwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
604	15	Kasauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
605	15	Baddi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
608	15	Dharampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
609	15	Junga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
607	15	Arki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
603	15	Solan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
606	15	Sabathu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
612	15	Bhojnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
567	15	Darlaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
613	15	Badhaunighat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
616	15	Nalagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
610	15	Ramshahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
601	15	Barutiwala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
624	15	Chachyot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
625	15	Joginder Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
627	15	Manali (H P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
626	15	Banjar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
590	15	Lahaul Spiti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
628	15	Udaipur (H P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
635	15	Tira Sujanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
636	15	Baijanth	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
637	15	Nurpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
639	15	Dalhousie	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
638	15	Chamba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
640	15	Damtal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
633	15	Indora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
621	15	Haroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
632	15	Nagrota Suria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
641	15	Bharwain	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
642	15	Amb	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
651	36	Thatri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
663	36	Lal Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
665	36	Wuyan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
664	36	Balhama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
669	36	Awantipora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
670	36	Bijbehra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
671	36	Shopian	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
674	36	Kalaroos	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
675	36	Langate	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
677	33	Sahibabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
678	33	Chikambarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
679	33	Mohannagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
681	33	Murad Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
682	33	Electronic City (Nda)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
683	33	Surajpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
686	33	Alampur Rani Barla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
688	33	Amritpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
689	33	Gabhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
690	33	Akrawat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
691	33	Sahajpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
692	33	Bhimpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
685	33	Iglas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
693	33	Mangalayatan University	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
694	33	Deta Khurd	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
687	33	Atrauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
695	33	Atrauli Road Rs	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
697	33	Anupshahr	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
698	33	Bilari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
702	33	Khurja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
703	33	Dadri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
705	33	Sasni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
709	33	Bhongaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
710	33	Karhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
711	33	Bewar Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
713	33	Bidhuna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
712	33	Auraiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
706	33	Mainpuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
717	33	Jalesar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
715	33	Etah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
716	33	Kasganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
718	33	Jajmau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
719	33	Panki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
722	33	Fatehgarh (Uttar Pradesh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
723	33	Kannauj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
724	33	Jaitipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
725	33	Shuklagunj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
727	33	Beberu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
728	33	Narani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
729	33	Chitrakoot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
731	33	Charkhari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
733	33	Kulpahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
734	33	Srinagar (Uttar Pradesh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
732	33	Mahoba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
730	33	Hamirpur (Uttar Pradesh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
735	33	Maudaha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
736	33	Naini	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
737	33	Bamrauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
738	33	Sikandara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
742	33	Kara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
743	33	Alam Chand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
741	33	Manjhanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
744	33	Sirathu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
745	33	Karchana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
746	33	Meja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
747	33	Koraon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
748	33	Karchhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
749	33	Janghai Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
750	33	Phulpur (Up - Allahabad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
752	33	Holagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
751	33	Soraon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
754	33	Bindki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
755	33	Khaga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
756	33	Jasrana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
757	33	Banaras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
759	33	Sikrara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
761	33	Baragaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
764	33	Gyaanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
760	33	Gangapur  (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
763	33	Gyanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
765	32	Bhadohi City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
762	33	Bhadohi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
767	33	Hanuanganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
769	33	Ardauna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
773	33	Zaffarabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
775	33	Machhlishahr	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
776	33	Mariahu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
774	33	Kerakat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
777	33	Pushpnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
782	33	Nawabganj (Up - Barabanki)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
783	33	Fatehpura (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
785	33	Aihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
784	33	Ramsanehighat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
787	33	Kursi Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
788	33	Malihabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
786	33	Haider Garh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
790	33	Bakshi Ka Talab	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
789	33	Mohanlalganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
793	33	Musafirkhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
792	33	Amethi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
778	33	Kadipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
795	33	Anapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
797	33	Mahrajganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
800	33	Tiloi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
798	33	Salon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
799	33	Dalmau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
766	33	Handia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
806	33	Patan (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
803	33	Mrg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
808	33	Hasanganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
810	33	Lalganj (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
804	33	Kunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
811	33	Patti (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
814	33	Amwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
815	33	Robertsganj (Sonbhadra)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
816	33	Renusagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
813	33	Rihand Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
817	33	Anpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
818	33	Shakti Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
819	33	Chunar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
812	33	Mirzapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
820	33	Chakia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
823	33	Muhammadabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
825	33	Bilgram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
826	33	Sindhauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
827	33	Jalalabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
828	33	Jalapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
829	33	Laxmipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
831	33	Baheri  (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
700	33	Aonla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
834	33	Agras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
832	33	Mirganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
835	33	Faridpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
836	33	Kilak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
837	33	Milak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
840	33	Awalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
839	33	Hasanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
841	33	Sambhai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
842	33	Kanth	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
845	34	Ramnagar (Uttrl)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
847	33	Bilasour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
848	33	Dhakia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
849	33	Suar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
850	33	Tanda  (Up Moradabad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
851	33	Modipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
852	33	Garhmukteshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
853	33	Garhmukteshwer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
854	33	Pilkhua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
858	34	Kotdwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
859	34	Srinagar (Uttarakhand)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
856	34	Lansdowne	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
863	34	Karnaprayag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
864	33	Bijnor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
866	33	Chandpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
865	33	Dhampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
867	33	Muzaffarabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
868	33	Behat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
869	33	S.Qudeem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
871	33	Sarsawa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
872	33	Sarsava	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
873	33	Gangoh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
874	33	Nanauta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
875	33	Nagal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
876	33	Deoband	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
877	34	Manglour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
870	33	M.Bad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
879	34	Laksar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
880	33	Punwarka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
883	33	Kairana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
888	34	Mussoorie	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
886	34	Vikasnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
885	34	Chakrata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
889	34	New Tehri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
892	34	Rajgarhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
894	34	Puroia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
890	34	Uttarkashi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
891	34	Bhatwari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
893	34	Pratapnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
855	34	Pauri Garhwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
897	33	Modipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
898	33	Daurala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
899	33	Mawana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
900	33	Bagpat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
896	33	Baraut	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
901	33	Khatauli (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
882	33	Muzaffarnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
902	33	Jansath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
903	33	Muzaffar Nagar [Up]	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
904	33	Dhindawali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
905	33	Ramraj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
906	33	Badiwala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
909	33	Mahmudabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
910	33	Sidhauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
911	33	Misriksh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
907	33	Sitapur (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
908	33	Biswan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
913	33	Bisalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
914	34	Khatima	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
918	34	Lal Kuan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
916	34	Sitarganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
833	33	Nawabganj (Up - Bareilly)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
923	34	Munsyari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
921	34	Didihat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
920	34	Pithoragarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
922	34	Dharchula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
924	33	Dhaurhra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
925	33	Mohamdi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
927	33	Gola (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
928	33	Nighasan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
930	34	Bhimtal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
932	34	Kichha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
843	34	Udhamsingh Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
917	34	Bazpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
934	34	Ranikhet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
933	34	Bageshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
846	34	Almora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
937	33	Mujehani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
936	33	Balrampur  (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
939	33	Tarabganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
940	33	Fakirapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
935	33	Gonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
942	33	Kaisarganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
945	33	Haraiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
946	33	Sant Kabir Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
948	33	Barhya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
949	33	Dhakwa Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
950	33	Khajni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
953	33	Pharenda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
954	33	Camperganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
956	33	Ban	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
957	33	Baghar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
959	33	Nauwabari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
960	33	Sahajanwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
952	33	Maharajganj (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
962	33	Basgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
961	33	Khajani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
958	33	Chauri Chaura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
964	33	Gola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
965	33	Baraipar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
963	33	Bansgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
968	33	Ramkola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
969	33	Kushinagar (Padrauna)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
970	33	Salimpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
971	33	Badrav	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
768	33	Ghosi (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
973	33	Phulpur (Up - Mau)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
974	33	Ashona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
770	33	Mau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
975	33	Bansidh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
771	33	Balia  (U P )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
977	33	Bisawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
979	33	Kosi Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
980	33	Barsana 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
978	33	Chhata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
981	33	Etmadpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
982	33	Mahroni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
983	33	Jalaun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
984	33	Konch	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
989	29	Narayanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
988	29	Thana Gazi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
993	29	Kishangarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
994	29	Tijara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
992	29	Bansur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
987	29	Neemrana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
986	29	Bhiwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
995	29	Behror	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1001	29	Kot Putli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1007	29	Malpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1009	29	Sambhoogarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1013	29	Sarwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1015	29	Bijainagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1017	29	Madanganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1018	29	Sursura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1020	29	Marwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1026	29	Raipur (Raj- Pali)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1028	29	Pindwada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1029	29	Amli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1030	29	Abu Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1031	29	Sheoganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1032	29	Ahor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1035	29	Khamore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1036	29	Bhagwanpura Bhilwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1037	29	Amarwasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1038	29	Jamoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1039	29	Jahazpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1042	29	Mandal (Raj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1046	29	Bikaran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1047	29	Gangapur  (Raj - Bhilwara))	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1050	29	Begun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1051	29	Dungla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1052	29	Kapasan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1054	29	Bari Sadri (Raj -Chittorgarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1056	29	Arnaud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1057	29	Adityapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1058	29	Pratapgarh (Rajasthan)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1061	29	Daroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1060	29	Salumbar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1062	29	Mavli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1066	29	Kumbhalgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1067	29	Reimagra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1068	29	Devgarh (Raj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1065	29	Kankroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1071	29	Bhinder	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1074	29	Jharol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1076	29	Gogunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1078	29	Rishabdeo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1077	29	Khairwara (Raj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1079	29	Sarada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1080	29	Sarara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1081	29	Ogna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1085	29	Deeg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1086	29	Pahari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1087	29	Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1089	29	Weir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1090	29	Nadbal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1091	29	Govindgarh Bharatpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1094	29	Toda Bhim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1083	29	Bharatpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1098	29	Sapotra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1101	29	Bhenshroadgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1102	29	Rawat Bhata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1103	29	Vikram Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1104	29	Anushakti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1106	29	Khajuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1110	29	Gadepan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1107	29	Digod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1112	29	Wagidora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1114	29	Garhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1117	29	Baseri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1118	29	Rajakhera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1105	29	Kota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1120	29	Taranagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1126	29	Sri Dungargarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1134	29	Surat Garh (Raj-Jhunjhunu)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1133	29	Chirawa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1135	29	Nawalgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1136	29	Khajuwala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1138	29	Gangasahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1139	29	Lunkaransar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1143	29	Raisingh Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1141	29	Suratgarh (Sriganganagar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1144	29	Sangariya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1148	29	Rawatsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1149	29	Tibi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1151	29	Gharsana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1145	29	Hanumangarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1152	29	Pilibanga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1154	29	Kuchaman City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1159	29	Makrana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1160	29	Parvatsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1162	29	Phalodi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1164	29	Badu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1165	29	Chadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1166	29	Dechu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1168	29	Bhavi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1169	29	Dunara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1170	29	Asop	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1171	29	Bhinmal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1172	29	Sancnore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1174	29	Balotra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1176	29	Pachpadra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1177	29	Siwana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1182	13	Jasdan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1183	13	Paddhari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1184	13	Gondal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1181	13	Shapar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1186	13	Jamkandorana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1188	13	Jamkandorna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1190	13	Jam Jodhpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1189	13	Upleta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1191	13	Bhanvad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1198	13	Reliance Greens	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1197	13	Jamnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1193	13	Kalavad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1199	13	Lalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1200	13	Dhrol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1204	13	Kalyanpur (Gujarat)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1207	13	Dwarka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1208	13	Mithapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1206	13	Okhamandal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1216	13	Mendarda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1217	13	Veraval	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1209	13	Junagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1223	13	Surendernagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1225	13	Khodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1226	13	Gujarwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1229	13	Dhrangadhra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1224	13	Wadhwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1233	13	Sayla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1234	13	Muli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1236	13	Ranapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1201	13	Jodia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1239	13	Malia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1251	13	Savar Kundla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1252	13	Motazinjhuvada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1240	13	Bhavnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1254	13	Liliya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1256	13	Nageshri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1257	13	Amreli H O	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1258	13	Chalala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1259	13	Sarambhada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1260	13	Mota Samadhiala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1248	13	Gadhda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1250	13	Babra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1266	13	Loria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1267	13	Madhapar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1272	13	Adipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1273	13	Kandla Port	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1271	13	Gandhidham	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1268	13	Anjar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1275	13	Mundra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1276	13	Naranpar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1277	13	Kera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1281	13	Dahisara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1283	13	Khavda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1284	13	Kotda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1285	13	Manjal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1287	13	Lakhpat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1288	13	Panandhro	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1289	13	Kothara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1290	13	Naliya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1282	13	Abdasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1293	13	Vejalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1295	13	Sanand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1296	13	Mandal (Guj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1299	13	Sarkhej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1300	13	Changodar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1301	13	Bawla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1303	13	Narol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1304	13	Adalaj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1261	13	Botad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1308	13	Dhandhuka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1309	13	Kadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1311	13	Chattral	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1313	13	Patdi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1312	13	Dasada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1314	13	Mansa (Guj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1315	13	Vijapur (Guj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1318	13	Prantij	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1322	13	Talod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1324	13	Malpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1326	13	Meghrej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1327	13	Ider	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1337	13	Brahmanwada (Chanasama)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1342	13	Vadnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1343	13	Kahipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1347	13	Deoder	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1349	13	Santalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1348	13	Radhanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1350	13	Dantiwada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1352	13	Deesa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1354	13	Banaskantha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1355	13	Tharad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1363	13	Madhudha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1364	13	Narsand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1366	13	Kheda Camp	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1369	13	Vallabh Vidya Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1371	13	Tarapur (Guj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1372	13	Kheda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1375	13	Balasinor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1377	13	Petlad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1385	13	Limkheda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1386	13	Gorbada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1387	13	Zalod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1388	13	Fatehpura (Guj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1382	13	Panchmahals	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1389	13	Shahera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1390	13	Lunavada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1391	13	Kadana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1310	13	Kalol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1395	13	Ranjitnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1393	13	Ghoghamba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1394	13	Halol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1396	13	Devgadh Baria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1384	13	Dhanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1397	13	Jambughoda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1398	13	Makarpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1401	13	Mankni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1403	13	Chhota Udaipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1404	13	Por	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1405	13	Bajwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1406	13	Petrofils	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1407	13	Fertilizernagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1400	13	Waghodia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1408	13	Manjusar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1409	13	Rania	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1412	13	Kevdia Colony	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1414	13	Dahej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1416	13	Jambsuar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1417	13	Karjan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1420	13	Dedipada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1424	13	Sabgara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1415	13	Vagra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1427	13	Garudeshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1432	13	Panoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1433	13	Kosamba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1435	13	Sachin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1436	13	Mahuvaria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1439	13	Hajira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1440	13	Palsana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1443	13	Umarwada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1444	13	Choryasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1431	13	Olpad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1446	13	Valod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1445	13	Vyara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1449	13	Bhalkhet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1419	13	Hansot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1442	13	Bardoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1451	13	Atul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1452	13	Tiskari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1453	13	Bhadeli Jagalala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1455	13	Dharampur (Gujarat)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1457	13	Bhilad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1459	13	Zaroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1461	13	Parda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1462	13	Pardi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1463	13	Sarigam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1460	13	Umargam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1464	13	Umergaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1465	13	Dadra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1466	13	Mota Pondha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1468	13	Dabhel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1467	13	Daman	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1469	13	Silvasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1471	13	Dungri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1458	13	Gandevi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1470	13	Navsari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1454	13	Chikhli (Guj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1473	13	Bansda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1474	1	Bombay	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1477	1	Bhandup	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1479	1	Wagle	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1480	1	Kalwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1481	1	Manpada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1482	1	Belapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1483	1	Rabale	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1484	1	Vashi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1487	1	Jnpt	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1488	1	Airoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1489	1	Koparkhairne	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1490	1	Mahape	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1491	1	Bhayandhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1492	1	Mira Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1494	1	Nala Sopara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1495	1	Boisar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1497	1	Akarpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1496	1	Tarapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1498	1	Dhanu Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1499	1	Roha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1500	1	Nagothana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1502	1	Panjim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1506	1	Corlim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1508	1	Ponda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1510	1	Valpoi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1511	1	Mapusa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1512	1	Pernem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1513	1	Dicholi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1514	1	Moira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1516	1	Arpora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1515	1	Calangute	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1503	1	Panaji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1509	1	Bicholim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1518	1	Sanguem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1521	1	Majorda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1507	1	Verna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1517	1	Zuarinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1520	1	Dabolim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1522	1	Vasco De Gama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1523	1	Marmagao	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1505	1	Margoa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1524	1	Khapoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1525	1	Rasayani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1527	1	Navi Mumbai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1529	1	Patalganga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1478	1	Raigad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1530	1	Maval	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1531	1	Lonavala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1532	1	Kamshet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1533	1	Vategaon 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1537	1	Rajgurunagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1538	1	Talegaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1539	1	Wadgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1541	1	Vafgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1542	1	Turbhe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1544	1	Khadki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1545	1	Pimpri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1547	1	Hadapsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1548	1	Tatahwade	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1549	1	Akurdi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1550	1	Katrej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1551	1	Ghore Bhudruk	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1552	1	Mulshi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1554	1	Mundhri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1558	1	Alandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1559	1	Dehu Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1560	1	Urli Kanchan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1562	1	Sindewadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1563	1	Bhor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1564	1	Wagholi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1565	1	Sanaswadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1566	1	Ranjangaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1553	1	Welhe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1568	1	Haveli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1569	1	Jahanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1570	1	Saswad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1571	1	Jejuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1572	1	Phursunghi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1573	1	Lone Bhapkar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1557	1	Purandhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1540	1	Khed (Pune)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1536	1	Ambegaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1574	1	Panchagani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1575	1	Mahabaleshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1578	1	Lasurna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1579	1	Bhigwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1556	1	Baramati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1580	1	Jamkhed	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1584	1	Bagechiwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1586	1	Hotagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1588	1	Mandrup	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1589	1	Valsang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1587	1	Akalkot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1581	1	Karmala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1590	1	Mangalwedha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1591	1	Mahud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1592	1	Nazara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1593	1	Jawala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1594	1	Kole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1595	1	Marwade	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1596	1	Bhosa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1597	1	Barshi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1598	1	Kalamb	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1601	1	Ausa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1600	1	Ahmedpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1602	1	Renapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1603	1	Jalkot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1604	1	Shirala (Osmanabad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1606	1	Shelgaon (Osmanabad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1608	1	Ulpoop	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1609	1	Wagholi (Osmanabad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1610	1	Turori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1611	1	Mangrul (Osmanbad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1561	1	Daund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1615	1	Kurkumbh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1616	1	Bahalwani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1618	1	Parner	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1619	1	Shevgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1617	1	Newasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1620	1	Nevasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1622	1	Medha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1631	1	Kadegaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1629	1	Atpadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1634	1	Shiala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1633	1	Shirala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1635	1	Pusegaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1636	1	Vaduj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1625	1	Koregaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1624	1	Khatav	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1639	1	Sangameshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1641	1	Guhgar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1642	1	Khed (Ratnagiri)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1638	1	Chiplun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1645	1	Jaisinghpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1647	1	Hatkalangda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1648	1	Warananagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1650	1	Shiroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1651	1	Karveer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1652	1	Gaganbavada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1623	1	Shahuwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1654	1	Bhudargad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1649	1	Panhala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1655	1	Radhanagari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1653	1	Kagal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1658	1	Palus	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1630	1	Valva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1657	1	Miraj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1659	1	Jath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1660	1	Kavathe Mahankal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1664	1	Vengurla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1662	1	Gadhinglaj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1661	1	Chandgad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1665	1	Kankauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1666	1	Nalvan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1643	1	Rajapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1667	1	Ulhas Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1668	1	Dombivili	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1669	1	Kalyan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1670	1	Wada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1671	1	Murbad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1673	1	Badlapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1672	1	Ambernath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1674	1	Asangaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1676	1	Palse	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1678	1	Peint	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1680	1	Surgana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1682	1	Devlali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1681	1	Igatpuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1684	1	Chandwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1685	1	Yeola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1695	1	Erandol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1696	1	Parola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1690	1	Jamner	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1693	1	Dharangaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1697	1	Muktai Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1700	1	Edalabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1692	1	Jalgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1703	1	Shirpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1694	1	Chopda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1708	1	Khudabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1710	1	Penthan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1711	1	Bhokhardan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1712	1	Georai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1709	1	Kannad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1715	1	Banoti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1716	1	Lonwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1718	1	Jafarabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1707	1	Chikalthana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1717	1	Ambad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1720	1	Mantha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1721	1	Manwat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1724	1	Gangakher	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1726	1	Ambajogai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1727	1	Makegaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1722	1	Jintur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1729	1	Naigaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1730	1	Blloli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1732	1	Kandahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1733	1	Mukher	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1731	1	Hadgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1735	1	Bhokar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1737	1	Wadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1742	1	Gaimuch Nande	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1741	1	Buttibori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1743	1	Bhiwapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1745	1	Brahmapuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1746	1	Desaiganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1750	1	Nagbhid	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1751	1	Gramsevak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1752	1	Sindewahi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1753	1	Bhejgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1749	1	Saoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1754	1	Gondpipri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1740	1	Katol (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1755	1	Narkher	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1757	1	Parseoni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1758	1	Kalmeshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1759	1	Dhapewada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1739	1	Saoner	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1761	1	Sakoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1763	1	Lakhni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1762	1	Lakhandur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1765	1	Mohadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1767	1	Seloo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1769	1	Karanja (Mah- Wardha)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1768	1	Ashti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1771	1	Samudrapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1766	1	Deoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1770	1	Hinganghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1772	1	Girad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1776	1	Gondipipri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1773	1	Bhadrawati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1778	1	Chimur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1777	1	Rajura (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1779	1	Bakhardi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1780	1	Korpana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1781	1	Jiwati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1784	1	Mehekar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1785	1	Murtajapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1787	1	Durgwada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1788	1	Kuvum	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1789	1	Nimbhaza (Akola)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1791	1	Umbarda Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1792	1	Kapshi (Akola)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1793	1	Savara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1794	1	Balapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1795	1	Khamgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1797	1	Jaulka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1798	1	Alegaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1802	1	Nandgaon Khandeshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1806	1	Partwada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1807	1	Chikhaldara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1804	1	Achalpur City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1799	1	Dharni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1801	1	Daryapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1805	1	Bhatkuli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1808	1	Teosa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1809	1	Aloda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1812	1	Kelapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1817	21	Pandhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1820	21	Rajpur (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1824	21	Sendhwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1825	21	Pansemal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1828	21	Mhow	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1831	21	Kukshi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1832	21	Manawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1833	21	Dharmapuri (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1834	21	Gujri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1830	21	Sardarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1836	21	Digthan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1837	21	Gunawad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1838	21	Sagorekuti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1841	21	Gandharvpuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1843	21	Khategaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1845	21	Unhel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1846	21	Baledi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1847	21	Khachraud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1848	21	Bhatpachlana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1849	21	Piploda  Baghla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1851	21	Jharda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1850	21	Mehidpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1854	21	Tarana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1855	21	Kanasia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1856	21	Barnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1857	21	Runija	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1863	21	Bajna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1865	21	Alirajpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1864	21	Jhabua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1867	21	Manasa (M P )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1872	21	Ratangarh (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1869	21	Jawad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1873	21	Bhanpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1866	21	Mandsaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1871	21	Sitamau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1876	21	Bhainsdehi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1877	21	Shahpur (Mp)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1878	21	Multal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1881	21	Seoni Malwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1883	21	Khirkiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1884	21	Babai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1885	21	Sohagpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1886	21	Panchmarhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1889	21	Mandideep	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1888	21	Bairagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1892	21	Korwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1893	21	Sironj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1894	21	Gyaraspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1891	21	Vidisha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1898	21	Awantipur Barodiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1899	21	Gangapur (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1901	21	Narsinghgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1903	21	Khilchipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1904	21	Zirapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1905	21	Sarangpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1908	21	Ichhawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1909	21	Nasrullahganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1913	21	Khurai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1914	21	Rahatgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1915	21	Bina Borl	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1916	21	Deori (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1917	21	Rehli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1919	21	Banda  (M P )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1921	21	Patharia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1922	21	Shahpur Magrone	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1923	21	Hatta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1924	21	Bijwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1928	21	Lauri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1929	21	Khajuraho	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1930	21	Rajnagar ( M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1933	21	Jatara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1934	21	Nivari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1936	21	Aron	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1938	21	Myana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1939	21	Chachaura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1937	21	Raghogarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1942	21	Isagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1944	21	Chanderi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1948	21	Pohri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1949	21	Narwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1954	21	Morar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1955	21	Bhitarwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1956	21	Bhander	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1961	21	Porsa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1963	21	Sabalgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1966	21	Gohad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1967	21	Malanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1968	21	Eraun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1969	21	Mihona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1972	21	Chaural	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1973	21	Pandhurma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1977	21	Damoh (Balaghat)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1978	21	Gorakhpur (Mandla )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1981	21	Nainpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1979	21	Niwas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1983	21	Mawai (Mandla)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1986	21	Kundam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1985	21	Patan (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1988	21	Bahuriband	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1987	21	Sihora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1989	21	Katni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1990	21	Vijayraghavgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1991	21	Umariya Pan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1992	21	Reethi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1996	21	Satna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1999	21	Rampur (M P - Satna)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2000	21	Birsinghpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2001	21	Nagod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2002	21	Maihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2003	21	Amarpatan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2006	21	Raipur (Mp - Rewa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2008	21	Raipur Karchulion	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2007	21	Mauganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2014	21	Badhara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2015	21	Gurh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2009	21	Jawa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2016	21	Majholi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2017	21	Kusmi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2018	21	Sinhawal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2020	21	Rampur (M P- Sidhi)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2022	21	Deosar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2023	21	Chitraogi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2026	21	Gotegaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2027	21	Gadarwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2025	21	Narsimhapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2029	21	Ajaigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2030	21	Shahnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2031	21	Pawal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2032	37	Bhilai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2034	37	Bhilia Vaishali Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2035	37	Balod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2037	37	Bemetara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2039	37	Dongargaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2040	37	Khairagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2041	37	Chhuikhadan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2044	37	Simga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2045	37	Hathband	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2046	37	Neora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2047	37	Baikhunth	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2048	37	Bhatapara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2049	37	Hirmi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2050	37	Grasim Vihar Rawan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2052	37	Kharora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2054	37	Kasdol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2056	37	Saraipali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2058	37	Adhanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2059	37	Kurud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2061	37	Nagri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2062	37	Nawagarh (Chtg - Raipur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2063	37	Bindra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2066	37	Chhura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2072	37	Kondagaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2074	37	Charama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2075	37	Bhopalpatnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2077	37	Narainpur (Chhtg)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2078	37	Antagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2076	37	Bhanupratappur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2079	37	Pakhanjur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2081	37	Main Road Bilaspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2082	37	Pal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2083	37	Belgahana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2085	37	Bilha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2086	37	Mungeli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2087	37	Ujwal Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2088	37	Ratanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2090	37	Hardibazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2091	37	Bankimongra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2094	37	Pamgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2095	37	Nawagarh (Chtg-Janjgir)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2097	37	Malkhurda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2098	37	Bhaisma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2099	37	Dabra (Chtg)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2100	37	Sakti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2096	37	Champa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2103	37	Pathalgoan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2106	37	Bagicha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2107	37	Kunkuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2110	37	Kharsia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2111	37	Sitapur (Chhtg)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2105	37	Pathalgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2113	37	Samri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2114	37	Wadrefnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2115	37	Koriya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2119	38	Secunderabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2121	38	Hakimpet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2122	38	Jedimettla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2120	38	Habsiguda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2123	38	Kukatpally	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2124	38	Manikonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2126	38	Maredpalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2127	38	Bollaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2128	38	Medchal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2129	38	Pargi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2130	38	Chevalla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2131	38	Ibrahimpatnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2137	38	Andole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2139	38	Gajwel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2138	38	Marasapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2145	38	Yellareddy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2147	38	Bodhan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2148	38	Banswada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2149	38	Madhnur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2144	38	Kamareddy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2146	38	Armoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2151	38	Mudhol (A P )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2153	38	Khanapur (A P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2154	38	Mancherial	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2155	38	Belampalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2152	38	Nirmal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2157	38	Boath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2159	38	Peddapali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2160	38	Manthani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2162	38	Sirsilla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2163	38	Jagtial	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2164	38	Hugurabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2165	38	Metpally	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2168	38	Neerada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2170	38	Kesamudram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2172	38	Narsampet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2177	38	Eturunagaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2180	38	Mangapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2178	38	Jangaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2182	38	Kodakandla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2181	38	Buchannapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2183	38	Narmetta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2184	38	Devaruppal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2185	38	Kodur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2186	38	Parvathagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2187	38	Maripeda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2188	38	Zaffargadgh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2189	38	Narsimhulapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2190	38	 Kodakandal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2193	38	Govindaraopet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2196	38	Cherial	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2194	38	Chityal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2197	38	Mogullapalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2198	38	Nallikaddr	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2200	38	Dornakal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2176	38	Parkal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2206	38	Yallandu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2205	38	Manuguru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2203	38	Bhadrachalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2204	38	Paloncha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2207	38	Vankatapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2208	38	Madhira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2209	38	Rapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2212	38	Ramannapeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2213	38	Hugurnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2211	38	Bhongir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2215	38	Vishnupuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2214	38	Suryapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2216	38	Magarkarnol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2218	38	Kolhapur (Ap)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2219	38	Gadwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2220	38	Alampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2221	38	Farrukhnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2223	38	Kalwakurti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2224	38	Kodangal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2222	38	Kothur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2225	38	Achampet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2226	38	Ganparti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2228	3	Penukonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2229	3	Madakasira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2230	3	Ratnagiri (A P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2233	3	Baduel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2239	3	L.R.Palli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2237	3	Galiveedu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2241	3	Veeraballi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2242	3	Rayachoty	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2245	3	Vemula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2248	3	Polivandla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2249	3	Lingala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2250	3	Jammalamadogo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2253	3	Chennampalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2254	3	Brahmamgarimattam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2255	3	NeelakantaraopetÂ 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2256	3	Tekurpet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2259	3	Chandragiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2260	3	Puttur (A P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2261	3	Vayalipad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2262	3	Palamner	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2267	3	Nadikotkur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2265	3	Dhone	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2271	3	Avanigadda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2273	3	Kondapalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2274	3	Vuyyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2275	3	Gudiwada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2277	3	Amaravati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2278	3	Karlapalem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2282	3	Edlapadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2284	3	Bhattiprolu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2285	3	Bhattiprole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2286	3	Dhulipudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2288	3	Vemuru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2289	3	Kuchinapudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2290	3	Chodayapalem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2292	3	Anantavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2293	3	Kollipara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2294	3	Pedapalem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2295	3	Nandivelugu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2297	3	Cherukupalle	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2298	3	Appikatla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2299	3	Turumella	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2301	3	Nizampatnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2303	3	Patsalatadiparanga Reddyu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2304	3	Stuvartpuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2306	3	Kolluru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2300	3	Amartaluru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2310	3	Muppalla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2311	3	Atchampet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2313	3	Bellamkonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2314	3	Rajupalem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2316	3	Dachepalle	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2317	3	Gurazalla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2302	3	Machavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2309	3	Pedakurapadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2315	3	Piduguralla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2319	3	Phirangipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2320	3	Durgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2321	3	Veldurthy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2322	3	Karempudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2323	3	Nekarikallu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2324	3	Chilakalurpet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2325	3	Rompicherla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2326	3	Savalyapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2327	3	Ipuru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2331	3	Giddalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2333	3	Damavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2334	3	Anemadugu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2335	3	Kodavalur Mandalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2336	3	Chakalakonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2337	3	Duthalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2338	3	Jaladanki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2339	3	Kaligiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2340	3	Siddanakonduru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2341	3	Udayagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2342	3	Varikuntapadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2343	3	Vinjamoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2344	3	Nandipadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2345	3	Gumparlapadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2346	3	Gandipalem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2251	3	Kondapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2347	3	Dagadarthi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2349	3	Ananatasagaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2348	3	Atmakur(Nl)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2350	3	A.S.Peta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2351	3	Buchireddipalem Mandalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2352	3	Seetaramapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2353	3	Maranga Reddyipadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2354	3	Indukurpeta Mandalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2355	3	Indukurpeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2356	3	Allur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2357	3	Kodavalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2360	3	Kaluvoya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2361	3	Muthukur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2362	3	Podalakur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2363	3	Brahmadevam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2365	3	Vojili	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2366	3	Chittamur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2367	3	Balayapalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2368	3	Manubolu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2369	3	Sydapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2373	3	Waltair	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2370	3	Vakadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2374	3	Vizag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2375	3	Gajuwaka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2376	3	Simhachalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2380	3	Araku	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2382	3	Paderu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2384	3	Patapatnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2385	3	Chintapalle	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2386	3	Sonpeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2387	3	Pydibheemavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2389	3	Palkonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2392	3	Mummidivaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2393	3	Kohapata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2394	3	Ragole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2396	3	Rampachodavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2397	3	Anaparthi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2398	3	Nellipaka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2399	3	Addatigala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2400	3	Prattipadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2401	27	Yanam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2408	3	Ananthagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2409	3	Bondapalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2410	3	Vepada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2412	3	Parvatipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2411	3	Garugubilli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2414	3	Jiyyammavalasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2416	3	Balijipeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2417	3	Badangi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2418	3	Datti Rajeru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2419	3	Challapeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2420	3	Pachipenta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2422	18	Yeswantpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2423	18	Bangalore Delivery	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2425	18	Yelhanka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2426	18	Whitefield	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2427	18	Madivala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2428	18	Kumbalgodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2429	18	Bommasandra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2430	18	Electronic City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2431	18	Jigni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2434	18	Doddaballarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2437	18	Gudibanda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2438	18	Sidhalghatta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2439	18	Anakal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2440	18	Attibele	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2442	18	Bidadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2443	18	Devanhalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2444	18	Hoskote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2445	18	Dibburahalli (Bng)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2446	18	Mallur (Kolar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2432	18	Magadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2447	18	Neelmangla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2449	18	Cpt	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2450	18	Chamarajasagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2451	18	Chikkajala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2441	18	Ramanagaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2453	18	Bangarapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2436	18	Bagepalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2455	18	Mulbagal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2457	18	Malur (Kar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2456	18	Srinivaspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2460	18	Piriyapatna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2463	18	Tirumakuda Narasipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2464	18	Heggadadevankote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2468	18	Nagarle	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2469	18	Kittoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2470	18	Honganur Nanjangud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2471	18	Suttur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2466	18	Kabini Colony	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2473	18	Virarajendrapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2474	18	Makut	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2475	18	Kushalnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2467	18	Nanjangud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2462	18	Gundlupet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2476	18	Hedathale	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2477	18	Hemmaragala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2480	18	Maddur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2483	18	Shrirangapattana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2484	18	Yelandur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2482	18	Pandavapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2485	18	Siganellur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2486	18	Mullur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2488	18	Bangalore (Rural)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2489	18	Ramnagara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2481	18	Krishnarajpet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2448	18	Tumkur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2497	18	Koratagere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2433	18	Pavagada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2491	18	Kunigal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2499	18	Teetha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2500	18	Huliyar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2494	18	Tiptur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2501	18	Turevekere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2496	18	Chikkanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2502	18	Hagalvadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2510	18	Bharathur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2512	18	Hole Narsipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2503	18	Belur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2516	18	Admar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2517	18	Kuthpadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2518	18	Paniyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2521	18	Kotekar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2522	18	Srinivasanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2523	18	Ullal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2524	18	Konaje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2525	18	Neerude	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2526	18	Mangalanthi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2527	18	Naringana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2528	18	Athikaribettu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2529	18	Balkunje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2530	18	Pejavara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2531	18	Harekala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2532	18	Pavur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2533	18	Permannur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2534	18	Talapady	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2535	18	Mermajal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2536	18	Phajiru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2537	18	Kavur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2544	18	Dakshin Kannad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2540	18	Mudbidri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2545	18	Sulliya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2543	18	Belthagady	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2546	18	Vittalmudnur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2547	18	Amtady	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2548	18	Navoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2549	18	Kodapadavu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2550	18	Kallamundkur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2551	18	Kakkinje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2552	18	Laila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2553	18	Panakaja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2554	18	Kallige	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2555	18	Ammunje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2542	18	Sulya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2556	18	Kavalkutte	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2557	18	Chikamudnur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2558	18	Manchi (Dka)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2559	18	Nirmarga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2560	18	Mani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2562	18	Krodhashram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2563	18	Malpe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2564	18	Manipal East	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2565	18	Parkala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2566	18	Someshwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2567	18	Havanje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2568	18	Kalasapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2569	18	Mudradi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2571	18	Ampar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2572	18	Nada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2573	18	Saibrakatte	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2509	18	Sakleshpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2580	18	Narasimharajapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2576	18	Koppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2581	18	Kaimara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2577	18	Mudigere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2584	18	Hithla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2586	18	Beeragondanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2587	18	Tudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2588	18	Bejjavalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2589	18	Kudligere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2590	18	Barandu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2591	18	Arbilichi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2582	18	Shimoga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2596	18	Kumsi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2595	18	Sorab	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2593	18	Tirthahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2594	18	Hosanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2598	18	Challakera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2600	18	Bharamsagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2599	18	Holalkere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2602	18	Molakalmuru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2579	18	Tarikere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2583	18	Channagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2603	18	Jigali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2604	18	Kukkuvada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2605	18	Hebballi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2574	18	Davanagere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2607	18	Dharwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2609	18	Mugad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2610	18	Hallihal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2611	18	Mantur (Dwd)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2612	18	Nulvi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2613	18	Yarguppi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2606	18	Dharwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2616	18	Kundgol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2621	18	Kumarpatnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2622	18	Savanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2623	18	Devargudda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2624	18	Devagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2625	18	Kabbur (Dharwad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2626	18	Yelgach	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2627	18	Sheshangeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2629	18	Araleshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2630	18	Kaginelli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2631	18	Kurubgonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2632	18	Negalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2633	18	Saidenur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2634	18	Shirguppi (Dwd)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2635	18	Yalivigi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2636	18	Kalas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2637	18	Yerebudihal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2638	18	Maknur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2639	18	Karadgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2640	18	Kopparshikoppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2641	18	Hidigona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2642	18	Chinmulgund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2643	18	Mallur (Dwd)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2644	18	Attigere (Dharwad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2645	18	Asundi (Dharwad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2614	18	Hangal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2648	18	Ranibennur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2647	18	Kalghatgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2649	18	Bammigatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2650	18	Devikoppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2651	18	Hirehonnihalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2653	18	Ingalgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2659	18	Haliyal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2664	18	Sirsi (Karnataka)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2661	18	Yellapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2658	18	Honavar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2665	18	Balkur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2668	18	Lakshmeshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2667	18	Mundargi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2669	18	Marasanbasri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2670	18	Tirlapur (Gadag)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2671	18	Chinchli (Gadag)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2672	18	Chabbi (Gadag)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2673	18	Magadi (Gadag)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2675	18	Naragund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2674	18	Navalgund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2666	18	Ron	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2677	18	Hullur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2678	18	Hirewaddatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2679	18	Kurdikoppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2680	18	Bhadrapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2681	18	Hallikeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2683	18	Balaganur (Gadag)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2684	18	Menasgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2685	18	Bhairanhatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2686	18	Chiknargund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2687	18	Jigalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2688	18	Alagawadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2689	18	Asuti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2690	18	Chikmannur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2691	18	Itagi Nargund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2692	18	Jaknur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2695	18	Siruguppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2696	18	Harpanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2698	18	Harapanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2697	18	Kudligi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2702	18	Huvvinahadagali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2701	18	Hagari Bommanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2704	18	Gangavati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2705	18	Yelbarga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2706	18	Hampapatna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2707	18	Malvi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2708	18	Sogi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2709	18	Gadiganur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2710	18	Bhagya Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2711	18	Basapattan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2712	18	Betgera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2713	18	Hitnal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2714	18	Chickjantakal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2715	18	Hebbal (Bellary)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2694	18	Sandur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2699	18	Hospet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2721	18	Sindhnur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2720	18	Lingsugur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2723	18	Gulbarga - Savalgi (Gulbarga)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2724	18	Gulbarga - Hirapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2731	18	Wadi (Karnataka)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2735	18	Gulbarga - Degaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2736	18	Gulbarga - Karajgi (Gulbarga)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2737	18	Gulbarga - Yegol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2738	18	Gulbarga - Bevoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2729	18	Shorapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2739	18	Alund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2742	18	Aland	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2743	18	Malkhed	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2726	18	Sedam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2741	18	Chincholi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2740	18	Jevargi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2746	18	Gulbarga - Dhuttargaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2747	18	Gulbarga - Gola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2748	18	Gulbarga - Norona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2749	18	Gulbarga - Tadkal (Gulbarga)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2750	18	Gulbarga - Dandoti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2752	18	Gulbarga - Nagnur (Gulbarga)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2745	18	Bhalki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2744	18	Basavakalyan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2759	18	Yankanchi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2760	18	Honagonahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2761	18	Bhairanje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2762	18	Hittinahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2763	18	Nagthan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2764	18	Jalwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2765	18	Aski	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2766	18	Sindgi Town	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2767	18	Basavana Bagevadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2756	18	Sindgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2768	18	Hanjagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2769	18	Golsangi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2770	18	Ingleshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2771	18	Jagjivan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2775	18	Mudhol (Kar-Bagalkot)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2776	18	Hallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2777	18	Kandgal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2778	18	Khajjidoni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2774	18	Bilgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2779	18	Mudhol (Kar- Bijapur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2780	18	Sameerwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2781	18	Navalgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2782	18	Todalbagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2784	18	Karali Jn	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2790	18	Kittur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2788	18	Saundatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2791	18	Nandgad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2789	18	Ramdurg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2792	18	Bhendigeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2793	18	Anakalgi (Bailhongal)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2794	18	Belagunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2795	18	Gandhi Gwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2796	18	Hudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2797	18	Bailur (Belgaum)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2786	18	Bailhongal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2798	18	Hanchinal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2799	18	Hooli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2800	18	Mudkavi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2801	18	Avaradi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2802	18	Betsur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2803	18	Dodwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2804	18	Hoskoti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2805	18	Karikatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2806	18	Neginhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2807	18	Ugargol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2811	18	Nipani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2812	18	Belkad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2813	18	Chinchani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2814	18	Janwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2815	18	Nej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2816	18	Khanapur (Kar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2817	18	Bilagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2818	18	Mole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2819	18	Bekkere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2785	18	Gokak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2820	18	Shindikurbet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2821	18	Walki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2822	18	Yadur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2823	18	Waderhatti (Belgaum)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2824	18	Haragapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2825	18	Yabaratti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2826	18	Kadbi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2827	18	Bhilhongal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2830	31	Alandur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2831	31	Thiruvettiyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2829	31	Guindy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2833	31	Velacheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2834	31	Tambaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2835	31	Avadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2837	31	Ennore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2838	31	Madhavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2840	31	Vanagaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2841	31	Karapakkam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2836	31	Poonamallee	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2842	31	Madras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2832	31	Ambattur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2843	31	Gummudipoondi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2844	31	Padappai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2846	31	Sriperambadur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2839	31	Thrivillur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2850	31	Mahabalipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2853	31	Singaperumalkoil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2854	31	Marai Malai Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2855	31	Cheyyar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2856	31	Kolathur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2857	31	Cheyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2858	31	Chithamur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2859	31	Velur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2860	31	Uttiramerur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2866	31	Tiruvattipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2869	31	Ramasamy Padayachiar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2870	31	Auroville	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2873	31	Ulundurpet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2874	31	Kallakkurichi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2875	31	Tyagadurgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2872	31	Tittagudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2878	31	Vellur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2882	31	Annamalai Nagar (Tn-Cuddalore)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2885	31	Mayavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2888	31	Pagasalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2889	31	Vanagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2890	31	Karaimedu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2891	31	Arapallam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2892	31	Palayapalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2893	31	Mayiladutturai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2895	31	Sembanarkoil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2894	31	Tarangambadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2897	31	Karaikal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2899	31	Kidarankondan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2896	31	Nannilam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2901	31	Tiruvidaimarudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2904	31	Kilapalaiyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2898	31	Mannargudi (Tn - Thiruvarur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2909	31	Alankottai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2886	31	Kumbakonam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2905	31	Nidamangalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2910	31	Aranthangi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2911	31	Avadaiyarkovil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2913	31	Orattanadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2914	31	Peravurani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2917	31	Asoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2922	31	Veppanthattai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2923	31	Krishnarayapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2919	31	Manachanallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2921	31	Kunnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2927	31	Karaiyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2929	31	Gandarvakottai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2930	31	Kiranur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2932	31	Tiruvadanaj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2934	31	Mudukulattur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2941	31	Visalakshinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2940	31	Vadippatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2943	31	Bodinayakkanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2946	31	Uttamapalaiyam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2945	31	Usilampatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2944	31	Periyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2949	31	Mullipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2955	31	Sevalpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2950	31	Aruppukottai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2951	31	Rajapalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2962	31	Vallanad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2966	31	Sivagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2969	31	Sengottal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2961	31	Alangulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2971	31	 Vilathikulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2972	31	Veppalodai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2976	31	Tiruchendur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2974	31	Srivaikuntam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2980	31	Ettayapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2983	31	Kuzhitturai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2984	31	Takkalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2985	31	Neyyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2986	31	Bhutapandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2990	31	Sivaganga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2995	31	Poonimangadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2996	31	Kanchipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2999	31	Katpadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3000	31	Arani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3001	31	Adanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3002	31	Arni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3005	31	Gudiyattam (Tn - Vellore)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3007	31	Erthangal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3010	31	Denkanikota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3011	31	Hosur East	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3013	31	Kabilarmalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3014	31	Uttangarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3017	31	Pudur Nadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3019	31	Lalapettai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3006	31	Gudiyatham 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3024	31	Valapady	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3025	31	Kadambur (Salem)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3023	31	Gangavalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3022	31	Atur (Tn  Salem )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3030	31	Karavalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3027	31	Mettur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3028	31	Malur (T N )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3031	31	Yercaud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3032	31	Palacode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3029	31	Edappadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3036	31	Sankagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3037	31	Tiruchengode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3026	31	Rasipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3042	31	Kolathupalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3043	31	Komarapalyam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3044	31	Gudimangalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3045	31	Bhavani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3047	31	Ariyappampalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3039	31	Perundurai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3053	31	Pugalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3054	31	Puliyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3058	31	Seeliyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3060	31	Kangayampalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3062	31	Avinashi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3064	31	Alagumalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3065	31	Karavalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3068	31	Anaimali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3069	31	Udumalaipet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3070	31	Vettaikaran Pudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3071	31	Kolumam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3067	31	Udamalpet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3072	31	Udagamandal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3074	31	Coonoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3075	31	Ootacamandu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3076	31	Glenmorgan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3077	31	Moyar Camp	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3078	31	Singara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3079	31	Jagathala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3080	31	Ithalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3081	31	Thummanathy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3082	31	Thoraihatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3086	19	Payyanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3088	19	Mannanthavaadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3083	19	Kannur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3090	19	Iritty	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3093	19	Nileshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3094	19	Kanhangad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3092	19	Hosdrug	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3087	19	Kalpetta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3098	19	Sulthan Batheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3103	19	Kondotty	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3105	19	Parappanangadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3111	19	Erimayur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3114	19	Varode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3115	19	Sreeramakrishnanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3107	19	Palakkad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3117	19	Chundampatta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3119	19	Kulukkallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3106	19	Nilambur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3121	19	Veeramangalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3122	19	Chalavara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3123	19	Karalmanna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3124	19	Attasseri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3125	19	Kalluvazhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3102	19	Mallapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3130	19	Guruvayur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3131	19	Irinjalakuda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3133	19	Kunnamkulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3134	19	Kadikkad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3135	19	Thriprayar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3136	19	Vatanappilly	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3137	19	Attur (Ker)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3127	19	Chavakkad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3132	19	Chalakudy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3140	19	Kodaly	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3141	19	Mala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3128	19	Thrissur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3144	19	Tatapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3145	19	Edapally	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3149	19	Aluva North	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3150	19	Kalmaserry	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3152	19	Gothuruthy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3154	19	Perumpavur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3155	19	Angamally	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3148	19	Aluva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3151	19	Paravoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3157	19	Pirmed	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3158	19	Udumbanshola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3160	19	Thodupuzha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3159	19	Devikulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3162	19	Changannaserry	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3163	19	Perunna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3167	19	Pampady	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3170	19	Peermede	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3171	19	Kunam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3172	19	Koorali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3168	19	Kanjirapally	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3173	19	Chittadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3174	19	Chemmalamattom	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3126	19	Kuttanad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3175	19	Edayirkkapuzha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3176	19	Manimala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3177	19	Alpra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3178	19	Kadayanikad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3180	19	Ramapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3181	19	Elikulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3182	19	Bharananganam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3183	19	Anjoottimangalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3184	19	Adukom	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3185	19	Chennad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3186	19	Adivaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3187	19	Moonnilavu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3188	19	Ettamanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3189	19	Idamattom	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3190	19	Ponad Karur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3191	19	Melampara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3179	19	Pala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3192	19	Pathampuzha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3166	19	Vaikam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3193	19	Attumannur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3194	19	Kurichithanam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3195	19	Kadukachira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3196	19	Kurianad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3197	19	Puthuveli Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3153	19	Kunnathunad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3201	19	Alleppey	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3203	19	Aroor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3204	19	Mannamcherry	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3206	19	Tiruvalla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3210	19	Kozhimala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3211	19	Thottabhagam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3212	19	Eraviperoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3213	19	Othera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3214	19	Kumbanad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3215	19	Pullad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3216	19	Maramon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3218	19	Othera West	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3217	19	Kuriannoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3219	19	Nedumpuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3220	19	Kunnamthanam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3221	19	Mepral	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3223	19	Niranam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3224	19	Parumala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3225	19	Niranam Centrl	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3226	19	Kadapra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3227	19	Kozhenchery	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3229	19	Kayakulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3230	19	Haripad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3232	19	Poruvazhy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3234	19	Ochira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3235	19	Kunnathur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3236	19	Nooranad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3209	19	Mavelikara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3237	19	Thangassery	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3239	19	Urukunnu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3240	19	Thenmala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3241	19	Aryankavu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3242	19	Chozhiakode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3243	19	Bharatheepuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3244	19	Mathra Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3245	19	Aryancave Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3246	19	Chozhiakode Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3248	19	Bharatheepuram Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3249	19	Valakode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3250	19	Tholikode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3251	19	Thalavoor Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3252	19	Avaneeswaram R.S Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3269	35	Baruipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3270	30	Ranipool	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3275	38	Shamshabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3280	6	Bisfi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3281	31	Melakkottaiyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3287	35	Panihati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
466	28	Jagraon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3304	18	Savalagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2514	18	Udupi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3308	17	Ratu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
753	33	Fatehpur (Uttar Pradesh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3312	5	Sawkuchi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3314	35	Aswini Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3315	3	Lankelapalem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3096	19	Kozhikhode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3316	19	Thiruvanthapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3321	19	Varkala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3325	28	Bagrian	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3327	6	Marauna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3335	28	Sherkhan Wala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3338	33	Birouli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3340	19	Santhigiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3344	33	Paswasara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3346	30	Namchi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3348	36	Nagsani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2852	31	Madurantakam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3352	35	Barakar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3353	30	Rangpoo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3354	13	Uchad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3356	14	Pehowa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3358	29	I.A.Jalore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3359	31	Budamur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3362	18	Alarwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3363	19	Naruvamoodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3364	5	Morigaon 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3366	19	Thellakom	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3369	39	Patamundai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3371	39	Rajgangpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3372	23	Tura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3376	6	Bathnaha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3377	32	West District	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3383	33	Mughal Sarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1953	21	Dabra  (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1980	21	Mandla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3388	5	Badarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3389	35	Nagarkata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3390	6	Dalsingsarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3392	35	Katwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3398	6	Mahuwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3073	31	Ooty	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3404	35	Egra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3406	35	Chittaranjan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3407	5	Mangaldai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3411	6	Sonpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3413	33	Baranadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3415	19	Vengallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3416	19	Vannapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3417	19	Karamcode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3419	17	Chandil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3420	17	Mahagama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2987	31	Karaikudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3425	21	Peoples Campus	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3426	31	Kovilpatti H O	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3428	21	Rgpv	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3431	32	Dharmanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3432	32	Rajbari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3434	13	Asodar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3436	6	Karakat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3438	19	Vlathankara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3439	6	Naugachhia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2682	18	Hadli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3441	17	Ghatotand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3443	33	Jindal Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3444	29	Bandar Sindari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3447	35	Kancharpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3449	31	Srivilliputhur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3450	17	Gola (Jharkhand)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3451	33	Deoria Railway Station	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3452	33	Sant Vinoba Marg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3457	32	Bishramganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3458	6	Kishanganj (Bihar-Madhepur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3459	33	Barwalia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3460	33	Babna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3461	33	Ugarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3462	33	Chamrawal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3463	33	Modhpur Wabai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3464	32	Tripura University	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3465	33	Dayalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3466	33	Asti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3467	33	Bibipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3468	33	Kathwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1555	1	Pirangut	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3470	35	Tribeni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2957	31	Tirunelveli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3474	5	Rangia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3475	5	Amerigog	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3481	1	Baina	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3414	17	Kanke	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3484	5	Naharkatia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3486	35	Janglpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3489	28	Vijay Nagar Amritsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3491	5	Itachali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3492	17	Angara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3493	5	Lahoal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3494	5	Digboi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3495	5	North Lakhimpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3496	31	Malumichampatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3497	13	Andada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3498	13	Varkund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3499	13	Magarwada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3501	18	Gokul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3503	3	Vengala Rao Colony	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3504	31	Navalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3506	31	Tamil University	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3507	35	Jadavpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3508	1	Sirsaim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3509	35	Agarpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3510	35	Diamond Harbour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3511	1	Mar-Goa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3513	35	Ghola Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3514	35	Kamarhati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
999	29	Sanganer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3515	35	Bidhan Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3516	1	Shekta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3517	36	Trikuta Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3518	28	Pola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3520	39	Kansnabhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3522	35	Andulberia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3524	23	Umling	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3526	31	Devanurpudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3527	35	Sodpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3528	35	Morepukur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3529	39	Kalunga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3530	21	Ujjain Rishinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
342	14	Farrukhnagar (Hr)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3531	36	Udheywala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3532	13	Sarthana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3533	33	Akha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
931	34	Pantnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
332	14	Manesar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3534	35	Sukchar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3535	3	Gpre College	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3536	3	Etcherla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3538	5	Dispur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3539	38	Geegugonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3540	38	Hasanaparthy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3541	13	Tithal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3542	35	Pansila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3543	17	Jharia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3544	35	Bandel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3546	35	Sopan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3548	35	Rahara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3549	31	Thindal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3382	14	Thanesar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3550	18	Karwar Naval Base	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3552	6	Danapur Cantt	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3553	31	Budur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3525	31	Kovilambakkam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1368	13	Dholka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3554	35	Barakpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3556	17	Adityapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
418	14	Jagadhari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3273	6	Muzaffarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
951	33	Gorakhpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3558	37	Kathakoni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3063	31	Palladam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3560	35	Dum Dum	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2998	31	Vellore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3561	31	Madambakkam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3564	3	Sujatha Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3565	29	Amba Bari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3566	35	Burnpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3567	5	Maligaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
412	14	Panchkula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3568	17	Bokaro Steel City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3569	34	Halduchaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3570	14	Jcd Vidyapeeth Sirsa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3572	13	Ganpat Vidyanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3573	38	Hanamkonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3574	33	Kurli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1294	13	Gandhinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3519	35	Ichapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3576	35	Shyamnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3577	5	Tezpur Medical College	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3578	5	Lepetkata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3579	35	Khardan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3580	33	Samesi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3581	33	Neewan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3582	33	Begariamau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3583	33	Sushant Golf City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2268	3	Atmakur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1519	1	Quepem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3584	35	Rajarhat Gopalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3586	35	Baltikuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3587	1	Dehu Alandi Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3589	4	Naharlagun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3590	1	Talandage	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3591	28	Khajurla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3592	5	Besesria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3593	6	Barhara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3595	17	Bengabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3596	32	Kamalghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3597	35	Bardhaman	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3599	35	Bansberia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3294	5	Borjhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3306	5	Dibrugarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3600	21	Ujjain Govt Engineering C	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3601	1	Khadkee	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3603	1	Bambolim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2232	3	Cuddapah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3290	39	Rourkela	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3608	35	Chaltia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3610	28	Bhindar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3611	6	Garkha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3612	33	Kandera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3613	14	Salimsar Majra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3614	3	Buchinaidu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3615	28	Mehraj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3616	3	Gandepalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3617	33	Bijwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3618	33	Kasna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
488	28	Bhilowal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3620	34	Selaqui	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3622	35	Satgram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3623	17	Maheshpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3624	33	Nichlaul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
707	33	Jasarana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3625	13	Vadgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3626	28	Balian	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3627	35	Chandrahati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3628	21	Piparia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
781	33	Barabanki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
721	33	Chaubepur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3629	13	Nandasan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3630	28	Threeke	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3631	15	Tahliwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3632	6	Dehrionsone	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3633	35	Churulia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3634	39	Ambapua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3635	29	Stps Suratgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3637	33	Atwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3638	31	Illupur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3642	6	Sour Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3644	6	Motihari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
881	33	Burhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3646	35	Adra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3652	5	Jogijan Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3659	4	Pasighat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1829	21	Dhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3660	3	Bhogasamudram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3661	18	Kanakgiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3663	31	Kattampoondi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3052	31	Karur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3665	18	Sriramnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3666	1	Degaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3668	33	Bagsara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1705	1	Navapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3669	39	Hirakud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3670	5	Lakhipur (Assam)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3671	13	Kuvadava	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3672	35	Salbani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3675	5	Sankardev Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3679	35	Budge Budge (Baj Baj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3680	32	Melaghar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3684	33	Khairgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3685	33	Bartara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3686	33	Keshpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3687	33	Khinmini	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
449	28	Derabasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3691	33	Metkaha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
708	33	Shikhohabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3692	35	Batanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2135	38	Siddipete	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1786	1	Telhara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3693	33	Alpur Maithara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3694	33	Mai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3695	6	Nokha (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3698	32	Sekerkote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3701	33	Ginja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3709	6	Jaynagar (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3711	1	Wadki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3712	1	Jule Solapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3713	1	Bavi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3545	14	Pataudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3715	14	Bighana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3716	14	Naguran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
399	14	Gohana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
423	14	Shahabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
469	28	Nihal Singh Wala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3717	28	Amroh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3334	28	Tanda (Punjab)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
556	28	T Sabo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3718	15	Shalot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3719	15	Katgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3720	15	Waknaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3721	15	Dhundan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3722	15	Barmana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3723	15	Tattapani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
655	36	Samba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
648	36	Ramnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3724	36	Chenai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
652	36	Kishtwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3725	36	Bhadarwah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3726	36	Vijaypur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
656	36	Hiranagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
657	36	Billawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
658	36	Poonch	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3728	36	Bani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
645	36	Akhnoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3729	36	Katra (J & K)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3472	30	Gangtok	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3730	36	Pampore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3732	36	Haran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3733	36	Gund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3734	36	Sonamarg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3735	36	Tral	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3736	36	Pahalgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3737	36	Manigam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3738	36	Kulgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3742	36	Trehgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3741	36	Kupwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3743	36	Sumbal 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3744	36	Gurej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3745	36	Manasbal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3747	36	Drass	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3749	36	Padum	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3750	33	Dundwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3751	33	Bara Kanour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3752	33	Bhagwant Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3753	33	Bighapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
807	33	Aakampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3754	33	Parsanda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3755	33	Goswa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3756	33	Aoras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
726	33	Banda (U P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
739	33	Kaushambi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
740	33	Chail	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3757	33	Ashapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
794	33	Jagdishpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
796	33	Rai Bareilly	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
801	33	Unchahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3758	33	Inhauna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3759	33	Pura Dhakwa Chauraha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3760	33	Kakari Project	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
821	33	Wyndhamganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
758	33	Chandauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3761	33	Barhepura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
699	33	Badaun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3762	33	Mundha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
844	34	Kashipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3763	33	Rampur [ Up ]	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3764	33	Kemri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3765	34	Rikhnikhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3766	34	Ghurdauri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
861	34	Chamoli( Gopeshwar )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
857	34	Rudraprayag (Uttnl)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
862	34	Joshimath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3768	34	Bhagirathipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3769	34	Chamiyala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3770	34	Mori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
915	34	Champawat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3771	34	Ghingartola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3772	34	Meshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3773	33	Achkawapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
947	33	Khalilabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3774	33	Gaunaria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3775	33	Jiyanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3776	33	Balaipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3777	33	Bamhaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
976	33	Mant	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3778	29	Tapukara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3779	29	Bighota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3780	29	Nims University	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1014	29	Kekri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3781	29	Nagola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1012	29	Beawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1025	29	Bali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3782	29	Binanigram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1043	29	Shahpura (Raj- Bhilwara)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1045	29	Mandaigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1048	29	Raipur (Raj-Bhilwara)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3783	29	Senthi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3784	29	Mandfia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1069	29	Amet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3785	29	Bambora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3786	29	Bankora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3787	29	Khandhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1093	29	Karauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3788	29	Kaithuda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1111	29	Sangod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3789	29	Sahwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1128	29	Sikar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3790	29	Poogal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1155	29	Merta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1167	29	Bhopalgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3791	29	Borunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3793	29	Khoohri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3794	13	Jesar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1265	13	Bhuj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3796	13	Sanghipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3797	13	Atps Nani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3798	13	Daypar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1319	13	Khedbrahma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1328	13	Vijaynagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1339	13	Sami	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1359	13	Mahudha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3800	13	Katwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3801	13	Malekpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1381	13	Santrampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3802	13	Tejgadh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1411	13	Bharuch	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1426	13	Narmada (Rajpipla)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3803	13	Nandod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3804	13	Mora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1447	13	Songadh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3805	13	Dangs	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1599	1	Chakur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3806	1	Ganjur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1626	1	Patan (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3807	1	Murgud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3808	1	Batkangale	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3809	1	Ambewadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1686	1	Kalvan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1691	1	Sakri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1702	1	Sindkheda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1704	1	Shahada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3810	1	Aherwahegaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1714	1	Waluj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3811	1	Sironcha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3812	1	Amadi Beguide	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3813	1	Manasa (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1796	1	Dhamni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3814	1	Manora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3815	1	Arak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3816	1	Amana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3817	1	Adoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3818	1	Bhokarbardi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3819	1	Zillla Parishad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1810	1	Khandala (Mah-Yavatmal)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3820	21	Chikhalda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1859	21	Alote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1860	21	Jaora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1870	21	Malhargarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3821	21	Bankheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3823	21	Bamhori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1907	21	Ashta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1910	21	Budhni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1931	21	Tikamgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1950	21	Khaniadhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1951	21	Pichhore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1946	21	Kolaras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3824	21	Sausar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3826	21	Jinnaurdeo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3827	21	Tamia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3828	21	Kirnapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1976	21	Baihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3830	21	Waraseoni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3831	21	Katangi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3832	21	Beejadandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3833	21	Murwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3835	21	Birsinghpur Pali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1995	21	Shahdol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3836	21	Sirmaur (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3837	21	Vindhya Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2024	21	Singrauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3838	21	Kareli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3840	21	Gunnor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3842	37	Lormi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3843	37	Marwahi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2084	37	Pendra Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3844	37	Bundeli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2093	37	Janjgirchampa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3845	37	Jspl Patrapli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2108	37	Jashpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2140	38	Marayankher	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3846	38	Telangana University	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3847	38	Rgu Iiit Campus Basar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2156	38	Asifabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3848	38	Tiryani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3849	38	Kothaguda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2175	38	Dharmasagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2179	38	Bhupalapalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2174	38	Ghanpur Station	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3850	38	Shayampet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2191	38	Narasimulapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2192	38	Chennaraopet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2195	38	Duggondi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2199	38	Parwathagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2202	38	Kothagudem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3851	38	Halia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2235	3	Nandalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3852	3	Dravidian University	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3853	3	Gospadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3854	3	Ayyavaripalle	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3855	3	Anandapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3856	3	Kathipudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3857	3	Denkada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2415	3	Makkuva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3858	18	Electronic City (Blr)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3859	18	Hanbalu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3860	18	Yeliyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3862	18	Panchanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3863	18	Avinahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3864	18	Belagur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2652	18	Mishrikoti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3866	18	Dotihal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3867	18	Tavargera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3868	18	Hanumanhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3869	18	Hanamsagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2783	18	Belgaum	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3870	18	Kulgod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3871	31	Tirrukoyilur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3872	31	Santhapettai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3873	31	Ulundurpettai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3874	31	Agarakottalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3875	31	Tiruvarur Collectorate	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2924	31	Manaparai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3878	31	Udaiyarpalaiyam (Perambalur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3879	31	Adaikalapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2979	31	Vilattikulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3880	31	Sarakeni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3393	31	Nilgiris	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3112	19	Mannarkkad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3882	19	Pattambi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3129	19	Trichur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3247	19	Punalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3883	19	Paravur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3884	35	Sapuipara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3521	35	Liluah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3885	35	Jagaeha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3262	35	Bagnan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3886	35	Kona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3318	35	Uluberia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3888	35	Dhaniakhali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3889	35	Khanakul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3890	35	Goghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3380	35	Arambagh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3283	35	Serampore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3891	35	Aogram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3892	35	Anukhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3893	35	Agardanga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3894	35	Belna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3895	35	Basudha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3896	35	Berenda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3897	35	Gramdighi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3898	35	Gushkara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3899	35	Amgoria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3900	35	Chanak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3901	35	Bapa Parulia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3902	35	Amar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3903	35	Auria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3904	35	Mankar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3905	35	Asanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3906	35	Memari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3907	35	Athghara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3909	35	Chanchai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3910	35	Bhuera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3911	35	Parisha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3912	35	Amadpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3913	35	Amaragarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3914	35	Ausgram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3915	35	Akalpoush	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3916	35	Barabelun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3917	35	Gonpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3918	35	Hatkirtinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3919	35	Nasigram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3920	35	Orgram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3921	35	Paharhati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3922	35	Shilampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3923	35	Singerkone	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3924	35	Suata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3925	35	Trilokchandpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3926	35	Uniatatarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3341	35	Raniganj (West Bengal)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3471	35	Baraboni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3930	35	Rupnarayanpur (W B)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3928	35	Salanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3342	35	Kulti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3621	35	Andal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3927	35	Pandeswar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3293	35	Jamuria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3929	35	Laudoha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3931	35	Habaspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3933	35	Jamalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3935	35	Muraripur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3936	35	Panagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3937	35	Begpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3938	35	Borar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3939	35	Rainagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3254	35	Burdwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3940	35	Barapalashan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3941	35	Bohar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3942	35	Bhuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3943	35	Ura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3944	35	Nibhuji Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3945	35	Bagnapara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3946	35	Agradwipn Rs	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3934	35	Kalna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3947	35	Dirghapara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3948	35	Panuhat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3949	35	Shibpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3950	35	Nrisinghapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3951	35	Balichak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3955	35	Keshiyari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3956	35	Kultikri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3957	35	Mechada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3958	35	Nayagram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3960	35	Keshpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3952	35	Garhbeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3962	35	Dalpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3963	35	Chandrakona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3959	35	Ghatal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3964	35	Dantan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3966	35	Ramnagar (W B)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3965	35	Digha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3405	35	Jhargram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3968	35	Raghunathbari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3969	35	Tamluk	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3970	35	Kismatbajkul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3967	35	Nandigram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3961	35	Daspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3585	35	Haldia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3975	35	Joypur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3976	35	Khatra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3978	35	Mejia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3973	35	Ranibandh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3980	35	Taldangra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3982	35	Saltora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3981	35	Simlapal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3971	35	Bishnupur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3983	35	Jorda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3974	35	Chhatna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3972	35	Gangajalghati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3977	35	Barjora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3984	35	Balrampur ( W B )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3985	35	Barabhum	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3986	35	Hura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3990	35	Puncha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3987	35	Santuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3991	35	Bargoria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3989	35	Para	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3993	35	Jhalida	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3988	35	Baghmundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3995	35	Panchrahat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3996	35	Bansihari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4000	35	Balurghat (Dakshin Dinajpur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4001	35	Kaliyaganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4002	35	Kushmandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4003	35	Raiganj (Uttar Dinajpur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4004	35	Islampur (W B)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4005	35	Ramganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4006	35	Panjipara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4008	35	Goalpokhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4007	35	Karandighi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4009	35	Kurseong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4010	35	Gorubathan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4011	35	Rajganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3648	35	Falakata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4014	35	Matiali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4016	35	Sailihat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3296	35	Dhupgari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4012	35	Mal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4015	35	Mainaguri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3337	35	Jalpaiguri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3609	35	Alipurduar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4017	30	Pakyong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4018	30	Dikchu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4020	30	Pelling	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4021	30	Mangan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4023	30	Jorethang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4024	30	Melli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4025	30	Rangli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4026	30	Rhenock	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4027	30	East Sikkim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4029	30	Ravangla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4030	35	Tehata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4032	35	Chapra (Nadia)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4033	35	Bethauadohory	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4035	35	Karimpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4038	35	Jiaganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3604	35	Berhampore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4039	35	Barwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3418	35	Beldanga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3455	35	Bhagwangola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4040	35	Kandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4041	35	Khargram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4042	35	Lalgola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4043	35	Laskarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3355	35	Lalbagh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3649	35	Hariharpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4044	35	Farakka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4045	35	Raghunathganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4046	35	Sagardighi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3650	35	Bharatpur (West Bengal)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4047	35	Domkal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4048	35	Jalangi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3607	35	Jangipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4049	35	Aminabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4050	35	Kankinara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4051	35	Halisahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4052	35	Banipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4053	35	Bangaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4054	35	Gaighata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3488	35	Habra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4056	35	Swarupnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4057	35	Basanti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4058	35	Birlapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4059	35	Baradrono	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4060	35	Kakdwip	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4061	35	Kulpi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4062	35	Bamankhali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3255	35	Alipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4063	35	Baduria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4064	35	Deganga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4065	35	Hasnabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4066	35	Hingalganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4067	35	Dhanyakuria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4068	35	Janjalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4069	35	Sandesshkhali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4070	35	Bhangar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4071	35	Fatehpur  (West Bengal)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4075	39	Banapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4076	39	Khandaparagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4077	39	Dashapalla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4078	39	Raja Ranapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4079	39	Nimaparha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4080	39	Banki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3704	39	Jagatpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4082	39	Narsinghapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3328	39	Kujang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4084	39	Kishorenagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4087	39	Marshaghai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4088	39	Raj Kanika	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4089	39	Rajnagar (Orissa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3708	39	Athagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4091	39	Sunguda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4093	39	Deepshika	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4094	39	Sukinda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4100	39	Soro	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4099	39	Nilagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4096	39	Baliapal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4102	39	Dhamnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4103	39	Chandbali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4101	39	Simulia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4107	39	Karanjia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4105	39	Betnoti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4104	39	Udala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3378	39	Anandapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4109	39	Champua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4108	39	Telkoi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4111	39	Hindola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4110	39	Kamakhyanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4112	39	Athamallik	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4113	39	Igit Sarang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3257	39	Berhampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4118	39	Chikitigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4117	39	Kodala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4120	39	Gangapur  (Orissa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4114	39	Digapahandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4115	39	Gajapati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4121	39	Phulbani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4122	39	Tikabali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4123	39	Phiringia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4124	39	Ramagiri Udayagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4127	39	Gumagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4128	39	Nandapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4129	39	Machhakund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4130	39	Boriguma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4134	39	Umerkote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4136	39	Kashipur (Orissa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4137	39	Bissamcuttack	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4138	39	Jayapatna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4140	39	Dharamgarh (Orissa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3385	39	Bhawanipatna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4143	39	Navaparha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4142	39	Naupada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4145	39	Birmaharajpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4146	39	Patnagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4148	39	Turekela	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4144	39	Sonepur (Orissa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3674	39	Burla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4151	39	Sohella	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4152	39	Jagdalpur (Orissa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4153	39	Jujumura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4154	39	Naktideul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4155	39	Tileibani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4149	39	Attabira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4157	39	Jamankira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4158	39	Maneswar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4160	39	Rengali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4161	39	Kolabira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4162	39	Brajraj Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4163	39	Laikera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4165	39	Bamra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4166	39	Hemagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4167	39	Banel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4168	5	Po- Udayan Vihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4169	5	Nagaon Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4170	5	Dhanbil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3276	5	Barpeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4171	5	Baksa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4173	5	Mikirbheta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4174	5	Balisatra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4175	5	Dhing	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4176	5	Juria 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4177	5	Rupahi 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4178	5	Kaliabor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4179	5	Missa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4180	5	Bebejia 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4181	5	Naltoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4182	5	Baligaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4183	5	Sonapur Block	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4184	5	Kampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4185	5	Kaoimari 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3657	5	Hojai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4186	5	Lanka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4187	5	Karbianglong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4188	5	Bokajan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4189	23	Mankachar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3476	5	Tezpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4191	5	Balipara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4192	5	Lokra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4193	5	Chariduar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4194	5	Shalonibari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4195	5	Alisinga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4197	5	Kharupatia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4198	5	Thelamara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3676	5	Ketekibari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4199	5	Borgong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4200	5	Halem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4201	5	Tetenbari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4202	5	Barangabari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4203	5	Mijikajan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4204	5	Pabhoi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4205	5	Sootea	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4206	5	Biswanath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4207	5	Kalabari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4208	5	Bedeti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4209	5	Jamugurihat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4210	5	Naharbari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4211	5	Gingia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4212	5	Karsontala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4214	5	Borjuli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3653	5	Sonitpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4215	5	Missamari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4216	5	Udalguri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4196	5	Darrang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4217	5	Chapaichowka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4218	5	Majoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4219	5	Bokakhat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4220	5	Moran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4221	5	Moranhat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4222	5	Sivasagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4224	5	Barbarooah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4225	5	Dikom	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3502	5	Chabua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4227	5	Chapakhowa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3394	5	Margherita	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4228	5	Teghakhat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4229	5	Rajgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4230	5	Tinghkhong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4231	5	Bamunbari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4233	5	Parbatpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4234	5	Jonai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4235	5	Nilakh Chariali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4237	4	Seppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4238	4	East Kameng Seppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4239	4	Tawang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4240	4	Bhalukpong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4241	4	Tenga Valley	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4242	4	Along	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4243	4	Yingkiong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4245	4	East Siang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4246	4	Tuting	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4247	4	Nirjuli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4248	4	Kurung Kumey	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4249	4	Lower Subansiri(Ziro)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4250	4	Upper Subansiri (Daporijo)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3291	4	Itanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4251	4	Jirigam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4253	4	Anini (Diban Valley)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4255	4	Roin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4254	4	Lohit(Tezu)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4252	4	Changlang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4257	4	Deomali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4258	4	Longding	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4259	23	Nongmynng	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3274	23	Shilong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4260	23	Narpuh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4261	23	Nongpoh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4263	23	Zikzak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4266	23	Baridua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4268	23	Pynursla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4269	23	Selsella	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4265	23	East Khasi Hill	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4270	23	Mawkyrwat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4271	23	Nongstoin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4264	23	West Khasi Hill	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4272	23	Mawphlang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4262	23	Ri Bhoi District	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4274	23	Thadlaskein	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4267	23	Jaintia Hill	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4275	23	Khliehriat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4277	23	Chokpot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4278	23	Baghmara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4279	23	Dudhnai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4280	23	East Garo Hill	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3478	5	Goalpara (Assam)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4281	23	Rongjeng	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4282	23	William Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4283	23	Rongra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4284	22	Imphal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4287	22	Karong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4288	22	Chingmang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4289	22	Maram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4296	22	Moirang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4294	22	Bishnupur (Manipur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4291	22	Chandel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4286	22	Imphal East	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4297	22	Ukhrul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4298	22	Yangangpokpi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4285	22	Imphal West	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4295	22	Thamenglong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4301	24	Thenzawl	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3571	24	Champhai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4300	24	Serchhip	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4303	24	Lawngtlai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4304	24	Saiha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4308	25	Chumukedima	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4310	25	Pfutsero	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4306	25	Peren	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4305	25	Wokha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3442	25	Dimapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4307	25	Phek	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4311	25	Artc	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4309	25	Rangapahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4315	25	Kiphire	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4314	25	Mon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4318	25	Longleng	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4316	25	Tuensang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4319	32	Bishalgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4320	32	Jatanbari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4321	32	Namura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4322	32	Khowai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4323	32	Baramaidan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4325	32	Badlabari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4326	32	Mohanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4327	32	Sidhai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4328	32	Halflongcherra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4329	32	Tripura Damcherra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4324	32	Dhalai District	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4330	32	Ambasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4331	6	Maner	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3619	6	Paliganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4332	6	Ekangar Sarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4333	6	Hilsa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4334	6	Islampur (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3347	6	Buxar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4335	6	Behea	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4336	6	Sandesh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4337	6	Sahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4338	6	Tarari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4339	6	Dinara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3430	6	Dawath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4340	6	Rajpur (Bihar- Rohtas)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4341	6	Chatpokhri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3401	6	Piro	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4342	6	Asthanwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4343	6	Giriak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3386	6	Chandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4344	6	Rajgir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4345	6	Nursarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4346	6	Harnaut	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4349	6	Ghoshwari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3681	6	Barh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4350	6	Arwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4352	6	Karpi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4353	6	Koka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4354	6	Ghosi (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4355	6	Dhanaun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4358	6	Gobindpur (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4359	6	Hisua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4360	6	Kuakol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4361	6	Kosi  (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4362	6	Nawada Kutchery	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4363	6	Parnawada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4364	6	Narha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4365	6	Pakri Barawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4366	6	Rajauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4367	6	Waris Aliganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4369	6	Jethian	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4370	6	Bar Bigha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4371	6	Sarmera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4373	6	Ariari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4374	6	Surajgarha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4377	6	Dharbara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4375	6	Halsi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4380	6	Jhajha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4381	6	Lakshimpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4382	6	Mallehpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4383	6	Sikandra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4379	6	Chakai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4384	6	Khaira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4385	6	Amarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4387	6	Shahkunal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4389	6	Pirpainti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4390	17	Bara Boarijor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4391	6	Pripainti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4392	6	Sangrampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4393	6	Dhuraiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4394	6	Sonahula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4376	6	Sultanganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3575	6	Sabour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4395	6	Mahuratanr	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4396	17	Ramgarh (Jhar- Dumka)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4398	17	Amrapara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4399	17	Jarmundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4400	17	Jamua (Dumka)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4401	17	Pathargama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4402	17	Modhanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4403	17	Saraiyahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4404	17	Poreya Hat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4407	17	Ranga Masalia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4408	17	Birni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4409	17	Deori (Jharkhand)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3272	17	Deoghar (Jharkhand)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4411	17	Madhupur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4412	17	Nala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4413	17	Karon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4406	17	Kundahit	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4415	17	Berhait	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3370	17	Hiranpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4397	17	Gopikandar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4418	17	Dhanbasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4419	17	Taljhari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4421	6	Chainpur (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4422	6	Durgawati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4423	6	Kudra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4424	6	Karghar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3402	6	Mohania	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4425	6	Nasriganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4426	17	Chainpur  (Jharkhand - Palamu)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4428	17	Chhatarpur (Jharkhand)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4429	17	Lesilieganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4430	17	Mahuwadand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4431	17	Dhurki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3710	17	Garhwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4432	17	Patan (Jharkhand)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4433	17	Ranka Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4434	17	Manika	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3605	17	Daltenganj (Palamu)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4437	17	Bishrampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4435	17	Meral	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4439	6	Gardi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4442	6	Hanspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4443	6	Kutumba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4444	6	Obra (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4445	6	Rajiganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4440	6	Barun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4441	6	Daudnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4446	6	Barachatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4448	6	Gurua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4449	6	Imamganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4450	6	Madapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4451	6	Paraiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4447	6	Deo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4454	6	Bankey Bajar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4455	6	Mohanpur (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4438	6	Atri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4351	6	Belganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4456	6	Tekari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4457	6	Nabinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4459	17	Simaria Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4460	17	Pirtanr	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4461	17	Satgawan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4462	17	Dumri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4463	17	Barkagaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4464	17	Bishungarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4465	17	Markacho	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4467	17	Tandwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4468	17	Barakatha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4469	17	Jainagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4471	17	Ichak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4474	17	Chauparan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4475	17	Itkori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4476	17	Ramgarh Cantt	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4477	17	Gumia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3440	17	Ramgarh (Jhar- Hazaribagh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4479	17	Nawadih	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4480	17	Ramgarh Project	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4470	17	Chatra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4481	17	Balumath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4427	17	Latehar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4484	17	Narwa Mines	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4483	17	Ghatsila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3551	17	Tatanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4485	17	Chakradharpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4486	17	Noamundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4487	17	Meghahataburu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4488	17	Muri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4490	17	Partabpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4491	17	Bundu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4492	17	Chainpur (Jharkhand - Gumla)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4493	17	Rajdih	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4495	17	Khunti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4496	17	Kolebira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3559	17	Mandar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4498	17	Murhu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3480	17	Ormanjhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4499	17	Palkot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4501	17	Tamar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4502	17	Kamdara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4503	17	Basia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4504	17	Bishunpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4505	17	Bhandaria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4494	17	Karra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4500	17	Simdega	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4506	17	Itki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4489	17	Gumla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4507	17	Nagjua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4508	6	Dighwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4509	6	Manjhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4510	6	Baniapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4511	6	Masrakh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4512	6	Katia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4513	6	Nagra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4514	6	Narendrapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4515	6	Uchkagaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3396	6	Gopalganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4518	6	Bhirha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4519	6	Dholi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3421	6	Kanti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4524	6	Paru Ii	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4525	6	Bandra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4528	6	Muraul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4521	6	Paru I	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4529	6	Rupnarayanpur (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4530	6	Baruraj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4517	6	Sakra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4531	6	Marwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4527	6	Minapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4536	6	Bazpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4537	6	Belsand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4538	6	Pupri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3373	6	Nanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4540	6	Riga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4542	6	Sursand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4543	6	Majorganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4544	6	Balwakuari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4546	6	Bhaghwanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4547	6	Kalyanpur (Bihar - Vaishali)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4549	6	Lalganj (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4520	6	Kurhani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4522	6	Patepur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4552	6	Patori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3448	6	Hajipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4545	6	Bidpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4553	6	Mahnai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4554	6	Raghopur (Bihar- Vaishali)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4556	6	Bagaha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4557	6	Gaunaha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4558	6	Bara Chakia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4561	6	Baheri  (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4563	6	Halaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4559	6	Benipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4562	6	Jhanjharpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4560	6	Benipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4564	6	Nirmali (Madhubani)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3266	17	Jamshedpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4568	17	Boram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4569	17	Silaphari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4570	6	Kalwari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4572	6	Saho Parari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4573	6	Alauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4574	6	Chapram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4575	6	Kumar Khad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4576	6	Bishanpurarar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4535	6	Aurai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4577	6	Alamnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4578	6	Salkhua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4579	6	Simri Bakhtiarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4580	6	Singheswar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4581	6	Sonbarsa Raj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4582	6	Shankarpur Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4583	6	Janardanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4584	6	Chhatapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4585	6	Kishanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4586	6	Tribaniganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4587	6	Mahisi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4588	6	Piprahi (Bihar-Supaul)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4589	6	Gopalpur (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4590	6	Bhargama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4591	6	Baisi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4592	6	Basantpur (Bihar - Araria)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4566	6	Supaul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4593	6	Basantpur (Bihar - Supaul)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4594	6	Dighalbank	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4596	6	Kochadhamin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4597	6	Thankurganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
408	14	Nigdhu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
403	14	Indri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
555	28	Muktsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4599	15	Dehar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
646	36	Nagrota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
649	36	Ramban	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
462	28	Khanna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4600	28	Raipur Pirbuxwala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4601	28	Roorka Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4602	28	Jandiala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4603	28	Partabpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4604	28	Bilga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4605	28	Pasla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4606	28	Talwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4607	28	Dhesian Kahna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4608	28	Mahatpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4609	28	Shanker	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4610	28	Sarih	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4611	28	Sidhwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4612	28	Nagra (Pb)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4613	28	Banra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4614	28	Banbhauran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
489	28	Batala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
509	28	Pathankot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1305	13	Aslali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4615	13	Bilodara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4616	13	Meu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4617	13	Karjisan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1264	13	Dhari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1194	13	Porbandar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1317	13	Sabarkantha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1441	13	Kadodra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4618	18	Nandi Hills	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2495	18	Gubbi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4619	18	Echanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4620	18	Halepalya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4621	18	Chandpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4622	31	Sulgiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4623	18	Devalatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4624	18	Halgatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4625	18	Sinoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4626	18	Manakapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4627	18	Vakkund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4628	18	Attigere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4629	18	Gulbarga - General Hospital	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4630	18	Gulbarga - Niloor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4631	18	Gulbarga - Nimbarga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4632	18	Gulbarga - Mannur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4633	18	Gulbarga - Kollur (Yadgeri)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4634	18	Gulbarga - Kadachur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4635	18	Gulbarga - Kodla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4636	18	Gulbarga - Dornahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4637	18	Gulbarga - Belwadgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4638	18	Gulbarga - Yelasingi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4639	18	Gulbarga - Bhankur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4640	18	Gulbarga - Bilicharkar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2722	18	Gulbarga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2628	18	Kelgeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4641	18	Belagutti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4642	18	Bage	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4643	18	Belagodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4644	18	Kowsika	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2508	18	Hassan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4645	18	Subashnagar (D K)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4646	18	Suranthkal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4647	18	Kulai Hosabettu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4648	18	Kuthethur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4649	18	Jeepinamogru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4650	18	Kannur (D K)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4651	18	Kulai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4652	18	Korangrapdi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4653	18	Bajal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4654	18	Panjinadka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4655	18	Makode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4656	18	Amachavadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4657	18	Alur (Cnr)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4658	18	Ganaganur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2459	18	Kollegal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4659	18	Kaliyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4660	18	Agara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4661	18	Kinkanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4662	18	Santhekatte (Kalathur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4663	18	Rangapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4664	18	Bannikuppe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4665	18	Chilakunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4666	18	Murkal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4667	18	Kampla Pura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4668	18	Bellary - Turangal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4669	18	Dhanagalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4670	18	Kotekere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4671	18	Thondavadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4672	18	Varakodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4673	18	Bisalavadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4674	18	Venkatainachatra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4675	18	Hebbalaguppe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4676	18	Naganahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4677	18	Thumbasoge	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4678	18	Hebbasuru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4679	18	Jothigowdanapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4680	18	Kudlur (Nanjangud)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4681	18	Nagavalli (Njd)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4682	18	Kottalavadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4683	18	Bilugali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4684	18	Binakanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4685	18	Doddahibhagllu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4686	18	Horalahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4687	18	Hundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4688	18	Soman Halli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4689	18	Devanur (Nanjangud)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4690	18	Hosa Alagodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4691	18	Muguru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4692	18	Kempanapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4693	18	Saragur (Cnr)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4694	18	Ramanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4695	18	Kodagalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4696	18	Kestur (Hunsur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4697	18	Seehalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4698	18	Bheemnabeedu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4699	18	Chandakavadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4700	18	Karadigodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4701	18	Hills	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4702	18	Bailkupa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4703	18	Nerale	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4704	18	Ummattur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4705	18	Hadinaru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4706	18	Yedakola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4707	18	Heggadahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4708	18	Ramapura (Njd)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4709	18	Kestur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4710	18	Kottatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4711	18	Beersettihalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4712	18	Kunagalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4713	18	Kuntur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2487	18	Channapatna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2490	18	Krishnarajanagara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2461	18	Hunsur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2479	18	Nagamangala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4714	18	Kothegala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4715	18	Katipalla(Mrpl)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1476	1	Mumbai City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1485	1	New Bombay	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4716	1	Â Kihim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4718	1	Barnes High School	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4717	1	Dombivali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4055	35	Basirhat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3412	35	Chandannagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3602	35	Midnapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3636	35	West Medinipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4720	35	Sankarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4034	35	Kaliganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4036	35	Ranaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4031	35	Krishnanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3410	35	Nadia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3647	35	Purulia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3339	35	Chinchura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3887	35	Pandua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3268	35	East Medinipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3954	35	Panskura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4722	35	Kajoldighi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4723	35	Coochbehar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4724	35	Hemtabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3999	35	Gangarampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4725	35	Chopra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3997	35	South Dinajpur (Belurghat) 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3998	35	North Dinajpur (Raiganj) 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3606	35	Binnaguri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4028	30	Singtam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4726	31	Valliamkadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4727	31	Thekkampatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4728	31	Negamam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4729	31	Jallipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4730	31	Manamboli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4731	31	Kadamparai Dam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4732	31	Ramanamudalipudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4733	31	Chinnanegamam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4734	31	Thirumurthinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4735	31	Kadamparai Power House	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4736	31	Kaniyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3059	31	Pollachi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4737	31	Thalakundah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3057	31	Mettuppalaiyam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4738	19	Padagiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4739	31	Allikuttai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3200	19	Alleppy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3097	19	Badagara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4740	19	Iyyad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3099	19	Koyilandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3143	19	Ernakulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4741	19	Vizhikithode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4742	19	Nattika Beach Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3116	19	Thalapilly	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3139	19	Kodungallore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4743	31	Pothumbu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4744	31	Chatrapatti Mdu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4745	31	Vellalapatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4746	31	Kidaripatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4747	31	Thenur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4748	31	Vavimarudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4749	31	Idaivchivalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4750	31	Vadipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4751	31	Tiruvesaloor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4752	31	Chandrasekarapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4753	31	Inayuthukkanpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4754	31	Karitpati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4755	31	M Puliyangulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4756	31	Kaliavoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4757	31	Kittilapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4758	31	Kila Iral	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4759	31	Mirankulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4760	31	Vallakulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4761	31	Thattarmadam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4762	31	Manikandam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2925	31	Kulittalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2916	31	Tiruchirapalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4763	31	Valandu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3231	19	Karungappally	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3310	19	Nedumangad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3317	19	Chirayinkeezhu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3336	5	Cachar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4764	5	Bandarmari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4765	5	Singimari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4766	5	Po-Sonitpur, Dt- Tezpur, Bhairadpad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4767	38	Patancharu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2328	3	Nuzendla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4769	21	Jabalpur Bargi Irrigation	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4770	21	Bedaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4771	21	Shahnagar (Jabalpur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3834	21	Kymore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4773	21	Bujbuja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2004	21	Rewa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2010	21	Teonthar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4774	21	Tilkhan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4775	21	Mahason	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1997	21	Ramjpur Baghelan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4776	21	Nayagaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1842	21	Kannod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4777	21	Fatahabad Chandrawantigan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4778	21	Harsola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4779	21	Barotha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1821	21	Badwani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1958	21	Seondha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1858	21	Ratlam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1844	21	Ujjain	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1756	1	Mauda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4780	1	Amgaon Dighori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1782	1	Buldhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1744	1	Chandrapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2057	37	Bhatgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2051	37	Baloda Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4781	29	Palana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4782	29	R C P Colony	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4783	29	Banura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4784	29	Kasli Sikar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4785	29	Kolida	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4786	29	Garoda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4787	29	Mangloona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4788	29	Khuri Badi Sikar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4789	29	Puranabas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4790	29	Bhudoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4791	29	Chala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4792	29	Govindpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4793	29	Dhod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1010	29	Kishangarh (Raj-Ajmer)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1008	29	Ajmer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1044	29	Kotri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1040	29	Asind	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4794	29	Mesar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4795	29	Soyla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4796	29	Keru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4797	29	Agolai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1161	29	Jodhpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4798	29	Kharia Kangar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4799	29	Sathin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4800	29	Kosana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4801	29	Ajit	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1053	29	Gangrar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4802	29	Lakadwas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4803	29	Dabok Air Port	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4804	29	Debari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4805	29	Tokar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1075	29	Girwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4806	39	Talabasta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4807	39	Sidheswarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3706	39	Niali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4808	39	Chak Barhapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4809	39	Sankhatras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4810	39	Rasulpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4812	17	Tisra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3562	17	Chas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4482	17	Dakra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4473	17	Barhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3423	17	Mandu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4472	17	Hunterganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3424	17	Patratu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4813	17	Religarha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4814	17	Chanho	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4815	17	Lapung	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3261	17	Lohardaga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4816	17	Bhandra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4817	6	Tarapur (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3422	6	Bihpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4818	6	Dargah Bela	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4356	6	Masaurhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4819	6	Amdabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4821	33	Arsun Bangar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
720	33	Kanpur Dehat 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
780	33	Ambedkarnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4822	33	Khutehna Chauraha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
824	33	Hardoi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4824	33	Paina Bujrag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4825	33	Sahbaj Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4826	33	Ahmadpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4827	33	Barewda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4828	33	Dadraul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4829	33	Bhawal Khera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4830	33	Chauhatian	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4831	33	Mauzam Pur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
912	33	Kheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4832	33	Keolariya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
944	33	Siddharth Nagar (Naugarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
955	33	Sounoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4072	40	Port Blair	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4834	40	Nicobar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4835	31	Thondamanatham	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2868	31	Pudducherry	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
391	14	Kundli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4837	14	Khorra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
373	14	Tohana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
374	14	Mehanda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4838	14	Talao	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4839	14	Ritauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4840	14	M P Majra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4841	14	Mehrana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
350	14	Bahadurgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4842	14	Distt Jhajjar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3767	34	Kalsi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
860	34	Tehri Garhwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4843	33	Baghpat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4844	33	Gagalheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4845	33	Jaspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4846	34	Kanali Chhina	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1688	1	Gangapur (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1713	1	Jalna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1656	1	Ajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4847	1	Sonai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4848	1	Belpukur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4849	1	Kelgh-Ar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4850	1	Gunavare	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4851	1	Nimblak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4852	14	Crpf Kadarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3714	14	Mahendergarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4853	14	Neemariwali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4854	14	Nihalgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
415	14	Chandi Mandir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
446	28	Rajpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4855	28	Chuni Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4856	28	Khamno	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
474	28	Tarn Taran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4857	28	Bhalwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4858	28	Harindra Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4859	28	Railway Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4860	28	Sitto	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4861	15	Ghanahatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4862	15	Baldeyan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4863	15	Dhualakuan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4864	15	Haripurdhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4865	15	Kuthar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4866	15	Holi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4867	36	Nagrota Gujroo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4868	36	Rehtal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4870	36	Kotdhara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4871	36	Zakoora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4872	36	Skuast	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4873	36	Wagoora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3739	36	Rajpora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4874	36	Kunzer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4875	36	Aloosa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3746	36	Leh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
680	33	Gautam Budh Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
684	33	Greater Noida	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4876	33	Belon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4877	33	Andhiyar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4878	33	Bhikampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4879	33	Asadpur Gher	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
696	33	Bulandshahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4880	33	Anchrookalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4881	33	Dighi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4882	33	Kamona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4883	33	Darawer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4884	33	Chiroury	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4885	33	Kuchesar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4886	33	Bugrasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4887	33	Narsena	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4888	33	Bihra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4889	33	Kharpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4890	33	Bigraou	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4891	33	Kishni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4892	33	Kusmara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4893	33	Rustamgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4894	33	Sonhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4895	33	Bilsari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4896	33	Arjunpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4897	33	Achalganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4898	33	Mohan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4899	33	Dandupur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4900	33	Ntpc Kohdar Meja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4901	33	Kustha Seva Ashram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4902	33	Jangipur Khurd	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4903	33	Bhilsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4904	33	Mawai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4905	33	Meermau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4906	33	Patranga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4907	33	Subeha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
791	33	Trivediganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4908	33	Belwai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4909	33	Rail Coach Factory	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
805	33	Lal Gopal Ganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4910	33	Prithviganj Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4911	33	Bhanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4912	33	Budaun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4913	33	Allahpur Samaspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4914	33	Bhavipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4915	33	Atarpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4916	33	Bankota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4917	33	Gawan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4918	33	Bhirawati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4919	33	Sonakpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4920	33	Akrauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4921	33	Haryana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4922	33	Guarau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4923	33	Babura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4924	34	Padampur Sukhro	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4925	34	Srikot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4926	34	Rajakhet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4927	34	Gangotri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4928	34	Jajardewal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
926	33	Lakhimpur Kheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
941	33	Shravasti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4929	33	Koluhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4930	33	Paniyara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4931	33	Orwalliya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
967	33	Kushinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4932	33	Chakara Gosai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4933	33	Kushmaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4934	33	Jhapara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4935	33	Urawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4936	33	Uresar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4937	29	Kookas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
998	29	Amer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4938	29	Vedaant Gyan Valley	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4939	29	Bhainsawa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4940	29	Roopwas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4941	29	Champaneri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4942	29	Jamola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4944	29	Bharja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4945	29	Peepalkhunt	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4946	29	Parla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4947	29	Sadas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4948	29	Thairawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4949	29	Bherupura Antri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4950	29	Badipura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4951	29	Kstpp Jhalawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4953	13	Khakhrechi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4954	13	New Dudhai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1298	13	Mehsana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1357	13	Nadiad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4955	13	Godhra Bhuravav	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4956	13	Manjusar Gidc	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4957	13	Jolva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4958	13	Saras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4959	13	Panwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1456	13	Kaprada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1637	1	Aundh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4960	1	Anjanvel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4961	1	Kabnur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4962	1	Subhashnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4963	1	Umbarde	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4964	1	C.T. Mill Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4965	1	Fattepur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4966	1	N M University Jalgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4967	1	Kurha-Kakoda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4968	1	Kanchanwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4969	1	Wadwani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4970	1	Yesgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4971	1	Bramhankheda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4972	1	Rajur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4973	1	Shankarnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1774	1	Pombhurna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4974	1	Mulchera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4975	1	Chaitanya Wadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4976	1	Zari Jamani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4977	21	Simrol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4978	21	Nariyal Kheda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4979	21	Nazirabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4980	21	Tyonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4981	21	Sultanaganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3822	21	Bamora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4982	21	Gaurihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1943	21	Mungaoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4983	21	Bajag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1994	21	Umaria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1993	21	Anuppur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4984	21	Bahri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4772	21	Raipura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4985	37	Mana Basti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4986	37	Ibc Raipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4987	37	Komakhan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4988	37	Kopra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2064	37	Deodhog	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4989	37	Saragaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4990	37	Tamnar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4991	37	Punjipathra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4992	37	Dandgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4993	37	Khadgawan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2117	37	Manendragarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4994	38	Kamareddy Rs	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4995	38	Zirayathnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2169	38	Kuravi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2167	38	Mahbubabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3469	38	Palakurthy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4996	38	Jadalpeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4997	38	Chitakodur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4998	38	Anatharam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4999	38	Molkacharla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2244	3	Pulivendla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5000	3	Venkatapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5001	3	Sricity Sez	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5002	3	Pangulur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5003	3	Apgenco Nelatur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5004	3	Aganampudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5005	3	Cheedigummala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2383	3	Tokkali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2395	3	Ramchandrapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5006	3	Mothugudem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5007	3	Donkarayi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5008	3	V R Puram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5010	3	Thotapalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5011	3	Kuchimpudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5012	3	Kukunoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5013	3	Akkampeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5014	3	Kothavalasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5015	3	Barli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5016	3	Jiyyammavalsa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2452	18	Kolar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5017	18	Budikote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5018	18	Vemagal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2458	18	Mysore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5019	18	Hanagodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5020	18	Boovanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5022	18	Belagalapete .	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5023	18	Gims Gadag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2693	18	Bellary	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5024	18	Darur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5025	18	Mudhol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5026	18	Hiresindogi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5027	18	Irkalgad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5028	18	Kalaburagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5029	18	Nittur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5030	18	Bagalkot Uhs	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5031	18	Hippargi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5032	18	Jamboti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5033	18	Hudli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5034	31	Sithalapakkam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5035	31	Tirumudivakkam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5036	31	Sirupakkam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5037	31	Vellimalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5038	31	Reddichavady	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5039	31	Visalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5040	31	Agasthiyarpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5041	31	Thoppupalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5042	19	Pilathara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5043	19	Vellarikundu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5044	19	Kozhikode Parcel Centre	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3118	19	Perintalamanna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3142	19	Kochi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3147	19	Lakshdweep	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5045	19	Marigiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5046	19	Nellikunnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5047	19	Machel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3482	35	Dankuni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5048	35	Majigram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5049	35	Rupnarayanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3399	35	Contai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5050	35	Karkuli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5051	35	Athilagori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5052	35	Manoharchak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5053	35	Rangibasan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5054	35	Mayureswar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5055	35	Kurunnahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5056	35	Palsandamore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5057	35	Sargachi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5058	35	Shaikhpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5059	35	Rejinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5060	39	Khurda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5061	39	Panaspada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5062	39	Chitalo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4097	39	Jaleswar (Orissa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5063	39	Jagamohanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5064	39	Banspal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5065	39	Bamebari .	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5066	39	Pandapada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5067	39	Mahabirod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4164	39	Kuchinda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5068	39	Turudihi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4139	39	Kalahandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5069	39	Karlamunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5070	39	Puintala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5071	39	Thelkuli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5072	39	Darlipali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5073	4	Sagalee	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5074	23	Hiong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5075	23	Riangdo Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5076	23	Amlarem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5077	23	Lumshnong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4276	23	West Garo Hill	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5078	22	New Lamka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5079	22	Ningthoukhong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3333	24	Aizawl	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5080	24	Vanlaiphai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4302	24	Mamit	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5081	25	Jakhama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5082	25	Bhandari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5083	25	Thahekhu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5084	25	Alichen	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5085	32	Takarjala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5086	32	Tepania	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5087	32	Kathalia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5088	32	Kanchancherra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5089	32	Gournagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5090	6	Iit Patna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3379	6	Danapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5091	6	Kashichak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5092	17	Manjhiaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5093	6	Dobhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5095	17	Chira Chas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
389	14	Sonipat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
422	14	Kurukshetra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
424	28	Rupnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
644	36	Baribrahmna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1475	1	Greater Mumbai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2033	37	Durg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2092	37	Korba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2101	37	Raigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2134	38	Medak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2372	3	Vishakhapatnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2845	31	Chennai West	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3009	31	Hosur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3161	19	Kottayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3537	5	Nagaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3483	5	Bongaigaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3453	5	Silchar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3512	6	Patna City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3292	6	Bhagalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5096	14	Jhamri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
420	14	Kaithal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5098	28	Sakruli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5099	28	Pach Nangal Khushalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
619	15	Sundernagar (Himachal Pradesh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
654	36	Kathua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
650	36	Doda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3731	36	Bandipora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3748	36	Kargil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5100	33	Jamonka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5101	33	Bena	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5102	33	Dhokari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5103	33	Piyari Urf Bijlipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
809	33	Pratapgarh (Uttar Pradesh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
822	33	Ghazipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1016	29	Bhinai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1925	21	Chhatarpur (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1982	21	Dindori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2036	37	Rajnandgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2043	37	Mahasamund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2053	37	Pallari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3841	37	Abhanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2069	37	Bastar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2073	37	Kanker	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2038	37	Kawardha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2104	37	Dharmjaygarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2125	38	Ranga Reddy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2141	38	Sadaseopet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2132	38	Sangareddy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2150	38	Adilabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2158	38	Karimnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2171	38	Nekkonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2173	38	Mulug	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2217	38	Mahabubnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2236	3	Badvel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5104	3	Yeragutla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2234	3	Chitvel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2238	3	Siddavatam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2240	3	Chakrayapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2246	3	Kallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2247	3	Muddanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2287	3	Cherukupalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2291	3	Nagaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2296	3	Duggirala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2307	3	Intur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5105	3	Darsi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2358	3	Venkatachalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2851	31	Gudiyattam (Tn - Thiruvallur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5106	31	Doddapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5107	35	Khajurdihi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5108	35	Mulgram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5109	35	Kutirpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5110	35	Chakshanjandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5111	35	Siuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3994	35	Birbhum	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4833	40	Andaman	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3707	39	Pipili	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3473	5	Nalbari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3477	5	Kamrup	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4172	5	Marigaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3365	5	Diphu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3643	5	Dhuburi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4190	5	Kokrajhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5112	5	Borsola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5113	5	Khelmati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5114	5	Bakola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5115	5	Nagshankar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5116	5	Rangachakua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4213	5	Bindukuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3485	5	Duliajan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3309	5	Golaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3678	5	Numaligarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5117	5	Dikhari Kinar Gaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4223	5	Khiowang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4226	5	Tengakhat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4232	5	Jeypore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5118	5	Barbam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4256	4	Khonsa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3367	5	Hailakandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3357	5	Karimganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3658	5	N C Hills	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4236	4	Bomdila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4244	4	West Siang (Along)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5119	4	Upper Siang 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4293	22	Churachandpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3598	24	Lunglei	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4313	25	Mokokchung	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5120	32	Boxonagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3700	32	Udaipur (Tripura)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3699	32	South Tripura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5121	32	Sonamura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5122	32	Simna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3403	32	Kailashahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3384	6	Bakhtiyarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3682	6	Jehanabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4357	6	Nawada (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4368	6	Waziganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3696	6	Munger	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4378	6	Barhiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4386	6	Jogdishpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5123	6	Nauhatta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3690	6	Aurangabad (Bihar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4452	6	Amas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5094	6	Dumaria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4453	6	Shergahati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3656	17	Kodarma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4478	17	Kasmar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3320	17	Saraikela	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5124	17	Murma Nayasarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5125	17	Bhitta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3505	6	Siwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5126	6	Revelganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3324	6	Chapra (Saran)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4532	6	Sakara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4526	6	Mushahari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4523	6	Motipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4534	6	Sitamarhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4541	6	Seohar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4550	6	Jhandaha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4548	6	Goraui	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4551	6	Mahua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4555	6	S. Buzurg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4571	6	West Champaran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4372	6	Sekhpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5127	6	Sidhaw	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3263	6	Araria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5128	6	Bairia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4539	6	Katra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3640	6	East Champaran (Motihari)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5129	6	Bahadurpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5130	6	Singhwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3391	6	Darbhanga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5131	6	Harlakhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5132	6	Pariharpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4420	6	Bhabua	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3375	6	Samastipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5133	6	Gogri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3332	6	Begusarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3427	6	Madhubani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5134	6	Bhawanipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5136	6	Falka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5137	6	Amour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3259	6	Jamui	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3645	6	Purnea	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5138	6	Basopatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3202	19	Cherthala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3289	5	Tinsukia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5139	15	Mehre	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5140	31	Thekkalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3284	35	North 24 Pgs	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3256	35	South 24 Parganas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5141	6	Kathihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3374	6	Raxaul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3641	6	Bettiah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1238	13	Morvi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5142	35	Bhadurpur 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4299	24	Kolasib	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5143	5	Juria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5144	37	Panduka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5145	13	Bhimpore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1399	13	Baroda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5149	17	Gamharia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5150	35	Jaigaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5151	13	Moraiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
714	33	Farrukhabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3702	39	Bhubaneshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3555	35	Hoogly	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2227	3	Anantpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2231	3	Kalyandurg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2257	3	Chittor (A P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2252	3	Atlur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2243	3	Kamalapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5152	3	Badampudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2403	3	Chintalapudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5153	3	Dosapadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2280	3	Angalakudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2281	3	Chebrole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2279	3	Cheruvu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2312	3	Krosuru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2308	3	Medikonduru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2283	3	Nadendla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2318	3	Rentachintala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2305	3	Tsunduru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5009	3	Kunavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2269	3	Allagadda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2263	3	Banganapalle	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2264	3	Koikuntla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2266	3	Pahikonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2359	3	Chejerla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2371	3	Naidupeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2364	3	Northrajupalem Mandalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2329	3	Kanigiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2330	3	Prakasam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5154	3	Palasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2407	3	Chagallu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2391	3	East Godawari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2405	3	Polavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2332	3	Tada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2388	3	Narasannapeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4768	3	Srikakulam City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2406	3	Penugonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2404	3	Tadepallegudem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2258	3	Chittoor (Ap)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2276	3	Kaikalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2270	3	Krishna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2272	3	Nuzuid	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2402	3	West Godawari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2378	3	Anakapalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2379	3	Chodavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2381	3	Gajapatinagaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2413	3	Kurupam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3655	5	Namrup	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3288	5	Sibsagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3677	5	Titabor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3487	5	Lakhimpur (Assam)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3654	5	Doom Dooma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3433	6	Lakhisarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3387	6	Banka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4388	6	Kahalgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3435	6	Khagaria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4565	6	Madhepur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3361	6	Saharsa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3397	6	Dumraon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3331	6	Bodh Gaya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3429	6	Rohtas (Sasaram)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3351	6	Katihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4516	6	Bachacha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4533	6	Dumra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3330	6	Arah (Bhojpur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4347	6	Athmalgola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3688	6	Bihar Sharif (Nalanda)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4348	6	Mokama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4595	6	Kishanganj (Bihar-Kishanganj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2112	37	Ambikapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2070	37	Dantewada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2068	37	Jagdalpur (Chhattisgarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2067	37	Keskai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2071	37	Konta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2089	37	Katghora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2102	37	Gharghoda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2109	37	Sarangarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2055	37	Bilaigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2060	37	Dhamtari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2065	37	Phigeshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1220	13	Diu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1302	13	Dehgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1378	13	Anklav	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1370	13	Borsad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1379	13	Khambat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1361	13	Sojitra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1373	13	Umreth	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1423	13	Jhagadia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1421	13	Sagbara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1425	13	Valia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1402	13	Pavijetpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1422	13	Rajpipala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1413	13	Amod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1410	13	Jambusar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1262	13	Dhasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1245	13	Gariadhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1242	13	Ghogha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1244	13	Palitana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1241	13	Talaja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1249	13	Umrala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1247	13	Valbhipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1278	13	Gadhasisa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5155	13	Kharai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1286	13	Nakhatrana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1269	13	Bhachau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1270	13	Rahpar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1383	13	Dahod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1392	13	Kalol(Halol)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1321	13	Bayad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1320	13	Bhiloda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1323	13	Dhansura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1316	13	Himmat Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1325	13	Modasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1192	13	Jamjodhpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1205	13	Jamkhambalia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1202	13	Khambala Lalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1203	13	Khambhalia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1185	13	Jetpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1253	13	Amreli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1210	13	Bhesan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1196	13	Gadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1255	13	Jafrabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1213	13	Keshod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1222	13	Kodinar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1195	13	Kutiyana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1221	13	Manavadar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1214	13	Mangrol (Guj - Junagarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1218	13	Sutrapada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1212	13	Talala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1219	13	Una (Guj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1211	13	Visavadar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1365	13	Kapadvanj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1367	13	Kathalal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1360	13	Matar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1358	13	Mehmedabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1374	13	Thasra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1376	13	Virpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5156	13	Kim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1430	13	Mangrol (Guj - Surat)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1246	13	Mahuva (Guj - Bhavanagar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1280	13	Mandvi (Guj - Kachchh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1335	13	Becharaji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1329	13	Bechraji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1331	13	Kheralu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1341	13	Satlasana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1332	13	Unjha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1340	13	Visnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1230	13	Halvad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1472	13	Jalalpor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1187	13	Dhoraji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1237	13	Wankaner	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1297	13	Viramgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1243	13	Sihor (Gujarat)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1448	13	Ahwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1434	13	Kamrej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1438	13	Mahuva (Guj- Surat)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1437	13	Tapi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1235	13	Chotila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1228	13	Dhrangadhara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1227	13	Lakhtar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1231	13	Limbdi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3799	13	Ranpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1346	13	Bhabhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1351	13	Bhildi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1336	13	Chanasma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1345	13	Danta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1338	13	Harji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1344	13	Palanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1330	13	Patan (Guj)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1333	13	Sidhpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1353	13	Sihori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1334	13	Unza	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1356	13	Vav	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
340	14	Ateli Mandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
351	14	Jharli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5097	14	Badhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
382	14	Narwana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
402	14	Asandh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
356	14	Chiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
365	14	Sirsa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
393	14	Ganaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
419	14	Radaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
600	15	Rajgarh (H P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
629	15	Dharamshala (Kangra)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
631	15	Jawali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
630	15	Kangra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
634	15	Palampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
579	15	Kullu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
623	15	Sarkaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
574	15	Kumarsain	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
618	15	Barsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
614	15	Bilaspur (Himachal Pradesh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
615	15	Ghumarwin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
620	15	Nadaun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
667	36	Anantnag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
668	36	Pulwama	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3727	36	Basholi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4869	36	Balakote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
660	36	Rajauri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
659	36	Surankote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
672	36	Baramula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3740	36	Rajwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
673	36	Sopore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5157	36	Sumbal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
662	36	Budgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
666	36	Ganderbal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
653	36	Reasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4414	17	Barharwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3689	17	Dumka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4405	17	Mehrma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4417	17	Sahibganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4466	17	Bagodar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3594	17	Gande	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3437	17	Giridih	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4410	17	Jamtara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3305	17	Hazaribagh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3345	17	Chaibasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4567	17	Pardih	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4436	17	Hariharganj (Jharkhand)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2809	18	Athni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2773	18	Badami	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2757	18	Bagalkot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2808	18	Chikkodi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2787	18	Hukeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2772	18	Hungund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2755	18	Jamkhandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2810	18	Raybag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2732	18	Bidar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2507	18	Chitradurga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2498	18	Hiriyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2601	18	Harihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2585	18	Honnali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2728	18	Afzalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2734	18	Arjunagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2733	18	Humnabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2751	18	Kad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2730	18	Shahpur (Kar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2725	18	Yadgir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2504	18	Arkalgud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2505	18	Arsikere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2575	18	Chikmagalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2511	18	Kadur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2700	18	Desanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2703	18	Koppal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2718	18	Kushtagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2656	18	Bhatkal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2615	18	Byadgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2619	18	Gadag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2617	18	Haveri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2618	18	Hirekerur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2663	18	Kaiga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2655	18	Karwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2662	18	Mundgod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2646	18	Shiggaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2676	18	Shirhatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2657	18	Siddapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2620	18	Uttar Kannad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2435	18	Chickballapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2454	18	Chintamani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2539	18	Bantval	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2520	18	Bantwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2541	18	Beltangadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2538	18	Puttur (Kar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2465	18	Chamrajnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2472	18	Kodagu (Madikeri)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2478	18	Mandya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2717	18	Devadurga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2719	18	Manvi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2716	18	Raichur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2578	18	Bhadravati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2592	18	Sagar (Kar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2597	18	Shikarpur (Kar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2492	18	Madhugiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2493	18	Sira	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2513	18	Karkala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2570	18	Kundapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2753	18	Bijapur (Kar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3164	19	Alapuzzha (Alleppy )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3205	19	Ambalapulai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3207	19	Chengannur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3089	19	Wayand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3199	19	Kothamangalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3198	19	Muvattupuzha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3156	19	Idukki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3881	19	Ezhimala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3091	19	Kasaragod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3085	19	Talipparamba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3084	19	Tellicherry (Thalassery)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3238	19	Kottarakara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3208	19	Adur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3222	19	Kizhakkumbhagom	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3165	19	Meenachil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3169	19	Pathanamthitta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3104	19	Manjeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3101	19	Tirur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3110	19	Alathur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3120	19	Ambalavattom	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3109	19	Chittur  (Ker)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3113	19	Ottapalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3138	19	Mukundapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3311	19	Attingal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3307	19	Neyyatinkara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1902	21	Biora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1890	21	Leteri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1895	21	Raisen	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1900	21	Rajgarh (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1906	21	Sehore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1932	21	Baldeogarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1926	21	Ken Gharial	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1927	21	Maharajpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1971	21	Chhindwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3825	21	Parasia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1840	21	Nagda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1897	21	Shajapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1960	21	Ambah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1957	21	Datia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1959	21	Morena	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1875	21	Betul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1896	21	Gohar Ganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1879	21	Hoshangabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1880	21	Itarsi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1835	21	Badnawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1822	21	Barwani (Mp - Khargaon)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1882	21	Harda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1819	21	Khargaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1823	21	Thikri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1975	21	Balaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1920	21	Damoh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3829	21	Lanji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3839	21	Sali Chauka Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1974	21	Seoni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1818	21	Burhanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1816	21	Dariya Pur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1814	21	Harsud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1815	21	Khandwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1813	21	Nepanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1965	21	Bhind	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1868	21	Neemuch	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1874	21	Garot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1861	21	Namli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1862	21	Sailana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2019	21	Chorhat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2011	21	Hanumana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2012	21	Huzur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2005	21	Mangawa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2021	21	Sidhi (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1912	21	Bina	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1918	21	Garhakota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1911	21	Sagar (M P)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2028	21	Panna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1998	21	Raghurajnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1941	21	Ashoknagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1935	21	Guna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1947	21	Karera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1940	21	Kumbhraj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1964	21	Sheopur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1945	21	Shivpuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1852	21	Ghattia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1853	21	Tajpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1683	1	Akole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1582	1	Beed	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1612	1	Rahata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1614	1	Shrirampur (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1800	1	Chandur Bazar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1803	1	Dhamangaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1687	1	Vijapur (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1577	1	Indapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1760	1	Gondia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1775	1	Ballarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1747	1	Garhchiroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1628	1	Dapoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1640	1	Lanja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1627	1	Ratnagiri (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1706	1	Taloda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1698	1	Bhusawal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1701	1	Bodwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1689	1	Chalisgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1699	1	Yavai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1783	1	Chikhli  (Mah)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1723	1	Hingoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1621	1	Karad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1663	1	Kudal (Sindhudurg)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1725	1	Parli Vaijanath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1605	1	Shirur Anantpal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1738	1	Kamptee	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1748	1	Kuhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1734	1	Degloor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1736	1	Kinwat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1728	1	Nanded	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1677	1	Niphad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1535	1	Junnar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1632	1	Khanapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1646	1	Shirol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1583	1	Madha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1576	1	Malshiras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1585	1	Mohol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1811	1	Darwha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4292	22	Senapati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4290	22	Thoubal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4273	23	Laskein	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3381	25	Kohima	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4312	25	P.R Hill	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4317	25	Zunheboto	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3277	39	Talcher	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3445	39	Baripada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4095	39	Basta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3350	39	Bhadrak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4098	39	Bhograi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4106	39	Rairangpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4119	39	Asika	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4126	39	Baligurha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3319	39	Chatrapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4116	39	Ganjam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4133	39	Gunupur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4141	39	Lanjigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3408	39	Paralakhemundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4135	39	Rayagada (Raygarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4074	39	Balugaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3705	39	Khorda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4073	39	Nayagarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4092	39	Binjharpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3490	39	Dhenkanal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3400	39	Jagatsinghpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4083	39	Jajpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4085	39	Kendrapara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4090	39	Mahanga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4086	39	Salepur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4081	39	Tigiria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3446	39	Jharsuguda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3667	39	Barbil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3258	39	Joda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3673	39	Keonjhargarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3368	39	Jeypore (Jaypur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3409	39	Koraput	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4131	39	Malkangiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4132	39	Nabrangpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3343	39	Puri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3588	39	Sundergarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3651	39	Balangir (Bolangir)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4150	39	Bargarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4156	39	Deogarh (Orissa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4159	39	Dhankauda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4147	39	Kantabanji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4811	39	Rairakhol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3100	19	Mahe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
563	28	Abohar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
487	28	Goindwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3662	28	Joga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
549	28	Phul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
470	28	Ferozepur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
498	28	Talwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
452	28	Fatehgarh Sahib (Punjab)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
490	28	Gurdaspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
441	28	Ganugwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
500	28	Navansahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
530	28	Chajjli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1157	29	Degana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1011	29	Nasirabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
996	29	K.G.Basss	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1092	29	Lanchhmangarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
991	29	Mandawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
990	29	Rajgarh (Raj - Alwar()	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1173	29	Barmer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1175	29	Gudha Milani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1178	29	Shiv	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1116	29	Bari Sadri (Raj -Dholpur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1088	29	Bayana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1115	29	Dhaulpur (Dholpur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1084	29	Kaman	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1041	29	Banera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1153	29	Nagaur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1137	29	Shri Kolayat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1049	29	Chittaurgarh (Chittorgarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1055	29	Nimbahera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1005	29	Chomun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1004	29	Sambharlake	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1097	29	Bamanwas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1096	29	Bonli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1002	29	Dausa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1099	29	Hindaun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1003	29	Phulera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1095	29	Sawai Madhopur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1163	29	Jaisalmer	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1179	29	Pokaran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1109	29	Jhalawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1033	29	Jalor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3792	29	Raniwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1100	29	Bundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1000	29	Shahpura (Raj- Jaipur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1024	29	Desuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1023	29	Jaitaran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1021	29	Pali (Rajasthan)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1022	29	Sojat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1123	29	Jhunjhunu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1132	29	Khetri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1119	29	Churu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1158	29	Ladnun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1121	29	Sadulpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1124	29	Sardarshahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1125	29	Sujangarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1156	29	Didwana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1122	29	Fatehpur (Rajasthan)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1131	29	Nim Ka Thana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1130	29	Srimadhopur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1150	29	Anoopgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1146	29	Bhadra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1140	29	Ganganagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4952	29	Mandi Gharsana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1147	29	Nohar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1142	29	Padampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1006	29	Tonk	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1113	29	Banswara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1072	29	Dhariawad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1082	29	Dungarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1073	29	Jhadol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1064	29	Nathdwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1063	29	Raj Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1019	29	Rajsamand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1027	29	Sirohi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1070	29	Vallabhnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4022	30	Chungthang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4019	30	Gayzing	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3016	31	Tirupattur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3018	31	Vaniyambadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2848	31	Chengalpattu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2849	31	Tirukkalukkundram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3299	31	Urapakkam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2881	31	Chidambaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2883	31	Kattumannarkoil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3050	31	Dharapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3049	31	Emmammpoondi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3048	31	Gobichettipalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3051	31	Kangeyam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3040	31	Moolanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3046	31	Sathy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3012	31	Dharmapuri (T N )	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3015	31	Harur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3008	31	Krishna Giri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3033	31	Pennagaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2992	31	Arakkonam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3664	31	Thachampattu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2865	31	Vandavasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2936	31	Aravakkurichchi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5158	31	Ammayappan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2903	31	Kudavasal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2887	31	Nagapattinam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5159	31	Pulivalam (Tiruvarur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3639	31	Sirgazhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2988	31	Devakottai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2991	31	Manamadurai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2938	31	Melur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2933	31	Paramakudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2989	31	Pasumpon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2931	31	Ramanathapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2947	31	Tirumangalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2982	31	Kanniakumari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2981	31	Nagercoil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2880	31	Panruti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2871	31	Viruddhachalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2863	31	Gingee	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2861	31	Tindivanam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2862	31	Villupuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2993	31	Arcot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2876	31	Chengam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3004	31	Dharanampet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2877	31	Polur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2864	31	Tiruvannamalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3003	31	Walajapet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3034	31	Namakkal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2956	31	Athipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2954	31	Sattur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2953	31	Tiruchuli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2948	31	Virudunagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2994	31	Tiruttani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2902	31	Papanasam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2908	31	Pattukottai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2906	31	Sendurai  (Tn - Perambalur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2900	31	Thanjavur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3876	31	Tirutturraippundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3877	31	Vedaranyam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3035	31	Tiruchengodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2960	31	Ambasamudram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2958	31	Nanguneri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2963	31	Palayankottai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2959	31	Radhapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2965	31	Sankarankovil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2968	31	Sengottai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2967	31	Sivigiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2964	31	Tenkasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2970	31	Virakeralampudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3066	31	Avanashi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3041	31	Kangayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2912	31	Alangudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2884	31	Ariyalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2926	31	Lalgudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2920	31	Perambalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2907	31	Pudukattai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2928	31	Tirumayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2918	31	Turaiyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2977	31	Kovilpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2975	31	Ottappidaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2978	31	Sattankulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3323	32	Agartala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3908	35	Bankura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
830	33	Bareilly	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
943	33	Basti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
345	14	Bawal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
338	14	Binola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4721	35	Bolpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3265	35	Calcutta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3454	35	Cooch Behar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3295	35	Darjeeling	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
884	34	Dehradun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
966	33	Deoria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
779	33	Faizabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3303	35	Falta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
838	33	Gajraula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
919	34	Haldwani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
895	34	Haridwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
704	33	Hathras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
358	14	Hissar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
491	28	Jalandhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
772	33	Jaunpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
349	14	Jhajjar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
380	14	Jind	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
599	15	Kala Amb	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3286	35	Kalyani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4820	33	Kanpur City	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
493	28	Kapurthala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3279	35	Kharagpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5160	38	Mahboobnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
622	15	Mandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
938	33	Mankapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
972	33	Maunath Bhanjan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5161	35	Midnapore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
465	28	Moga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3326	35	Murshidabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
517	28	Nabha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
929	34	Nainital	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2210	38	Nalgonda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2143	38	Nizamabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
405	14	Panipat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2142	38	Patancheru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
459	28	Phagwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5162	33	Pratapgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4823	33	Rai Bareli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2161	38	Ramagundam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
887	34	Rishikesh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
878	34	Roorkee	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
440	28	Ropar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
520	28	Sangrur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4037	35	Shantipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
565	15	Shimla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
390	14	Sonepat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2136	38	Zahirabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
429	28	Zirakpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5165	13	Kujar 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5166	13	Koydam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5167	13	Vyasvasna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5168	13	Goblej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5169	13	Hansalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5170	13	Dantali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5172	13	Kaiyal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5173	13	Vadasma	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5174	13	Merd-Adraj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5175	13	Saij-Ongc	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5176	13	Vamaj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5177	13	Paliad Veda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5178	13	Jhulasan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5179	13	Dingucha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5180	13	Isand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5181	13	Ghantu Dhanpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5171	13	Chhatral	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5182	13	Gandhi Nagar G M S	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5183	13	Kharna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5184	13	Valad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5185	13	Boru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5186	13	Anodia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5187	13	Mahudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5188	13	Pindharpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5189	29	Teh Dantiwada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5190	13	Fatepur (Sk)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5191	13	Charadu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5192	13	Vadu Mahesana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5193	13	Boriavi (Jagudan)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5194	13	Jamla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5195	13	Limbodara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5196	13	Delvada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5197	13	Malosan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5198	13	Samau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5199	13	Vihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5200	13	Rindrol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5201	13	Veda Pilwai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5202	13	Sundarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5203	13	Fudeda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5204	13	Dabhla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5205	13	Tintodan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5206	13	Ranasan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5207	13	Daumoti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5208	13	Jetalvasna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5209	13	Chhatiarda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5210	13	Sunsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5211	13	Akhaj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5212	13	Jornaj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5213	13	Kamana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5214	13	Gunja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5215	13	Lakhvad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5216	13	Dabhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5217	13	Chekhla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5218	13	Jherda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5219	13	Malgadh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5220	13	Agathala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5221	13	Vada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5222	13	Badarkha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5223	13	Vadsar 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5224	13	Jholapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5225	13	Agol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1306	13	Vatwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5226	13	Nani Naroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5227	13	Piludara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1418	13	Ankleshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5228	13	Tavra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5229	13	Jhanore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5230	13	Buva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5231	13	Tham	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5232	13	Diva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5233	13	Matied	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5234	13	Furtikui	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5235	13	Sisodra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5236	13	Karali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5237	13	Nana Amodra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5238	13	Chalamali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5239	13	Kadachhala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5240	13	Parvata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5241	33	Garbada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1279	13	Godhra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5242	13	Gothda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5243	13	Kharia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5244	13	Kotambi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5245	13	Nana Of Aliya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5246	13	Makan 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5247	13	Kayavaran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5248	13	Vv-Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5249	13	Shili	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3500	13	V V Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5250	13	Sevaliya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5251	13	Waghodia-Nashwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5252	13	Waghodia-Shimlli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5253	21	Nazirabad (Bhopal)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5254	21	Distt. Rajgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5255	21	Tehsil-Biaora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5256	21	Opp-Nagar Spining Mill,	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5257	21	Dt Agar Barode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5258	1	Distt Shajapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5259	21	Rajgagh Madhya Pradesh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5260	21	Near Jharkheda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5262	21	Bye Pass Manglia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5263	21	Tq Rajpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5264	33	Dist.& Tehsil-Dewas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5265	21	Dist & Teh Indore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5266	21	Thibgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5267	21	Nimrani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5268	21	Moyda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5269	21	Pathrot Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5270	21	Birul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5271	21	Nagalwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5272	21	Solsinda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5273	21	Khudel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5274	21	Jamly	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5276	21	Tukaithed	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5277	1	Sonkatch 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5278	21	Sundrel (Dewas)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5279	21	Tonk Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5280	21	Nagda (Dewas)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5281	21	Iklera (Shajapur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5282	21	Deawas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5283	21	Kamlapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1839	21	Dewas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5284	21	Madhya Pradesh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5285	21	Rampur Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5286	21	Manpur (Morena)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5287	1	Tehsil-Ashok Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1962	21	Kailaras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1970	21	Lahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5288	21	Bairad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5289	21	Bhiterwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5290	21	Gwalior Jaderukalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5291	21	Gwalior Panihar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5292	21	Gwalier Utila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5293	21	Simrai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1827	21	Pithampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5294	21	Nagri (Mandsaur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5295	21	Sandhara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5296	21	Bhensoda Town	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5297	21	Kachnara (Nahargarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5298	21	Post - Agral	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5299	21	Sihuda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5301	21	Sumerkheda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5302	29	Bhadwasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5303	29	Mindha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5304	29	Gogalao	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5305	29	Alai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5306	29	Barliyas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5307	29	C/O 56 Apo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5308	29	Karanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5309	29	Denok	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5310	29	Belwa Bagawatan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5311	29	Khejarla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5312	29	Ransigaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5313	29	Salawas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5314	29	Badanwari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5315	29	Koselao	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5316	29	Jhunta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5317	29	Panwalia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5318	29	Tordisagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5319	29	Rabupura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5320	29	Akoda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5321	29	Salasar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5322	29	Dujod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5323	29	Sihot Chhoti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5324	29	Harash	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5325	29	Dadia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5326	29	Gungara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5327	29	Dhaliawas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5328	29	Tiba Basai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5329	29	Jalpali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5330	29	Nathusar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5331	29	Chak Gopinathpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5332	29	Ralawats Sikar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5334	29	Chaukari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5335	29	Malikpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5337	29	Nh 11 Chomu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5338	29	Harigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5339	29	Panwar Jhalawar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1108	29	Baran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5340	29	Mandana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5341	29	Nanta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5342	29	Pipalda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5343	29	Road Banswara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5344	29	Bedla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1059	29	Udaipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5345	29	Seria	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5346	29	Bhalerana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5347	29	Dal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5348	13	Sumrasar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5349	13	Nirona	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5350	13	Zarpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5351	13	Mota Bhamodra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5352	13	Nesdi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5353	13	Chamardi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5354	13	Bherai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5355	13	Valukad G	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5356	13	Budhel	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5357	13	Nari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5358	13	Kardej	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5359	13	Hathab	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5360	13	Kalsar Bhav	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5361	13	Damnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5362	13	Ansodar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5363	13	Varal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5364	13	Devgana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5365	13	Mamasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5366	13	Ukharala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5367	13	Lunava	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5368	13	Nagalpur K	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5369	13	Gadhda Khadir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5371	13	Bhogat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5372	13	Jam Gadhka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5373	13	Bakharla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5374	13	Navibundar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5375	13	Chora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5376	13	Khadia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5377	13	Makhiala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5378	13	Chhodvadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5379	13	Mangnath Pipli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1215	13	Maliya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5380	13	Pipli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5381	13	Kankot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5382	13	Rajula	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5383	13	Shivarajgadh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5384	13	Lathi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5385	13	Akala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5386	13	Shedubhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3795	13	Chavand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5387	13	Shekh Pipalia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5388	13	Station Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5389	13	Hamapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5390	13	Kunkavav	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5391	13	Mota Ankadia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5392	13	Vaghania	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5393	13	Amrapur (D)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5394	13	Mavjinjva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5395	13	Lunidhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5396	13	Krankach	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5397	13	Vavera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5398	13	Babapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5399	13	Vankia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5400	13	Jalia Amreli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5401	13	Chital	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5402	13	Monpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5403	13	Gopalgram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5404	13	Dalkhania	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5405	13	Bhader	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1263	13	Khambha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5406	13	Sarasia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5407	13	Saldi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5408	13	Amba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5409	13	Dedan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5410	13	Dungar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5411	13	Kherali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5412	31	Athimugam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5413	31	Sandanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5414	31	Salivaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5415	18	Anekal 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5416	18	Gudemaranahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5417	1	Sindhurg	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5418	18	Nasalapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5419	18	Sangolli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5420	18	Sattigere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5421	18	Sopadia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5422	18	Tigadolli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5423	18	Turmari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5424	18	Kangralikhurd	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5425	18	Muchandi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5426	18	Chandur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5427	18	Hirekudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5428	18	Hunnargi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5429	18	Hunshyal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5430	18	Ugarbudruk	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5431	18	Hulagbabi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5432	18	Kakamari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5433	18	Parthanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5434	18	Shegunshi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5435	18	Paramanandawadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5436	18	Garlgungji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5437	18	Dharmatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5438	18	Hulloli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5439	18	Melavanki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5440	18	Nandi Kurli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5441	18	Saunbuddi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5442	18	Saptasagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5443	18	Saundatti (Gokak)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5444	18	Shamnewadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5445	18	Sundhadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5446	18	Talakatnal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5447	18	Ullagaddi (Khanapur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5448	18	Kankanwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5449	18	Chunchanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5450	18	Chidambarnagar (Saundatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5451	18	Inchal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5452	18	Kadroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5453	18	Marihal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5454	18	Nagnur (Bailhongl)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5455	18	Mangur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5456	18	Mangutti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5457	18	Masaguppi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5458	18	Nanadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5459	18	New Diggewadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5460	18	Nilagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5461	18	Hulkund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5462	18	Hunshikatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5463	18	Inamhangal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5464	18	Tigadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5465	18	Dhamne	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5466	18	Halga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5467	18	Akkatangerhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5468	18	Asund I (Belgaum)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5470	18	Hanabaratti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5471	18	Hannikeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5472	18	Mutge	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5473	18	Kangla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5474	18	Irrigatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5475	18	Somdatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5476	18	Govegud	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5477	18	Sambra Airport 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5478	18	Ghatprabha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5479	18	Sulebhavi (Belgaum)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5480	18	Honge	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5481	18	Ambadgatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5482	18	Devalapur (Belgaum)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5483	18	Halashi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5484	18	Kakkeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5485	18	Kanvikarvinkop	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5486	18	Yallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5487	18	Bastwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5488	18	Batkurki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5489	18	Budakatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5490	18	Holehosur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5491	18	Karadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5492	18	Kodihal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5493	18	Nandawadgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5494	18	Kakanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5495	18	Nandikeshwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5496	18	Pattadakal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5497	18	Kundargi (Bagalkot)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5498	18	Tulsigere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5499	18	Shivayoga Mandir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5500	18	Halagani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5501	18	Balaganur (Bijapur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5502	18	Chandkavthe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5503	18	Gothe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5504	18	Tungal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5505	18	Hirebevanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5506	18	Masuti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5507	18	Ukli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5508	18	Hadagali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5509	18	Algur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5510	18	Hirepadsalgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5511	18	Chimmad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5512	18	Saidapur (Bagalkot)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5513	18	Halingali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5514	18	Sasalatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5515	18	Shirol (Bgt)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5516	18	Yadhalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5517	18	Kudresalwadgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5518	18	Vandal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5519	18	Asangi Khurd	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5520	18	Ahirsang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5521	18	Anjutgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5522	18	Chickbevanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5523	18	Rugi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5524	18	Bhatgunki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5525	18	Babur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5526	18	Kavadimatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5527	18	Bandappansalwedgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5528	18	Muttagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5529	18	Hiremasali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5530	18	Hunishyal (Bijapur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5531	18	Lonibudruk	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5532	18	Nimbargi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5533	18	Amarawati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5534	18	Dhannur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5535	18	Chitawadgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5537	18	Halagali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5538	18	Hylyal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5539	18	Mantur (Bagalkot)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5540	18	Melligere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5541	18	Aihole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5542	18	Kelur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5543	18	Bhagawati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5544	18	Sangam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5545	18	Hosur (Bagalkot)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5546	18	Jalihal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5547	18	Banahatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5548	18	Masaki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5549	18	Misrikoti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5550	18	Mudol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2758	18	Muddebihal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2754	18	Indi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5551	18	Bidari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5552	18	Madabhavi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5553	18	Mulsavalgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5554	18	Honvad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5555	18	Kakkalmeli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5556	18	Yargal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5557	18	Kannolli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5558	18	Kolur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5559	18	Tadvalga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5560	18	Yalwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5561	18	Tilgul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5562	18	Bekinal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5563	18	Bellary - Tekkalkota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5564	18	Kampli Sugar Factory	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5565	18	Joshi Street	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5566	18	Bellary - New Daroji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5567	18	Bellary - Yerdona (Raichur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5568	18	Bellary - Ane Hosur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5536	18	Arkera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5569	18	Bagalwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5570	18	Chalgere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5571	18	Galag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5572	18	Hulagera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5573	18	Hosakere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5574	18	Garag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5575	18	Narendra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5576	18	Mangundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5577	18	Sunkalbidri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5578	18	Baichaballi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5579	18	Gulbarga - Hirali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5580	18	Gulbarga - Chandankera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5581	18	Gulbarga - Margol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5582	18	Gulbarga - Bhairamadgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5583	18	Gulbarga - Adk	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5584	18	Gulbarga - Rukmapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5585	18	Gulbarga - Partapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5586	18	Gulbarga - Yelhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5587	18	Gulbarga - Yevoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5588	18	Gulbarga - Salgera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5589	18	Gulbarga - Konkal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5590	18	Gulbarga - Pattan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5591	18	Gulbarga - Sirsi (Bidar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5592	18	Gulbarga - Aurad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2727	18	Chitapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5593	18	Gulbarga - Kaptgudda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5594	18	Gulbarga - Chadchan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5595	18	Gulbarga - Halkatta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5596	18	Gulbarga - Manhalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5597	18	Gulbarga - Mudnal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5598	18	Gulbarga - Hallisagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5599	18	Gulbarga - Madiyal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5600	18	Gulbarga - Chandarki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5601	18	Gulbarga - Udachan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5602	18	Gulbarga - Putpak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5603	18	Gulbarga - Tengli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5604	18	Gulbarga - Belura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5605	18	Gulbarga - Muchalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5606	18	Nanvapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5607	18	Bhanapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5608	18	Holagundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5609	18	Morigere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5610	18	Anegundi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5611	18	Heroor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5612	18	Halgera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5613	18	Kawloor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5614	18	Rajoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5615	18	Tadkal (Koppal)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5616	18	Mangalore Koppal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5617	18	Mudhol (Koppal)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5618	18	Budugumpa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5620	18	Kustagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5621	18	Kanavalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5622	18	Katenhalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2654	18	Kadkol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5623	18	Tadkod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5624	18	Gondi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5625	18	Kakol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5626	18	Kajjari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5627	18	Kod	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5628	18	Naregal (Dwd)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5629	18	Kargudri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5630	18	Havanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5631	18	Hanumanmatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5021	18	Motebennur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5632	18	Aladkatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5633	18	Devi Hosur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5634	18	Kadarmandalgi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5635	18	Hattimattur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5636	18	Meersabidhalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5637	18	N Mahadevapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5638	18	Nagasamudra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5639	18	Alur (Anaji)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5640	18	Attigere (Chitrdurga)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5641	18	Vasana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5642	18	Gopanahalu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5643	18	Malalkere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5644	18	Muttugudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5645	18	Narayanagondanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5646	18	Maskal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5647	18	Abbinahole	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5648	18	Harthikote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5649	18	Gannaikanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5650	18	Belludi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5651	18	Tirlapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5652	18	Balehosur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3865	18	Koliwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5653	18	Koujageri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5654	18	Kodikoppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5655	18	Shalavadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5656	18	Kanaginhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5657	18	Bannikoppa(Gadag)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5658	18	Hebbal (Gadag)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5659	18	Ranatur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5660	18	Kalkeri (Gadag)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5661	18	Vadavi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5662	18	Sulla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5663	18	Hebli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5664	18	Tandur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5665	18	Bhaglkot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5666	18	Mundregi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5668	3	Basavkalyan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5669	3	Mahalingpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5670	3	Lingsugar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5671	3	Badagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5672	18	Shirehatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5673	18	Navlgund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5674	18	Sindhnoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2660	18	Kumta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5675	1	Altc Betim	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5676	18	Mallapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5677	1	Sanvoedem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5678	18	Areangadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5679	18	Mavinkurve	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5680	18	Mugbe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5681	18	Hosakuli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5682	18	Gullapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5683	18	Vajralli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5684	18	Tadri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5685	18	Kodkani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5686	18	Mundalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5687	18	Kalbag	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5688	18	Magod Colony	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5689	18	Bhagavathi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5690	18	Gandhi Nagar Kumta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5691	18	Pavinkurve	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5692	18	Halgeri (Sirsi)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5693	18	Madgeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5694	18	Bhaskeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5695	18	Yadaga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5696	18	Jogfalls	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5697	18	Hosnagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5698	18	Mastikatte	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5699	18	Tirhahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5700	18	Tarikeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5701	33	Channagere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5702	18	Dibburahalli (Hkt)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5703	18	Pahwadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5704	18	Jodidasalrahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5705	18	Bhandigodi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5706	18	Gonibeed	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5707	18	Guddethota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5708	18	Hosakoppa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5709	18	Jannapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5710	18	K Bidre	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5711	18	Kudlur (Chikmagalur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5712	18	Kuduvalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5713	18	Lokanathapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5714	18	Kalavara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5715	18	Mukka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5716	18	Nadugallu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5717	18	Amblamogaru	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5718	18	Boliyar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5719	18	Bondanthila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5720	18	Shibaje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5721	18	Badagannur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5722	18	Bolila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5723	18	Idu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5724	18	Nallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5725	18	Yerlapadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5726	18	Vamanjoor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5727	18	Kujalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5728	18	Athradi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5729	18	Permankila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5730	18	Naikur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5731	18	Manwi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5732	18	Akunjargiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5733	18	Jokatte (Puttur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5734	18	Inna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5735	18	Balthila	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5736	18	Charmadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5737	18	Aroor (D K)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5738	18	Baidabettu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5739	18	Beejady	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5740	18	Kavradi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5741	18	Molahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5742	18	Paduvari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5743	18	Achlady	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5744	18	Hardalli Mandall	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5745	18	Soorinje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5746	18	Thumbe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5747	18	Nelyadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5748	18	Geru Katte	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5749	18	Machina	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5750	18	Maninalkur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5751	18	Santekatte	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5752	18	Thottam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5753	18	Varanga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5754	18	Kidiyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5755	18	Chara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5756	18	Hirebettu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5757	18	Haradi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5758	18	Arekandige	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5759	18	Hoode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5760	18	Innanje	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5761	18	Mattu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5762	18	Airody	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5763	18	Gundmi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5764	18	Gulvadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5765	18	Salikere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5766	18	Marvanthe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5767	18	Kotathattu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5768	18	Yellur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2561	18	Manipal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5769	18	Shivapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5770	18	Mangala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5771	18	Maragodu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5772	18	Devarapura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5773	18	Birunani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5774	18	Balagunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5775	18	Benbalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5776	18	Badaga	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5777	18	Hosur (Virajpet)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5778	18	Nokya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5779	18	Uluguli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5780	18	Andagove	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5781	18	Mekur Hoskeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2506	18	Channarayapatna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5782	18	Badagabanangala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5783	18	Rangasamudra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5784	18	Kaikeri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5785	18	Harangi Project	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5786	18	Gondipet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5787	18	Avathi (Channapatna)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5788	18	Nalmangla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5789	18	Kenkere (Tumkur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5790	18	Yelanadu (Tmr)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5791	18	Thimmanhalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5792	18	Gurugadahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5793	18	Solur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5794	18	Halenahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5795	18	Madalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5796	18	Bellavi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5797	18	Kondethimmanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5798	18	Biravalu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5799	18	Baddur Farm	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5800	18	Aralguppe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5801	18	Akkur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5802	18	Vidyanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5803	18	Shivagange	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5804	18	Kodamballi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5805	18	Byramagala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5806	18	Chikkmuduvadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5807	18	Jangamkote	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5808	18	Dommasandra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5809	18	Kanva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5810	31	Pegumbahalla Camp	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5811	31	Kanagarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5812	31	Minparai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5813	31	Navamalai Camp	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5814	31	Gudalur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5815	31	Puliampatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5816	19	Arikulam Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5817	19	Keezhariyur Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5818	19	Katalur Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5819	19	Azhinilam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5820	19	Pallarimangalam Post	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5821	19	Thazhathangadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5822	19	Karunagapally	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5823	31	Kottayam District	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5824	19	Chemmanthoor Junction	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5825	19	Chemmakkad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5826	19	Vizhikkithode Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5827	19	Karavaloor Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5828	19	Chathurthiakary Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5829	19	Valimbala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5830	19	Manglam Dam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5831	31	Thadavur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5832	31	Thenalpalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5833	31	Navapatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5834	31	Virudasampatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5835	31	Thalanatham	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5836	31	Venkatanahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5837	31	Manyadahalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5838	31	Thenkarai Kottar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5839	31	Saithur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5840	31	Komaralingam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5841	31	T Jedarpalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5842	31	Edangansalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5843	19	Kadukutty Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5844	19	Marathakara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5845	19	Annanad Edso	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5847	19	Badaje B.O	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5848	31	Utharamerur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5849	31	Pukathurai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5850	31	Maduranthangam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5851	31	Maraimalai-Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5852	31	Madukarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2879	31	Cuddalore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5853	31	Kettavarampalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5854	31	Gangavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5855	31	Mansurabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5856	31	Pachayankuppam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5857	31	Cholampattu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5858	31	Vilambur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5859	31	Olugarai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5860	31	Kariyamanickam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5861	31	V Mathur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5862	31	Vahakollai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5863	31	Periyakulla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5864	31	Bodi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5865	31	Parmakudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2942	31	Theni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5866	31	Uslampatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5867	31	Megamala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5868	31	Sivagangai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5869	31	Kallupatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5870	31	Vellaripatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5871	31	Ammapatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5872	31	Chinnaovalapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5873	31	Kodangipattu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5874	31	Palanichettipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5875	31	Pottipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5876	31	Pudupatti (Cumbum)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5877	31	Tamaraikulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5878	31	Vellayammalpuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5879	31	Chellanpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5880	31	Kottur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5881	31	Venkatachalapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5882	31	Sathangudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5883	31	Narasingapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5884	31	Subbaraja Nagar C P A Co	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5885	31	Kalligudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5886	31	Peraiyur Madurai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5887	31	T Pudupatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5888	31	Saptur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5889	31	Pudunagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5890	31	Tirali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5891	31	Sengapadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5892	31	Kodai Road R S	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5893	31	Mangulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5894	31	Kallandiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5895	31	Paravai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5896	31	Aundipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5897	31	Checkanurani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5898	31	Chinnamanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5899	31	Cumbum Madurai Bus Stand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5900	31	Gandamanayakanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5901	31	Highways	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5902	31	Kamachipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5903	31	Kamayagoundanpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5904	31	Kombai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5905	31	Pannaipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5906	31	Periyar Project	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5907	31	Royappanpatthi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5908	31	Sedapatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5909	31	Silamarathupatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5910	31	Sindupatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5911	31	Thavaram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5912	31	Uthamapalayam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2939	31	Periyakulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5913	31	Yelumalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5914	31	T B Sanatorium	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5915	31	Venniar Estate	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5916	31	Suruliar Lower Camp	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5917	31	Odiapatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5918	31	Melathanjair	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5919	31	Anaiyur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5920	31	Chokkanathapatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5921	31	Sayalgudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5922	31	Ilandaikulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5923	31	Melpattamkarisalkulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5924	31	Meenkashipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5925	31	Nachiarkoil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5926	31	Nattampatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5927	31	Koppusithampatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5928	31	Sivalaingapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5929	31	Neeravikarisalkulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5930	31	S Tharaikudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5931	31	Vellayapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5932	31	Sengundapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5933	31	Pudukkottai Vnr	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5934	31	Naranapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5935	31	Villuppanur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5936	31	Idivilagi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5937	31	T Sedapatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5938	31	Surangudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5939	31	Panayadipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5940	31	Appanayakkanpatti (Mdu)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5941	31	Murappanad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5942	31	Pudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5943	31	Marudanvalavoo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5944	31	Puvani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5945	31	Nagalapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5946	31	Vembathur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5947	31	Pillayaranatham	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5948	31	Athimarathupatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3298	31	Akkanaickenpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5949	31	Murli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5950	31	Paraman Kurich	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5951	31	Dcw Ltd  Sahhupuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5952	31	Vijayapathi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5953	31	Kottaikarungulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5954	31	Anaikulam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5955	31	Kannanallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5956	31	Rajakkamangalam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5957	31	Ellanaickenpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5958	31	Singathakurichi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5959	31	Seydunganallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5960	31	Anavaradanallur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5961	31	Vasavappapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5962	31	Sivandipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5963	31	Maniyachi R S	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5964	31	Ariyanayagipuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5965	31	Naduvisipatli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5966	31	Kulathur Tirunelveli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5967	31	Perilovanpatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5968	31	Kathar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5969	31	Puludipatti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5970	31	Madanam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5971	31	Tirunagari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5972	31	Annaperumal Koil	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5973	31	Vettangudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5974	31	Madervelur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5975	31	Alakudi (Mayuram)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5976	31	Edamanal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5977	31	Varichikudi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5978	3	Tadda Chek Post /Nellore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5979	31	Palavakkam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3020	31	Ambur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5980	31	Thanderampet Suger Mill	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5981	11	Mayapuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5982	11	Jhandewalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5983	33	Eatms	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5984	33	Po-Teliamura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5985	33	Anoop Shahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5986	33	Dhanjpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5987	33	Kalai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5988	33	Barla (Aligarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5989	33	Salempur Sasni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5990	33	Goverdhan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5991	33	 Koshikalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5992	33	Riffinery Nagar (Iocl)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5993	33	Chatta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5994	33	Farra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5995	14	Salhawas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5996	14	Matanhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5997	14	Satnali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
384	14	Bhiwani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5998	14	Distt. Bhiwani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
5999	14	Teh- Charkhi Dadri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6001	14	Puthi Mangal Khan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6002	14	Mohamadpur Rohi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6003	14	Rajli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6004	14	Jhazgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6005	14	Khidwali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6006	14	Jassia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6007	14	Gangana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6008	14	Garhwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6009	14	Glwana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6010	14	Jauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6011	14	Kathura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6012	14	Lath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6013	14	Katwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6014	14	Kohla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6015	14	Rabhra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6016	14	Bindhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6017	14	Distt. Jhajjar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6018	14	Jahangirpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6019	14	Barota	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6020	14	Gangooli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6021	14	Garhwali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6022	14	Ghatauli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6023	14	Bhambeva	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6024	14	Budha Khera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6025	14	Bithmara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6027	14	Bhanyani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6028	14	Asan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6029	14	Bholi Anandpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6030	14	Hamayunpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6031	14	Dhamar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6032	14	Samchana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6033	14	Rurki (Rohtak)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6034	14	Chirana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6035	14	Rukhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6036	14	Kanaunda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6037	14	Nilauthi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6038	14	Kharainti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6039	14	Biron	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6040	14	Devsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
346	14	Rohtak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6041	14	Chang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6042	14	Behal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6043	14	Kairu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6044	14	Kheri Kumar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6045	14	Daura Raja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6046	14	Chimni	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6047	14	Bhadani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6048	33	Barhalganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6049	33	Chirgaun	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6050	33	Kanpur - Structuralaini	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6051	33	Kanpur - Choubeypur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6052	33	Chhibramau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6053	33	Dubari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6054	33	Maunath-Bhanjan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6055	33	Sarsena	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6056	33	Nandgunj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6058	33	Baiharibad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6059	33	Atarsanwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6060	33	Mardhah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6061	33	Piparidih	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6062	33	Sugi Chori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6063	33	Katihari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6064	33	Karisath	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6065	33	Kusmor	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6066	33	Sirahi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6067	33	Phariha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6068	33	Pathkolli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6069	33	Kaptangunj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6070	33	Sarda Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6071	33	Arnalah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6072	33	Parohanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6073	33	Chola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6074	33	Bhathla  	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6075	33	Shamli Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6076	29	Marena Bharatpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6077	29	Jalalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6078	29	Pinghera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6079	29	Gulpara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6080	29	Kaithwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6082	29	Dehra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6083	29	Bilond	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6084	29	Barkhera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6085	29	Thoon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6086	29	Gopalgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6087	29	Milakpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6088	29	Dariba Project Alwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6089	29	Akbarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6090	29	Ajabpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6091	29	Umren	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6092	29	Jaoli Alwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6093	29	Bhonkar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6094	29	Chandoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6095	29	Vijaimandir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6096	29	Alaoda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6097	29	Shahdoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
985	29	Alwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6098	29	Khanwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6099	29	Salempur Khurd	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6100	29	Samraya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6101	29	Garhi Bajna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6102	29	Mahalpur Chura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6103	29	Jeewad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6104	29	Jagjiwanpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6105	29	Dhana Kherli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6106	29	Khan Surajpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6107	29	Siras	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6108	29	Khankhera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6109	14	Loharu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6026	14	Singhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6110	14	Distt- Rewari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
341	14	Rewari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2201	38	Khammam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6111	38	Toopran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6112	38	Jammalmudugm	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6113	38	Ranga Reddy District	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6114	38	Chilamamidi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6115	38	Kondapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6116	38	Gagilapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6117	38	Shivampet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6118	38	Zaheerabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6119	38	Narsapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6120	38	Dhanasiri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6121	38	Taramatipeth	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2166	38	Warangal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6122	1	Wagholi (Wardha)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6123	1	Aheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
102	1	Rajura	1	2020-07-12 01:51:27.341645+05:30	\N	\N	1	\N	\N
6124	1	Ghugus	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6125	21	Via Junnardeo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6126	21	Burhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6127	21	Kumhari (Balaghat)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6128	21	Purena	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6129	21	Rethi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6130	21	Niwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6131	21	Bharai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6132	21	Jhinna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6133	21	Majghawan (Rewe)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6134	21	Chachai (Rewa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6135	21	Mandla ( Panna ) 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1764	1	Bhandara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6136	1	Tahsil & District	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6137	1	Via Kuhi Bhandara Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6138	1	Lohara (Bhandara)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6139	21	Kohka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6140	37	Bhilia Kohka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6141	37	Ghutku (Bilaspur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6142	37	Sarkanda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6143	37	Mungeli Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6144	37	Sargaon (Bilaspur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6145	37	Hardi (Bilaspur)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6146	37	Hardibazzar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6148	37	Lakhali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6149	37	Vijainagar (Raigarh)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6151	3	Kajuluru 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6152	3	Tallarevu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6153	3	Pennapali Village	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6154	3	J.R.Gudam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6155	3	Akkividu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6156	3	Agiripalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6157	3	Jagyapeta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6159	5	Dt- Sonitpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3395	5	Dhemaji	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6160	35	Arunachal Prdesha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6161	5	Darang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6158	5	28 Assam Rifles	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3479	5	Jorhat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6162	35	Dt- Golaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6163	5	Dt-Golaghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3285	39	Angul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6164	39	Bhanaranijigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6166	39	Garhsanput	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6167	39	Mendhasal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6168	39	Tarikund	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6169	39	Madhyasasan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6170	39	Kandarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6171	39	Chandaka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6172	39	Baideswar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6173	39	Gurudijhatia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6174	39	Agrahat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6175	39	Sargaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6176	39	Jugpura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6177	39	Kudeinadi Gaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6178	39	Balaramgadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6179	35	Po- Benjetia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6181	39	Samantipalli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6182	39	Sahapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6183	39	Hingili Katu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6180	39	Berhmpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6184	11	No 507 Suaf	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6185	39	Distt Purba	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6186	39	Ramachandrapur (Keonjhar)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6187	39	Panchapally	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6188	39	Khaliamenta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6189	39	Kantipal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3267	17	Ranchi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6191	17	Tantri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4458	17	Bermo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6192	39	Badmal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6193	39	Dumabhata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6195	17	Madhepura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6196	17	Raghopur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6198	17	Kishanganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6199	17	Devoghar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6200	17	Bihariganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6202	17	Begusarai - Roshara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6203	17	Rafigang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6204	17	Ragoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6207	1	Kathmandu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6208	17	Muzzafarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6211	17	Nalanda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6212	17	Bihar Sarif	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6216	17	Madanpuri Kapista	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6217	35	Raniganj	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6218	35	Shaktigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6219	17	Satghasiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6220	35	Bardwan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3697	17	Godda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6221	35	Mukutmanipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3979	35	Onda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6222	35	Jilimili	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4416	17	Pakur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6223	35	Majhitar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6224	35	 Panthang	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4013	35	Madarihat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6225	35	Bridge Po Pradhan Siliguri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6226	35	Dalkola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3523	35	Bagdogra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3563	35	Kalimpong	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6227	33	Sani Mandir Khalpara Siliguri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6228	1	Gorhe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6229	1	Atgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6230	1	 Parnaka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6231	1	 Nirmal Gaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6232	13	Khadsupa Boarding	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6233	13	Achhavani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6234	13	Vad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6235	13	Kalgam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6236	13	Manda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6237	13	Ambheti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6238	13	Amli(Silvassa)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6239	13	Endhal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6240	29	Bhata Mora	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6242	13	Dolvan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6243	1	 Saphale	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6244	1	Shirgaon (Thane)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6245	13	Naldhara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6246	13	Vaheval	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6247	13	Umra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1429	13	Amroli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6248	13	Jolwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6249	13	Umbergaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6250	1	Vangani	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6251	1	Khandala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6252	1	Ganapatipule	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6253	1	Nevere	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6254	1	Parshuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6255	1	Kumbhivali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6256	1	Bhivpuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1501	1	Alibagh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6258	1	Kashele	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6257	1	Pen 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6259	1	Â Pabhane	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6260	1	Â Rave	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6261	1	Dadar(Kolaba)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6262	1	Â Avas	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6263	1	Rajpuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6264	1	Kalwa-Mukund Only	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6265	35	Ghansoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1526	1	Taloja	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6266	14	Ladwa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6268	14	Lawan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6269	14	Khatkar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6270	14	Seemla	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6271	14	Ujhana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6272	14	Hat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6273	14	Dhigana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6274	14	Balu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
515	28	Patiala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6276	28	Kakrala, Samana, Patiala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6277	28	Towen 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6278	14	Siwana Mall	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6279	14	Bidhalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6280	14	Sadura	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6281	15	Sirmour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
410	14	Yamunanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
450	28	Banur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6282	28	Tonsa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6283	28	Rurki	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6284	28	Garuya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6285	28	Dau	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6286	28	Balomajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6287	28	Desumajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6288	28	Mundi Kharar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6289	28	Daumajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6290	28	Soharan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6291	28	Lakhnour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6292	28	Padiyala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6293	28	Channlo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6294	28	Banmajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6295	28	Solkhiya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6296	28	Raipurkalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6297	28	Bhnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6298	28	Tangori	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6299	28	Bhagomajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6300	28	Bhalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6301	28	Kalaran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6302	28	Sanheta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6303	28	Singh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6304	28	Bahrampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6305	28	Kajiala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6306	28	Rangilpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6307	28	Railmajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6308	28	Anandpursahib	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
442	28	Naya Nangal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
504	28	Asron	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6310	28	Marinda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6311	28	Nurpurbedi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6312	28	Suneta	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
431	28	Kharar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6313	28	Ganguwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6314	28	Piplmajra	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6315	28	Dher	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6316	28	Latheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6317	28	Chamkoursahib	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6318	28	Bhelari	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6319	28	Ghanouli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6320	28	Kirtpur Sahib	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6309	28	Nanagal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
435	28	Bharatgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6321	28	Chappercheri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
428	28	Mohali	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6322	15	Kamli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
617	15	Una	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6323	28	Zirkapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6324	33	Bareily	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6325	33	Ramatpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6326	33	Attamanda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6327	33	Maghola	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6328	33	Sahsawan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6329	34	Hardwar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6330	33	Pikhi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6331	33	Qadrabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6332	33	Talheri 	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6333	33	Hassunpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
471	28	Amritsar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
547	28	Bhatinda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
560	28	Fazilka	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6334	28	Janal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6335	28	Bhuthal Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6336	28	Gujran	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6337	28	Balram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6338	28	Khanal Kalan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6339	28	Chhahar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6340	28	Gharanchon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6341	28	Bathan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6342	18	Gangavathi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6343	28	Balachour	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
647	36	Udhampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6344	28	Sahnewal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
661	36	Srinagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6345	1	Nagar Nakak	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6346	1	Sugaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6347	1	Kedgaon (A)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6348	1	M I R C Ahmednagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6349	1	Talegaon Dighe	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6350	1	Akalner	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6351	1	Ghadgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6353	1	At/Post Dahiwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6354	1	Ajanta Caves	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6355	1	Shahapur (Jamner)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6356	1	Paldhi Pahur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6357	1	Savkheda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6358	1	Kadgaon (Jalgaon)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6359	1	Shirjoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6360	1	Virawada	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6361	1	Tondapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6362	1	Bozis	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6363	1	Mukti	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6364	1	Tapovan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1675	1	Nasik	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6365	1	Adgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6366	1	Nandgaon B K (Nasik)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1613	1	Kopargaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6367	1	Palkhed	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6368	1	Sangvi Kr	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6369	1	Warnanagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6370	1	Vorava Kallu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6371	1	Taluk-Guhagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6372	1	Salunke Vihar Road	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6373	1	Pirangut - Lavasa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6374	1	Tung	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6375	1	Ugar Sugar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6376	1	Sinhgad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6377	1	Gategaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6378	1	Kharosa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6379	1	Mulegaon Tanda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6380	1	Boral	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6381	1	Khamsa Wadi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6382	1	Tondon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6383	1	Jewali (Osmanabad)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6384	1	Somatne	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
336	14	Dharuhera	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
495	28	Hoshiarpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1034	29	Bhilwara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1232	13	Surendranagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1362	13	Anand	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6385	1	Andheri-Marol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1534	1	Chakan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6386	1	Mahapi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1546	1	Chinchwad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6388	1	Phursungi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3547	3	Cuddapha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2847	31	Sriperumbudur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3349	39	Balasore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3456	39	Sambalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
329	14	Gurgaon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
401	14	Karnal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6391	15	Ixc (Punchkula)	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6392	33	Gaziabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1428	13	Surat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1644	1	Kolhapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2080	37	Bilaspur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6393	28	Bathinda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1504	1	Goa	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6352	1	Dhulia	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1984	21	Jabalpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6395	18	Belagavi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3061	31	Tirupur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2973	31	Tuticorin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3108	19	Palghat	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3233	19	Kollam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3329	6	Gaya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1127	29	Bikaner	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2390	3	Rajamundry	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2424	18	Peenya	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1493	1	Vasai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3264	19	Trivandrum	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3703	39	Cuttack	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2952	31	Sivakasi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6400	14	Ambala	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4719	35	Beharampur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1274	13	Ghandhidham	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1952	21	Gwalior	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6387	1	Jalgoan	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1528	1	Kalamboli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1567	1	Shirwal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1679	1	Ojhar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2828	31	Chennai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2997	31	Ranipet	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6394	38	Karim Nagar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3021	31	Salem	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6389	3	Tirupathi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2937	31	Madurai	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2935	31	Dindigul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6390	31	Pondichery	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2915	31	Trichy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3038	31	Erode	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3055	31	Coimbatore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3557	35	Malda	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3300	35	Durgapur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6398	38	Rangareddy	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6399	28	Zirakhpur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
997	29	Jaipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1291	13	Ahmedabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1380	13	Vapi	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6403	1	Khopoli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1486	1	Nerul	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6404	31	Dharmapuri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6405	19	Neyyattinkara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3228	19	Quilon	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3271	35	Asansol	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
4125	39	Boudh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3297	17	Dhanbad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3302	17	Bokaro	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1450	13	Valsad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1292	13	Vadodara	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1887	21	Bhopal	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2421	18	Bangalore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6408	23	Virar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3095	19	Calicut	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3278	35	Howrah	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3313	35	Siliguri	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3253	35	Kolkata	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3146	19	Cochin	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
323	14	Faridabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3260	5	Guwahati	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
676	33	Ghaziabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2608	18	Hubli	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2118	38	Hyderabad	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1826	21	Indore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
416	7	Chandigarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
611	15	Parwanoo	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2519	18	Mangalore	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
643	36	Jammu	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
453	28	Ludhiana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3301	6	Patna	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
6414	27	Pondicherry	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
1180	13	Rajkot	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2042	37	Raipur	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
3282	19	Thiruvananthapuram	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2377	3	Vishakapatnam	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1	\N	\N
2	1	Pune	1	2020-07-12 01:51:27.341645+05:30	1	2023-07-23 00:24:32.019+05:30	2	in/dev/city/cityImage-1-1690052069469-pune.png	t
6416	42	Karachi	1	2023-07-25 09:57:50.967+05:30	\N	\N	0	in/dev/city/cityImage-1-1690259268923-pexels-asim-mushtaq-14427300.jpg	t
6417	1	Khalapur	1	2023-07-27 11:13:40.497+05:30	\N	\N	0	\N	t
6418	1	Dombivli	1	2023-08-01 11:41:56.073+05:30	\N	\N	0	\N	t
6419	1	Palasdari	1	2023-08-02 15:33:00.228+05:30	\N	\N	0	\N	t
6431	1	Pimpri-Chinchwad	1	2023-08-11 16:52:44.183+05:30	\N	\N	0	\N	t
6432	1	Khed Shivapur	2	2023-08-11 17:05:08.204+05:30	\N	\N	0	\N	t
6433	1	Kelavali	2	2023-08-11 17:13:24.602+05:30	\N	\N	0	\N	t
6438	18	Bengaluru	46	2023-08-17 15:51:10.67+05:30	\N	\N	0	\N	t
6443	46	Rawalpindi	2	2023-08-18 11:22:04.077+05:30	\N	\N	0	\N	t
6444	47	Islamabad	25	2023-08-18 14:44:43.7+05:30	\N	\N	0	\N	t
6445	46	Rahwali Cantonments	26	2023-08-24 15:04:03.219+05:30	\N	\N	0	\N	t
6448	48	Edgemere	1	2023-09-13 20:28:18.628+05:30	\N	\N	0	in/dev/city/cityImage-1-1694617097206-Screenshot_from_2023-09-05_00-17-00.png	t
\.


--
-- TOC entry 3428 (class 0 OID 296833)
-- Dependencies: 220
-- Data for Name: contact_support; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.contact_support (id, contact_type, description, email, status, created_by, created_date, updated_by, updated_date, version, customer_id) FROM stdin;
1	CS1	Kk	karanrbi144@gmail.com	f	5	2023-08-17 12:27:44.662	1	2023-08-17 13:48:13.826	1	3
3	CS1	Booking creation issue	Samina1996@gmail.com	f	85	2023-09-11 10:40:29.239	1	2023-09-11 10:40:56.984	1	19
4	CS1	Booking issues in spotfinder 	Samina1996@gmail.com	f	85	2023-09-11 10:41:36.62	1	2023-09-11 10:59:10.135	1	19
5	CS2	Data detection issue in spotfinder 	Samina1996@gmail.com	f	85	2023-09-11 10:42:01.534	1	2023-09-11 10:59:17.458	1	19
6	CS1	Test booking issue 	suman.choudhary.7288@gmail.com	t	159	2023-09-27 12:00:47.074	\N	\N	0	11
7	CS1	Kk	Rahul@gmail.com	t	162	2023-09-27 12:54:15.444	\N	\N	0	60
8	CS2	dsds	faizan14052003@gmail.com	t	139	2023-10-03 13:06:31.154	\N	\N	0	45
9	CS2	dsds	faizan14052003khan@gmail.com	t	139	2023-10-03 13:07:23.208	\N	\N	0	64
10	CS1	ww	faizan14052003@gmail.com	t	133	2023-10-04 05:02:00.92	\N	\N	0	45
11	CS1	qq	faizan14052003khan@gmail.com	t	170	2023-10-06 07:40:26.432	\N	\N	0	64
12	CS1	trial only	Selfsaif93@gmail.com	t	75	2023-10-12 06:06:34.476	\N	\N	0	57
13	CS1	Gsushsh	skhanwf786@gmail.com	t	185	2023-10-17 11:05:48.372	\N	\N	0	71
14	CS2	Gsushsh	skhanwf786@gmail.com	t	185	2023-10-17 11:06:00.648	\N	\N	0	71
\.


--
-- TOC entry 3431 (class 0 OID 296843)
-- Dependencies: 223
-- Data for Name: country; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.country (id, code, name, created_by, created_date, updated_by, updated_date, version) FROM stdin;
1	\N	India	1	2020-07-06 11:18:17.652805+05:30	\N	\N	1
3	\N	Pakistan	1	2023-07-25 09:57:50.921+05:30	\N	\N	0
6	\N	United States	1	2023-09-13 20:28:18.551+05:30	\N	\N	0
\.


--
-- TOC entry 3432 (class 0 OID 296848)
-- Dependencies: 224
-- Data for Name: customer_account_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.customer_account_detail (id, created_by, created_date, updated_by, updated_date, version, account_holder_name, account_vault_id, customer_id, expiry_date, first_six, last_four, payment_method, status, token_id) FROM stdin;
\.


--
-- TOC entry 3434 (class 0 OID 296856)
-- Dependencies: 226
-- Data for Name: customer_address_location; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.customer_address_location (id, created_by, created_date, updated_by, updated_date, version, latitude, longitude, status, customer_id) FROM stdin;
\.


--
-- TOC entry 3436 (class 0 OID 296864)
-- Dependencies: 228
-- Data for Name: customer_balance; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.customer_balance (id, created_by, created_date, updated_by, updated_date, version, balance, customer_id, low_balance, merchant_id) FROM stdin;
\.


--
-- TOC entry 3437 (class 0 OID 296867)
-- Dependencies: 229
-- Data for Name: customer_balance_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.customer_balance_detail (id, created_by, created_date, updated_by, updated_date, version, closing_amount, customer_id, merchant_id, opening_amount, status, transaction_amount, transaction_ref_id, transaction_type) FROM stdin;
\.


--
-- TOC entry 3440 (class 0 OID 296877)
-- Dependencies: 232
-- Data for Name: customer_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.customer_detail (id, created_by, created_date, updated_by, updated_date, version, address_line_1, address_line_2, booking_cancel_count, dob, email, gender, image_url, merchant_id, name, phone_no, reward_balance, status, total_points, user_id, vehicle_registration_number) FROM stdin;
\.


--
-- TOC entry 3444 (class 0 OID 296895)
-- Dependencies: 236
-- Data for Name: district; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.district (id, created_by, created_date, updated_by, updated_date, version, name, state_id) FROM stdin;
\.


--
-- TOC entry 3446 (class 0 OID 296900)
-- Dependencies: 238
-- Data for Name: employee_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.employee_detail (id, created_by, created_date, updated_by, updated_date, version, locality, name, address_line_1, address_line_2, city, country, email, merchant_id, mobile, state, status, user_id) FROM stdin;
\.


--
-- TOC entry 3449 (class 0 OID 296910)
-- Dependencies: 241
-- Data for Name: enum; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.enum (id, enum_type, enum_code, enum_display_value, enum_description, enum_order, created_by, created_date, updated_by, updated_date, version, language_code) FROM stdin;
1	MERCHANT_TYPE	MTSHIP	Shipper	Sipper	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
2	DISCOUNT_TYPE	DTPRCNT	Percentage	Percentage	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
3	DISCOUNT_TYPE	DTFLAT	Flat	Flat	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
4	DISCOUNT_TYPE	DTND	No Discount	No Discount	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
5	USER_CATEGORY	UCNEW	New User	New User	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
6	USER_CATEGORY	UCACTIVE	Active User	Active User	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
7	OFFER_TYPE	OTFLT	Flat	Flat	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
8	OFFER_TYPE	OTPRCNT	Percentage	Percentage	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
9	CANCELLATION_REASON	CRTC	Trip Cancelled	Trip Cancelled	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
10	CANCELLATION_REASON	CRID	Incorrect Date	Incorrect Date	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
11	CANCELLATION_REASON	CRWL	Wrong Location	Wrong Location	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
12	CANCELLATION_REASON	CRHI	Health Issues	Health Issues	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
13	CANCELLATION_REASON	CRALNA	Amenities Listed not available	Amenities Listed not available	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
14	CANCELLATION_REASON	CRMIE	Made in Error	Made in Error	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
15	COMPANY_TYPE	CTSLLC	Individual/sole proprietor or single-member LLC	Individual/sole proprietor or single-member LLC	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
16	COMPANY_TYPE	CTCCORP	C Corporation	C Corporation	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
17	COMPANY_TYPE	CTSCORP	S Corporation	S Corporation	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
18	COMPANY_TYPE	CTPRTNR	Partnership	Partnership	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
19	COMPANY_TYPE	CTTE	Trust/estate	Trust/estate	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
20	COMPANY_TYPE	CTMLLC	Limited liability company	Limited liability company	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
21	COMPANY_TYPE	CTOTH	Other	Other	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
22	PARKING_CATEGORY	PCN	Normal	Normal	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
23	PARKING_CATEGORY	PCA	Airport	Airport	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
24	OFFER_FOR	OFCITY	City	City	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
25	OFFER_FOR	OFNCUST	New Customer	New Customer	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
26	OFFER_FOR	OFOCUST	Old Customer	Old Customer	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
27	TIER_TYPE	TTT1	T1	T1	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
28	TIER_TYPE	TTT2	T2	T2	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
29	TIER_TYPE	TTT3	T3	T3	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
30	PARKING_CATEGORY_TYPE	PCTL	Luxury Parking	Luxury Parking	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
31	PARKING_CATEGORY_TYPE	PCTR	Regular Parking	Regular Parking	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
32	PARKING_CATEGORY_TYPE	PCTO	Other Parking	Other Parking	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
33	PARKING_CATEGORY_TYPE	PCTF	Flexi Parking	Flexi Parking	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
34	USER_TYPE	UTCUST	Customer	Customer	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
35	USER_TYPE	UTSP	Service Provider	Service Provider	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
36	USER_TYPE	UTSA	Super Admin	Super Admin	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
37	PARKING_TYPE	PTFX	Fix\tparking	Fix\tparking	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
38	PARKING_TYPE	PTV	Variable	Variable	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
39	CONVENIENCE_FEE	CFEE	10	10	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
40	FREE_CANCELLATION	FCHRS	24	24	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
41	AMENITIES_TYPE	AT1	24 Hour Lot Attendant	in/uat/icons/ammenities/24_Hour_Lot_Attendant.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
42	AMENITIES_TYPE	AT2	24 Hour Security	dev/icons/ammenities/24_Hour_Security.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
43	AMENITIES_TYPE	AT3	Aeroport	dev/icons/ammenities/Aeroport.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
44	AMENITIES_TYPE	AT4	Aisle access	dev/icons/ammenities/Aisle_access.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
45	AMENITIES_TYPE	AT5	Camera Surveillance	dev/icons/ammenities/Camera_Surveillance.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
46	AMENITIES_TYPE	AT6	Car Maintenance on-site	dev/icons/ammenities/Car_Maintenance_on_site.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
47	AMENITIES_TYPE	AT7	Car Rental	dev/icons/ammenities/Car_Rental.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
48	AMENITIES_TYPE	AT8	Cell Phone Waiting Area	dev/icons/ammenities/Cell_Phone_Waiting_Area.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
49	AMENITIES_TYPE	AT9	Contactless Parking	dev/icons/ammenities/Contactless_Parking.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
50	AMENITIES_TYPE	AT10	Covered Parking	dev/icons/ammenities/Covered_Parking.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
51	AMENITIES_TYPE	AT11	Covid-19 Compliant	dev/icons/ammenities/Covid_19_Compliant.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
52	AMENITIES_TYPE	AT12	Credit Cards Accepted	dev/icons/ammenities/Credit_Cards_Accepted.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
53	AMENITIES_TYPE	AT13	Detail on-site	dev/icons/ammenities/Detail_on_site.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
54	AMENITIES_TYPE	AT14	Discounted Rates	dev/icons/ammenities/Discounted_Rates.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
55	AMENITIES_TYPE	AT15	EV charging available	dev/icons/ammenities/EV_charging_available.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
57	AMENITIES_TYPE	AT17	Free round trip airport Shuttle	dev/icons/ammenities/Free_round_trip_airport_Shuttle.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
58	AMENITIES_TYPE	AT18	Free round trip Shuttle	dev/icons/ammenities/Free_round_trip_Shuttle.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
59	AMENITIES_TYPE	AT19	Free Shuttle service to the Venue	dev/icons/ammenities/Free_Shuttle_service_to_the_Venue.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
60	AMENITIES_TYPE	AT20	Free shuttle service	dev/icons/ammenities/Free_shuttle_service.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
61	AMENITIES_TYPE	AT21	Hand Sanitization	dev/icons/ammenities/Hand_Sanitization.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
62	AMENITIES_TYPE	AT22	Mobile Pass Accepted	dev/icons/ammenities/Mobile_Pass_Accepted.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
63	AMENITIES_TYPE	AT23	No snow Or rain	dev/icons/ammenities/No_snow_Or_rain.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
64	AMENITIES_TYPE	AT24	Oil Change on-site	dev/icons/ammenities/Oil_Change_on_site.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
65	AMENITIES_TYPE	AT25	Outdoor Self Park	dev/icons/ammenities/Outdoor_Self_Park.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
66	AMENITIES_TYPE	AT27	Paved	dev/icons/ammenities/Paved.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
67	AMENITIES_TYPE	AT28	PPE Compliant	dev/icons/ammenities/PPE_Compliant.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
68	AMENITIES_TYPE	AT29	Restrooms for customers	dev/icons/ammenities/Restrooms_for_customers.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
69	AMENITIES_TYPE	AT30	RV Parking	dev/icons/ammenities/RV_Parking.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
70	AMENITIES_TYPE	AT32	Safety Measures	dev/icons/ammenities/Safety_Measures.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
71	AMENITIES_TYPE	AT33	Shuttle Tracking	dev/icons/ammenities/Shuttle_Tracking.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
72	AMENITIES_TYPE	AT34	Staffed during normal hours	dev/icons/ammenities/Staffed_during_normal_hours.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
73	AMENITIES_TYPE	AT35	Tailgating welcome	dev/icons/ammenities/Tailgating_welcome.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
74	AMENITIES_TYPE	AT36	Valet Parking	dev/icons/ammenities/Valet_Parking.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
75	AMENITIES_TYPE	AT37	Vehicle access	dev/icons/ammenities/Vehicle_access.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
76	AMENITIES_TYPE	AT38	Windshield Washing	dev/icons/ammenities/Windshield_Washing.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
77	AMENITIES_TYPE	AT26	Tire Inflation	dev/icons/ammenities/tire_inflation.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
78	CONTACT_SUPPORT	CS1	Booking Issue	Booking Issue	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
79	CONTACT_SUPPORT	CS2	Data Deletion	Data Deletion	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
80	BOOKING_TYPE	Day	Day	Day	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
81	BOOKING_TYPE	Night	Night	Night	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
82	BOOKING_TYPE	Overnight	Day/Night	Day/Night	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
83	AMENITIES_TYPE	AT39	Wheelchair-accessible car park	dev/icons/ammenities/Wheelchair_accessible_car_park.png	\N	1	2023-09-16 13:29:45.892258+05:30	\N	\N	0	\N
84	AMENITIES_TYPE	AT40	Wheelchair-accessible entrance	dev/icons/ammenities/Wheelchair_accessible_entrance.png	\N	1	2023-09-16 13:29:45.892258+05:30	\N	\N	0	\N
86	AMENITIES_TYPE	AT42	Free Wifi Avalaible	dev/icons/ammenities/Free_Wifi_Avalaible.png	\N	1	2023-09-16 13:29:45.892258+05:30	\N	\N	0	\N
85	AMENITIES_TYPE	AT41	Wheelchair-accessible lift	dev/icons/ammenities/Wheelchair_accessible_lift.png	\N	1	2023-09-16 13:29:45.892258+05:30	\N	\N	0	\N
56	AMENITIES_TYPE	AT16	Free Car Wash on-site	dev/icons/ammenities/Free_Car_Wash_on_site.png	\N	1	2023-07-22 21:08:30.589435+05:30	\N	\N	0	\N
\.


--
-- TOC entry 3450 (class 0 OID 296918)
-- Dependencies: 242
-- Data for Name: file_upload_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.file_upload_detail (id, created_by, created_date, updated_by, updated_date, version, contract_id, failed_record, file_path, is_latest, merchant_id, module_id, movement_sub_type_id, movement_type_id, status) FROM stdin;
\.


--
-- TOC entry 3452 (class 0 OID 296926)
-- Dependencies: 244
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
0	\N	<< Flyway Schema Creation >>	SCHEMA	"roadtotravel"	\N	root	2023-07-22 15:38:28.887408	0	t
1	1.1.0	Table DDL	SQL	V1_1_0__Table_DDL.sql	163124553	root	2023-07-22 15:38:29.134916	1157	t
2	1.1.1	MetaData Country DML	SQL	V1_1_1__MetaData_Country_DML.sql	-973587753	root	2023-07-22 15:38:30.402408	45	t
3	1.1.2	MetaData Enum DML	SQL	V1_1_2__MetaData_Enum_DML.sql	1942973411	root	2023-07-22 15:38:30.589435	680	t
4	1.1.3	MetaData State DML	SQL	V1_1_3__MetaData_State_DML.sql	1901943656	root	2023-07-22 15:38:31.385457	315	t
5	1.1.4	MetaData City DML	SQL	V1_1_4__MetaData_City_DML.sql	474605197	root	2023-07-22 15:38:32.381438	55363	t
6	1.1.5	MetaData Permission Group DML	SQL	V1_1_5__MetaData_Permission_Group_DML.sql	694194519	root	2023-07-22 15:39:27.850773	80	t
7	1.1.6	MetaData Permission DML	SQL	V1_1_6__MetaData_Permission_DML.sql	1408455380	root	2023-07-22 15:39:28.056329	901	t
8	1.1.7	Script DML	SQL	V1_1_7__Script_DML.sql	1995572445	root	2023-07-22 15:39:29.066562	51	t
\.


--
-- TOC entry 3453 (class 0 OID 296933)
-- Dependencies: 245
-- Data for Name: hours_of_operation; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.hours_of_operation (id, created_by, created_date, updated_by, updated_date, version, day_id, day_of_week, from_time, operational_status, parking_location_id, to_time) FROM stdin;
\.


--
-- TOC entry 3455 (class 0 OID 296941)
-- Dependencies: 247
-- Data for Name: invoice_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.invoice_detail (id, created_by, created_date, updated_by, updated_date, version, booking_id, invoice_amount, invoice_date, invoice_id, invoice_type, is_master_invoice, merchant_id, payment_status, status, transaction_ref_id, transaction_type) FROM stdin;
\.


--
-- TOC entry 3457 (class 0 OID 296949)
-- Dependencies: 249
-- Data for Name: languages; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.languages (id, created_by, created_date, updated_by, updated_date, version, languages) FROM stdin;
\.


--
-- TOC entry 3459 (class 0 OID 296954)
-- Dependencies: 251
-- Data for Name: merchant; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.merchant (id, created_by, created_date, updated_by, updated_date, version, code, name, email, merchant_type, mobile, org_logo_path, status) FROM stdin;
1	1001	2023-11-09 00:00:00	1002	2023-11-09 00:00:00	1	TC	Travel Classified	travelclassified@gmail.com	TC	1234567890	/path/to/logo1.png	t
\.


--
-- TOC entry 3462 (class 0 OID 296964)
-- Dependencies: 254
-- Data for Name: notes_details; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.notes_details (id, created_by, created_date, updated_by, updated_date, version, booking_id, description, type, user_id) FROM stdin;
\.


--
-- TOC entry 3463 (class 0 OID 296970)
-- Dependencies: 255
-- Data for Name: offer_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.offer_detail (id, created_by, created_date, updated_by, updated_date, version, city_id, expiry_date, merchant_id, offer_title, offer_type, offer_value, promo_code, start_date, status, user_category, valid_in) FROM stdin;
\.


--
-- TOC entry 3464 (class 0 OID 296976)
-- Dependencies: 256
-- Data for Name: over_booking; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.over_booking (id, created_by, created_date, updated_by, updated_date, version, booking_amount, booking_date, booking_status, card_amount, checkin_time, checkout_time, commission_amount, convenience_fee, customer_id, is_guest, offer_detail_id, parking_location_id, parking_slot_id, payment_status, reward_gained, reward_used, service_provider_id, status, tax_amount, total_amount, transaction_ref_id) FROM stdin;
\.


--
-- TOC entry 3472 (class 0 OID 297023)
-- Dependencies: 264
-- Data for Name: permission; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.permission (id, created_by, created_date, updated_by, updated_date, version, code, description, permission_group_id, is_view, is_add, is_update, is_import, is_export, is_delete) FROM stdin;
2	1	2022-10-15 18:51:41.088507	1	2023-11-10 16:09:40.113	1	SA2	Role Management access	1	t	t	t	t	t	t
62	1	2023-11-20 17:33:13.868	\N	\N	0	UMA	User Management Access	15	f	f	f	f	f	f
63	1	2023-11-20 17:33:13.868	\N	\N	0	RMA	Role Management Access	15	f	f	f	f	f	f
64	220	2023-11-20 18:08:11.465	\N	\N	0	UMA	User Management Access	16	f	f	f	f	f	f
65	220	2023-11-20 18:08:11.465	\N	\N	0	RMA	Role Management Access	16	f	f	f	f	f	f
3	1	2022-10-15 18:51:41.088507	1	2023-11-20 18:16:45.66	2	SA3	User Management access	2	f	f	f	f	f	f
4	1	2022-10-15 18:51:41.088507	1	2023-11-20 18:16:45.654	2	SA4	Role Management access	2	f	f	f	f	f	f
66	1	2023-11-21 13:18:04.051	\N	\N	0	UMA	User Management Access	17	f	f	f	f	f	f
67	1	2023-11-21 13:18:04.051	\N	\N	0	RMA	Role Management Access	17	f	f	f	f	f	f
1	1	2022-10-15 18:51:41.088507	1	2023-11-10 16:09:40.088	8	SA1	User Management access	1	t	t	t	t	t	t
\.


--
-- TOC entry 3474 (class 0 OID 297032)
-- Dependencies: 266
-- Data for Name: permission_group; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.permission_group (id, name, merchant_type, description, created_by, created_date, updated_by, updated_date, version, role_id, code) FROM stdin;
17	User Management	TC	\N	1	2023-11-21 13:18:03.998+05:30	\N	\N	0	18	UM
1	User Management	TC	\N	1	2022-10-15 15:37:01.763199+05:30	\N	\N	1	1	UM
2	User Management	TC	\N	1	2022-10-15 15:37:01.763199+05:30	\N	\N	1	2	UM
15	User Management	TC	\N	1	2023-11-20 17:33:13.855+05:30	\N	\N	0	16	UM
16	User Management	TC	\N	220	2023-11-20 18:08:11.419+05:30	\N	\N	0	17	UM
\.


--
-- TOC entry 3475 (class 0 OID 297043)
-- Dependencies: 267
-- Data for Name: postalcode; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.postalcode (id, created_by, created_date, updated_by, updated_date, version, city_id, district_id, name) FROM stdin;
\.


--
-- TOC entry 3479 (class 0 OID 297064)
-- Dependencies: 271
-- Data for Name: role; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.role (id, merchant_id, name, permission_group_id, description, created_by, created_date, updated_by, updated_date, version, status, code) FROM stdin;
1	104	Super Admin	1	Super Admin	1	2023-07-22 21:09:28.056329+05:30	1	2023-11-20 16:21:03.354+05:30	6	t	SAD
2	104	Admin	2	AD	1	2023-07-22 21:09:28.056329+05:30	1	2023-11-20 16:21:55.449+05:30	3	t	AD
16	104	Executive	\N	Executive	1	2023-11-20 17:33:13.842+05:30	\N	\N	0	t	EX
17	104	B Executive	\N	B Executive	220	2023-11-20 18:08:11.234+05:30	\N	\N	0	t	BEX
18	104	Test Role	\N	Test role	1	2023-11-21 13:18:03.755+05:30	\N	\N	0	t	TR
\.


--
-- TOC entry 3481 (class 0 OID 297073)
-- Dependencies: 273
-- Data for Name: role_permission_mapping; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.role_permission_mapping (id, created_by, created_date, updated_by, updated_date, version, permission_id, status, role_id) FROM stdin;
106	1	2023-11-20 18:16:45.729	\N	\N	0	4	t	2
107	1	2023-11-20 18:16:45.729	\N	\N	0	3	t	2
52	194	2023-11-09 16:07:46.964	\N	\N	0	1	t	1
\.


--
-- TOC entry 3488 (class 0 OID 297103)
-- Dependencies: 280
-- Data for Name: state; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.state (id, country_id, name, created_by, created_date, updated_by, updated_date, version) FROM stdin;
1	1	Maharashtra	1	2020-07-06 11:20:20.919705+05:30	\N	\N	1
3	1	Andhra Pradesh	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
4	1	Arunachal Pradesh	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
5	1	Assam	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
6	1	Bihar	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
9	1	Dadra and Nagar Haveli	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
10	1	Daman and Diu	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
11	1	Delhi	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
12	1	Goa	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
13	1	Gujarat	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
15	1	Himachal Pradesh	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
17	1	Jharkhand	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
18	1	Karnataka	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
19	1	Kerala	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
20	1	Lakshadweep	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
21	1	Madhya Pradesh	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
22	1	Manipur	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
23	1	Meghalaya	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
24	1	Mizoram	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
25	1	Nagaland	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
27	1	Puducherry	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
28	1	Punjab	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
29	1	Rajasthan	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
30	1	Sikkim	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
31	1	Tamil Nadu	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
32	1	Tripura	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
33	1	Uttar Pradesh	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
34	1	Uttarakhand	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
35	1	West Bengal	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
14	1	Haryana	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
40	1	Andaman & Nicobar	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1
39	1	Odisha	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1
7	1	Chandigarh	1	2020-07-12 01:39:36.188167+05:30	\N	\N	0
36	1	Jammu & Kashmir	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1
37	1	Chattisgarh	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1
38	1	Telangana	1	2020-09-15 14:11:53.23866+05:30	\N	\N	1
42	3	Sindh	1	2023-07-25 09:57:50.945+05:30	\N	\N	0
46	3	Punjab	2	2023-08-18 11:22:04.066+05:30	\N	\N	0
47	3	Islamabad Capital Territory	25	2023-08-18 14:44:43.681+05:30	\N	\N	0
48	6	Maryland	1	2023-09-13 20:28:18.587+05:30	\N	\N	0
\.


--
-- TOC entry 3492 (class 0 OID 297123)
-- Dependencies: 284
-- Data for Name: template_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.template_detail (id, created_by, created_date, updated_by, updated_date, version, expire_in_hours, labels, logo_url, placeholder_fields, template_id, title) FROM stdin;
\.


--
-- TOC entry 3494 (class 0 OID 297131)
-- Dependencies: 286
-- Data for Name: user_appointment; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.user_appointment (id, created_by, created_date, updated_by, updated_date, version, address_line_1, address_line_2, all_day, city, country, customer_user_id, end_date_and_time, event_color, latitude, locality, longitude, merchant_id, service_provider_user_id, stage, start_date_and_time, state, status, description) FROM stdin;
\.


--
-- TOC entry 3496 (class 0 OID 297139)
-- Dependencies: 288
-- Data for Name: user_location; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.user_location (id, created_by, created_date, updated_by, updated_date, version, address_line_1, address_line_2, city, country, latitude, locality, location_type, longitude, merchant_id, state, status, user_id, user_type) FROM stdin;
\.


--
-- TOC entry 3498 (class 0 OID 297147)
-- Dependencies: 290
-- Data for Name: user_notification; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.user_notification (id, created_by, created_date, updated_by, updated_date, version, category, description, end_date_and_time, icon, merchant_id, status, user_id, user_notifier_id) FROM stdin;
\.


--
-- TOC entry 3501 (class 0 OID 297157)
-- Dependencies: 293
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.user_role_mapping (id, user_id, role_id, permission_group_id, created_by, created_date, updated_by, updated_date, version) FROM stdin;
1	1	1	1	1	2023-07-22 21:09:29.066562+05:30	\N	\N	0
82	219	16	\N	1	2023-11-20 17:53:46.413+05:30	\N	\N	0
84	221	17	1	220	2023-11-20 18:08:52.692+05:30	\N	\N	0
83	220	2	1	1	2023-11-20 17:56:06.99+05:30	\N	\N	0
\.


--
-- TOC entry 3504 (class 0 OID 297166)
-- Dependencies: 296
-- Data for Name: user_tc; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.user_tc (id, merchant_id, user_name, password, mobile, email_verified, created_by, created_date, updated_by, updated_date, email, status, realm, version, prev_login_date, is_enabled, company_id, fb_access_token, fb_id, fb_image_url, g_access_token, g_id, g_id_token, g_image_url, g_server_auth_code, registration_status, terms_and_condition, dob, name, category_type_id, device_id, registration_completed, one_time_password, otp_expiry_time, service_provider_id) FROM stdin;
221	104	b-executive@gmail.com	$2a$10$tZuKSi9sYa5Ws0HSAjc9Gu8gR1MUE4Y3IAhlIdpJdlFLGoyt2niRe	0705777868	t	220	2023-11-20 18:08:52.645+05:30	\N	\N	b-executive@gmail.com	t	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	\N	b executive	TCV	\N	t	\N	\N	\N
219	104	a_executive@gmail.com	$2a$10$vcIcs7hBEovAFXQDsYRo5O4k08XaJvIK6cqg.qBAeLWjy54LwCu52	0577786800	t	1	2023-11-20 17:53:30.601+05:30	1	2023-11-20 17:53:46.413+05:30	a_executive@gmail.com	t	\N	1	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	\N	A Executive	TCA	\N	t	\N	\N	\N
220	104	bvendor@gmail.com	$2a$10$xjF/8/MrCNmRrZLbMX8AQ.0NLPBMCJr4EmvCptZtFuI2XMGlCPdPq	8778687804	t	1	2023-11-20 17:56:06.97+05:30	\N	\N	bvendor@gmail.com	\N	\N	0	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	B Vendor	TCV	\N	\N	\N	\N	\N
1	104	admin@gmail.com	$2a$10$MdU0UJhB2RD0Ewqi./WW/eL6/q9tEYwgAmvvVwVbXc6TpmZBztJWu	7057778680	t	1	2023-07-22 21:09:29.066562+05:30	1	2023-11-15 12:32:09.269+05:30	admin@gmail.com	t	\N	31	\N	t	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	1988-02-07 00:00:00	Test Admin	TCA	\N	t	\N	\N	\N
\.


--
-- TOC entry 3513 (class 0 OID 337843)
-- Dependencies: 305
-- Data for Name: vendor_address_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.vendor_address_detail (id, created_by, created_date, updated_by, updated_date, version, address, area, city, country, landmark, pincode, state, street_name) FROM stdin;
1	1	2023-11-22 11:02:44.253	\N	\N	0	string	string	string	string	string	string	string	string
\.


--
-- TOC entry 3509 (class 0 OID 329524)
-- Dependencies: 301
-- Data for Name: vendor_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.vendor_detail (id, created_by, created_date, updated_by, updated_date, version, merchant_id, user_id, phone_no, email, name, status, address, area, business_information, city, country, is_cash, is_cheque, is_credit_card, is_debit_card, is_demand_draft, is_haj, is_online_booking, is_umrah, is_upi, is_ziyarat, landmark, pincode, state, street_name, year_of_establishment, business_pan, gst_number, pan, vendor_address_detail_id) FROM stdin;
11	1	2023-11-20 17:56:07.004	1	2023-11-22 11:02:44.29	2	104	220	8778687804	bvendor@gmail.com	B Vendor	INPROCESS	\N	\N	string	\N	\N	t	t	t	t	t	t	t	t	t	t	\N	\N	\N	\N	string	string	string	string	1
\.


--
-- TOC entry 3511 (class 0 OID 337787)
-- Dependencies: 303
-- Data for Name: vendor_document_detail; Type: TABLE DATA; Schema: ct; Owner: postgres
--

COPY ct.vendor_document_detail (id, created_by, created_date, updated_by, updated_date, version, document_type, file_name, file_path, source_type, status, vendor_detail_id) FROM stdin;
3	1	2023-11-21 12:28:05.374	\N	\N	0	PAN	PAN-11-1700549879498-License.jpg	https://s3.us-west-2.amazonaws.com/tc-bucket-dev/tc-dev/PAN-11-1700549879498-License.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20231121T065805Z&X-Amz-SignedHeaders=host&X-Amz-Expires=86399&X-Amz-Credential=AKIAJREDQ7H6CC4KAKWA%2F20231121%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Signature=b7eeef6a4419e357fba4e915eafcaccb25480c02592a242540e6ecf8dbfcc397	\N	t	11
4	1	2023-11-21 12:52:09.709	\N	\N	0	Licence	Licence-11-1700551325542-License.jpg	https://s3.us-west-2.amazonaws.com/tc-bucket-dev/tc-dev/Licence-11-1700551325542-License.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20231121T072209Z&X-Amz-SignedHeaders=host&X-Amz-Expires=86399&X-Amz-Credential=AKIAJREDQ7H6CC4KAKWA%2F20231121%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Signature=ec3280f772149890f48cef7f69e3056f7e2f26cd5a9a5f5334cc897d17800706	\N	t	11
5	1	2023-11-21 13:21:38.652	\N	\N	0	LRT License	LRT License-11-1700553094161-License.jpg	https://s3.us-west-2.amazonaws.com/tc-bucket-dev/tc-dev/LRT%20License-11-1700553094161-License.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20231121T075138Z&X-Amz-SignedHeaders=host&X-Amz-Expires=86399&X-Amz-Credential=AKIAJREDQ7H6CC4KAKWA%2F20231121%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Signature=968baf45508745c6c4a70bfbc9c68b57dfd1029fdaba79882b6b48d37c001e3a	\N	t	11
\.


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 204
-- Name: account_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.account_detail_id_seq', 1, false);


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 206
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.address_id_seq', 1, false);


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 207
-- Name: analytics_data_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.analytics_data_id_seq', 1, false);


--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 209
-- Name: api_history_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.api_history_id_seq', 1, false);


--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 211
-- Name: banner_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.banner_id_seq', 1, false);


--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 212
-- Name: blackout_date_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.blackout_date_id_seq', 1, false);


--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 213
-- Name: blog_detail_id_sequence; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.blog_detail_id_sequence', 2, true);


--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 215
-- Name: booking_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.booking_detail_id_seq', 1, false);


--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 216
-- Name: cart_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.cart_detail_id_seq', 1, false);


--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 217
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.city_id_seq', 6448, true);


--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 219
-- Name: coin_offer_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.coin_offer_detail_id_seq', 1, false);


--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 221
-- Name: contact_support_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.contact_support_id_seq', 14, true);


--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 222
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.country_id_seq', 6, true);


--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 225
-- Name: customer_account_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.customer_account_detail_id_seq', 1, false);


--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 227
-- Name: customer_address_location_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.customer_address_location_id_seq', 1, false);


--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 230
-- Name: customer_balance_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.customer_balance_detail_id_seq', 1, false);


--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 231
-- Name: customer_balance_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.customer_balance_id_seq', 1, false);


--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 233
-- Name: customer_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.customer_detail_id_seq', 1, false);


--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 234
-- Name: customer_favourite_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.customer_favourite_id_seq', 1, false);


--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 235
-- Name: customer_feedback_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.customer_feedback_id_seq', 1, false);


--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 237
-- Name: district_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.district_id_seq', 1, false);


--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 239
-- Name: employee_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.employee_detail_id_seq', 1, false);


--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 240
-- Name: enum_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.enum_id_seq', 83, true);


--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 243
-- Name: file_upload_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.file_upload_detail_id_seq', 1, false);


--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 246
-- Name: hours_of_operation_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.hours_of_operation_id_seq', 1, false);


--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 248
-- Name: invoice_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.invoice_detail_id_seq', 1, false);


--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 250
-- Name: languages_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.languages_id_seq', 1, false);


--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 252
-- Name: merchant_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.merchant_id_seq', 1, false);


--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 253
-- Name: notes_detail_id_sequence; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.notes_detail_id_sequence', 9, true);


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 257
-- Name: parking_category_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.parking_category_id_seq', 84, true);


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 258
-- Name: parking_slot_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.parking_slot_id_seq', 1, false);


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 259
-- Name: parking_space_location_document_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.parking_space_location_document_id_seq', 1, false);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 260
-- Name: parking_space_location_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.parking_space_location_id_seq', 1, false);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 261
-- Name: parking_type_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.parking_type_id_seq', 1, false);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 262
-- Name: payment_method_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.payment_method_id_seq', 9, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 265
-- Name: permission_group_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.permission_group_id_seq', 17, true);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 263
-- Name: permission_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.permission_id_seq', 67, true);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 268
-- Name: postalcode_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.postalcode_id_seq', 1, false);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 269
-- Name: referal_data_log_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.referal_data_log_id_seq', 1, false);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 270
-- Name: referal_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.referal_detail_id_seq', 1, false);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 272
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.role_id_seq', 18, true);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 274
-- Name: role_permission_mapping_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.role_permission_mapping_id_seq', 107, true);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 275
-- Name: service_provider_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.service_provider_detail_id_seq', 1, false);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 276
-- Name: service_provider_document_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.service_provider_document_id_seq', 84, true);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 277
-- Name: service_provider_feedback_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.service_provider_feedback_id_seq', 1, false);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 278
-- Name: slab_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.slab_detail_id_seq', 4, true);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 279
-- Name: state_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.state_id_seq', 48, true);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 281
-- Name: sub_booking_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.sub_booking_detail_id_seq', 14341, true);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 282
-- Name: subscribed_users_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.subscribed_users_id_seq', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 283
-- Name: tax_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.tax_detail_id_seq', 1, false);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 285
-- Name: template_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.template_detail_id_seq', 1, false);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 287
-- Name: user_appointment_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.user_appointment_id_seq', 1, false);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 289
-- Name: user_location_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.user_location_id_seq', 1, false);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 291
-- Name: user_notification_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.user_notification_id_seq', 1, false);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 292
-- Name: user_role_mapping_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.user_role_mapping_id_seq', 84, true);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 294
-- Name: user_so_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.user_so_id_seq', 221, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 295
-- Name: user_t4t_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.user_t4t_id_seq', 2, true);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 297
-- Name: vehicle_category_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.vehicle_category_id_seq', 2, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 298
-- Name: vehicle_sub_category_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.vehicle_sub_category_id_seq', 8, true);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 306
-- Name: vendor_address_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.vendor_address_detail_id_seq', 1, true);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 304
-- Name: vendor_detail_document_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.vendor_detail_document_id_seq', 5, true);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 302
-- Name: vendor_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.vendor_detail_id_seq', 11, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 299
-- Name: vendor_payment_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.vendor_payment_id_seq', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 300
-- Name: vendor_template_detail_id_seq; Type: SEQUENCE SET; Schema: ct; Owner: postgres
--

SELECT pg_catalog.setval('ct.vendor_template_detail_id_seq', 1, false);


--
-- TOC entry 3167 (class 2606 OID 297212)
-- Name: account_detail account_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.account_detail
    ADD CONSTRAINT account_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3169 (class 2606 OID 297214)
-- Name: address address_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- TOC entry 3171 (class 2606 OID 297218)
-- Name: api_history api_history_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.api_history
    ADD CONSTRAINT api_history_pkey PRIMARY KEY (id);


--
-- TOC entry 3173 (class 2606 OID 297220)
-- Name: banner banner_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.banner
    ADD CONSTRAINT banner_pkey PRIMARY KEY (id);


--
-- TOC entry 3175 (class 2606 OID 297224)
-- Name: booking_detail booking_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.booking_detail
    ADD CONSTRAINT booking_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3177 (class 2606 OID 297228)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 3179 (class 2606 OID 297232)
-- Name: contact_support contact_support_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.contact_support
    ADD CONSTRAINT contact_support_pkey PRIMARY KEY (id);


--
-- TOC entry 3181 (class 2606 OID 297234)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 297236)
-- Name: customer_account_detail customer_account_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_account_detail
    ADD CONSTRAINT customer_account_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 297238)
-- Name: customer_address_location customer_address_location_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_address_location
    ADD CONSTRAINT customer_address_location_pkey PRIMARY KEY (id);


--
-- TOC entry 3189 (class 2606 OID 297240)
-- Name: customer_balance_detail customer_balance_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_balance_detail
    ADD CONSTRAINT customer_balance_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 297242)
-- Name: customer_balance customer_balance_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_balance
    ADD CONSTRAINT customer_balance_pkey PRIMARY KEY (id);


--
-- TOC entry 3191 (class 2606 OID 297244)
-- Name: customer_detail customer_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_detail
    ADD CONSTRAINT customer_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 297250)
-- Name: district district_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.district
    ADD CONSTRAINT district_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 297252)
-- Name: employee_detail employee_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.employee_detail
    ADD CONSTRAINT employee_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 297254)
-- Name: enum enum_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.enum
    ADD CONSTRAINT enum_pkey PRIMARY KEY (id);


--
-- TOC entry 3201 (class 2606 OID 297256)
-- Name: file_upload_detail file_upload_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.file_upload_detail
    ADD CONSTRAINT file_upload_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 297258)
-- Name: flyway_schema_history flyway_schema_history_pk; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);


--
-- TOC entry 3206 (class 2606 OID 297260)
-- Name: hours_of_operation hours_of_operation_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.hours_of_operation
    ADD CONSTRAINT hours_of_operation_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 297262)
-- Name: invoice_detail invoice_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.invoice_detail
    ADD CONSTRAINT invoice_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 297264)
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 297266)
-- Name: merchant merchant_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.merchant
    ADD CONSTRAINT merchant_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 297268)
-- Name: notes_details notes_details_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.notes_details
    ADD CONSTRAINT notes_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 297270)
-- Name: offer_detail offer_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.offer_detail
    ADD CONSTRAINT offer_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 297272)
-- Name: over_booking over_booking_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.over_booking
    ADD CONSTRAINT over_booking_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 297284)
-- Name: permission_group permission_group_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.permission_group
    ADD CONSTRAINT permission_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 297286)
-- Name: permission permission_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 297290)
-- Name: postalcode postalcode_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.postalcode
    ADD CONSTRAINT postalcode_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 297296)
-- Name: role role_name_unique; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.role
    ADD CONSTRAINT role_name_unique UNIQUE (name);


--
-- TOC entry 3230 (class 2606 OID 297298)
-- Name: role_permission_mapping role_permission_mapping_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.role_permission_mapping
    ADD CONSTRAINT role_permission_mapping_pkey PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 297300)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 297308)
-- Name: state state_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.state
    ADD CONSTRAINT state_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 297314)
-- Name: template_detail template_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.template_detail
    ADD CONSTRAINT template_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3197 (class 2606 OID 297316)
-- Name: employee_detail uk_l8s48wwy84xd3l0ofkb0wmvf7; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.employee_detail
    ADD CONSTRAINT uk_l8s48wwy84xd3l0ofkb0wmvf7 UNIQUE (mobile);


--
-- TOC entry 3236 (class 2606 OID 297318)
-- Name: user_appointment user_appointment_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_appointment
    ADD CONSTRAINT user_appointment_pkey PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 297320)
-- Name: user_location user_location_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_location
    ADD CONSTRAINT user_location_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 297322)
-- Name: user_notification user_notification_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_notification
    ADD CONSTRAINT user_notification_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 297324)
-- Name: user_role_mapping user_role_mapping_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_role_mapping
    ADD CONSTRAINT user_role_mapping_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 297326)
-- Name: user_tc user_t4t_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_tc
    ADD CONSTRAINT user_t4t_pkey PRIMARY KEY (id);


--
-- TOC entry 3250 (class 2606 OID 337850)
-- Name: vendor_address_detail vendor_address_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.vendor_address_detail
    ADD CONSTRAINT vendor_address_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3246 (class 2606 OID 329528)
-- Name: vendor_detail vendor_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.vendor_detail
    ADD CONSTRAINT vendor_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 337794)
-- Name: vendor_document_detail vendor_document_detail_pkey; Type: CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.vendor_document_detail
    ADD CONSTRAINT vendor_document_detail_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 1259 OID 297335)
-- Name: flyway_schema_history_s_idx; Type: INDEX; Schema: ct; Owner: postgres
--

CREATE INDEX flyway_schema_history_s_idx ON ct.flyway_schema_history USING btree (success);


--
-- TOC entry 3266 (class 2606 OID 297336)
-- Name: notes_details fk2brddxhj5x19bk0ivvi51tisd; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.notes_details
    ADD CONSTRAINT fk2brddxhj5x19bk0ivvi51tisd FOREIGN KEY (user_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3278 (class 2606 OID 297341)
-- Name: user_location fk2lu0uplcodo3aq1xyepb1befl; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_location
    ADD CONSTRAINT fk2lu0uplcodo3aq1xyepb1befl FOREIGN KEY (user_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3251 (class 2606 OID 297356)
-- Name: address fk4cx5jughttw4h3qfxrcitbtxl; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.address
    ADD CONSTRAINT fk4cx5jughttw4h3qfxrcitbtxl FOREIGN KEY (state_id) REFERENCES ct.state(id);


--
-- TOC entry 3270 (class 2606 OID 297361)
-- Name: postalcode fk4evdnt8cvocxe5rsj45v7a80e; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.postalcode
    ADD CONSTRAINT fk4evdnt8cvocxe5rsj45v7a80e FOREIGN KEY (district_id) REFERENCES ct.district(id);


--
-- TOC entry 3263 (class 2606 OID 297371)
-- Name: employee_detail fk4p76sssl352yu8tk9lqk59r9n; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.employee_detail
    ADD CONSTRAINT fk4p76sssl352yu8tk9lqk59r9n FOREIGN KEY (user_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3259 (class 2606 OID 297391)
-- Name: customer_balance fk5qamdtudaulxdgy8k77efdbys; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_balance
    ADD CONSTRAINT fk5qamdtudaulxdgy8k77efdbys FOREIGN KEY (customer_id) REFERENCES ct.customer_detail(id);


--
-- TOC entry 3252 (class 2606 OID 297406)
-- Name: address fk6cf367v9u1cewhk6ui7lomgif; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.address
    ADD CONSTRAINT fk6cf367v9u1cewhk6ui7lomgif FOREIGN KEY (zipcode_id) REFERENCES ct.postalcode(id);


--
-- TOC entry 3268 (class 2606 OID 297411)
-- Name: offer_detail fk6ff01qc0h2terxx6ev2bufp4r; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.offer_detail
    ADD CONSTRAINT fk6ff01qc0h2terxx6ev2bufp4r FOREIGN KEY (city_id) REFERENCES ct.city(id);


--
-- TOC entry 3271 (class 2606 OID 297416)
-- Name: postalcode fk7cj9kg008l2sjt7xh2j5stiw1; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.postalcode
    ADD CONSTRAINT fk7cj9kg008l2sjt7xh2j5stiw1 FOREIGN KEY (city_id) REFERENCES ct.city(id);


--
-- TOC entry 3276 (class 2606 OID 297431)
-- Name: user_appointment fk8vpk1n3lcb00tlqmfrm28bgoa; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_appointment
    ADD CONSTRAINT fk8vpk1n3lcb00tlqmfrm28bgoa FOREIGN KEY (customer_user_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3262 (class 2606 OID 297436)
-- Name: district fk9q0dmy9dgad2d0ewohftj87cn; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.district
    ADD CONSTRAINT fk9q0dmy9dgad2d0ewohftj87cn FOREIGN KEY (state_id) REFERENCES ct.state(id);


--
-- TOC entry 3275 (class 2606 OID 297441)
-- Name: state fk_country; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.state
    ADD CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES ct.country(id);


--
-- TOC entry 3257 (class 2606 OID 297446)
-- Name: city fk_state; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.city
    ADD CONSTRAINT fk_state FOREIGN KEY (state_id) REFERENCES ct.state(id);


--
-- TOC entry 3277 (class 2606 OID 297456)
-- Name: user_appointment fkai7tfbryfrhov0ktt7j76gtj2; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_appointment
    ADD CONSTRAINT fkai7tfbryfrhov0ktt7j76gtj2 FOREIGN KEY (service_provider_user_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3272 (class 2606 OID 297461)
-- Name: role fkamsvhyjs9gva5gkau6ig1ulh2; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.role
    ADD CONSTRAINT fkamsvhyjs9gva5gkau6ig1ulh2 FOREIGN KEY (permission_group_id) REFERENCES ct.permission_group(id);


--
-- TOC entry 3260 (class 2606 OID 297471)
-- Name: customer_balance_detail fkbdv32nxdkr9e4g3qcfwft5y7; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_balance_detail
    ADD CONSTRAINT fkbdv32nxdkr9e4g3qcfwft5y7 FOREIGN KEY (customer_id) REFERENCES ct.customer_detail(id);


--
-- TOC entry 3253 (class 2606 OID 297496)
-- Name: address fke54x81nmccsk5569hsjg1a6ka; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.address
    ADD CONSTRAINT fke54x81nmccsk5569hsjg1a6ka FOREIGN KEY (country_id) REFERENCES ct.country(id);


--
-- TOC entry 3284 (class 2606 OID 337799)
-- Name: vendor_document_detail fkfmg2n0epmd8m70f570vijpqy2; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.vendor_document_detail
    ADD CONSTRAINT fkfmg2n0epmd8m70f570vijpqy2 FOREIGN KEY (vendor_detail_id) REFERENCES ct.vendor_detail(id);


--
-- TOC entry 3267 (class 2606 OID 297516)
-- Name: notes_details fkh09r91usb85q4xnesgvg205ls; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.notes_details
    ADD CONSTRAINT fkh09r91usb85q4xnesgvg205ls FOREIGN KEY (booking_id) REFERENCES ct.booking_detail(id);


--
-- TOC entry 3281 (class 2606 OID 297521)
-- Name: user_role_mapping fkh1am0olkimbvrgllo6rtrydc9; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_role_mapping
    ADD CONSTRAINT fkh1am0olkimbvrgllo6rtrydc9 FOREIGN KEY (user_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3279 (class 2606 OID 297526)
-- Name: user_notification fkhb248nl6680iwmt4do0ufmiy5; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_notification
    ADD CONSTRAINT fkhb248nl6680iwmt4do0ufmiy5 FOREIGN KEY (user_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3280 (class 2606 OID 297531)
-- Name: user_notification fkhi7uxtkjb51usu46mwfvjvsv; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_notification
    ADD CONSTRAINT fkhi7uxtkjb51usu46mwfvjvsv FOREIGN KEY (user_notifier_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3255 (class 2606 OID 297541)
-- Name: booking_detail fkirnp9l2bmsq21teesytdldaqu; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.booking_detail
    ADD CONSTRAINT fkirnp9l2bmsq21teesytdldaqu FOREIGN KEY (customer_id) REFERENCES ct.customer_detail(id);


--
-- TOC entry 3282 (class 2606 OID 297546)
-- Name: user_role_mapping fkivsrdkkmm4e9k19vgaat9upp2; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_role_mapping
    ADD CONSTRAINT fkivsrdkkmm4e9k19vgaat9upp2 FOREIGN KEY (role_id) REFERENCES ct.role(id);


--
-- TOC entry 3265 (class 2606 OID 297551)
-- Name: invoice_detail fkkyg6ncigdt8qii7hif80j49y0; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.invoice_detail
    ADD CONSTRAINT fkkyg6ncigdt8qii7hif80j49y0 FOREIGN KEY (booking_id) REFERENCES ct.booking_detail(id);


--
-- TOC entry 3273 (class 2606 OID 297566)
-- Name: role_permission_mapping fkmw1igvkrcpqq77w0o32gnbq2r; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.role_permission_mapping
    ADD CONSTRAINT fkmw1igvkrcpqq77w0o32gnbq2r FOREIGN KEY (role_id) REFERENCES ct.role(id);


--
-- TOC entry 3261 (class 2606 OID 297576)
-- Name: customer_detail fkngiwjihibs6bpbwun73j1q2sq; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_detail
    ADD CONSTRAINT fkngiwjihibs6bpbwun73j1q2sq FOREIGN KEY (user_id) REFERENCES ct.user_tc(id);


--
-- TOC entry 3283 (class 2606 OID 297591)
-- Name: user_role_mapping fknpmt96ls85om7mo3hx5thqnln; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.user_role_mapping
    ADD CONSTRAINT fknpmt96ls85om7mo3hx5thqnln FOREIGN KEY (permission_group_id) REFERENCES ct.permission_group(id);


--
-- TOC entry 3254 (class 2606 OID 297606)
-- Name: address fkpo044ng5x4gynb291cv24vtea; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.address
    ADD CONSTRAINT fkpo044ng5x4gynb291cv24vtea FOREIGN KEY (city_id) REFERENCES ct.city(id);


--
-- TOC entry 3274 (class 2606 OID 297611)
-- Name: role_permission_mapping fkpuihlymysj88vc9lp90rsocug; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.role_permission_mapping
    ADD CONSTRAINT fkpuihlymysj88vc9lp90rsocug FOREIGN KEY (permission_id) REFERENCES ct.permission(id);


--
-- TOC entry 3256 (class 2606 OID 297616)
-- Name: booking_detail fkquvljgur2yse98208tgrugibd; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.booking_detail
    ADD CONSTRAINT fkquvljgur2yse98208tgrugibd FOREIGN KEY (offer_detail_id) REFERENCES ct.offer_detail(id);


--
-- TOC entry 3258 (class 2606 OID 297626)
-- Name: customer_address_location fkt8hte3i7ty9wx67acjamxdj0h; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.customer_address_location
    ADD CONSTRAINT fkt8hte3i7ty9wx67acjamxdj0h FOREIGN KEY (customer_id) REFERENCES ct.customer_detail(id);


--
-- TOC entry 3264 (class 2606 OID 297631)
-- Name: file_upload_detail fktgw39so53tvd926lj1r3oodqj; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.file_upload_detail
    ADD CONSTRAINT fktgw39so53tvd926lj1r3oodqj FOREIGN KEY (merchant_id) REFERENCES ct.merchant(id);


--
-- TOC entry 3269 (class 2606 OID 297636)
-- Name: permission fktqibh46a99ho0ooxbqphdi2js; Type: FK CONSTRAINT; Schema: ct; Owner: postgres
--

ALTER TABLE ONLY ct.permission
    ADD CONSTRAINT fktqibh46a99ho0ooxbqphdi2js FOREIGN KEY (permission_group_id) REFERENCES ct.permission_group(id);


-- Completed on 2023-11-22 12:05:47 IST

--
-- PostgreSQL database dump complete
--

