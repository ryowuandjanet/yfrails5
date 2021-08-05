--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO ubuntu;

--
-- Name: builds; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.builds (
    id bigint NOT NULL,
    build_number character varying,
    build_url character varying,
    build_area numeric(10,2),
    build_holding_point_personal integer,
    build_holding_point_all integer,
    build_type_use character varying,
    use_partition character varying,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "buildCity" character varying,
    "buildTownship" character varying,
    "buildArea" character varying,
    "buildStreet" character varying,
    "buildRoad" character varying,
    "buildSegment" character varying,
    "buildLane" character varying,
    "buildDo" character varying,
    "buildNumber" character varying,
    "buildFloor" character varying,
    "buildBigSegment" character varying,
    "buildSmallSegment" character varying,
    "buildLot" character varying,
    "buildLevel1" character varying,
    "buildLevel2" character varying,
    "buildLevel3" character varying,
    "buildLevel4" character varying,
    "buildOther1" character varying,
    "buildOther2" character varying,
    "buildUse" character varying,
    "buildScopeOfArea" character varying,
    "buildScopeOfRights" character varying,
    "buildRemarks" character varying,
    "buildTotalArea" character varying,
    "buildLandNumber" character varying
);


ALTER TABLE public.builds OWNER TO ubuntu;

--
-- Name: builds_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.builds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.builds_id_seq OWNER TO ubuntu;

--
-- Name: builds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.builds_id_seq OWNED BY public.builds.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.countries OWNER TO ubuntu;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO ubuntu;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: lands; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.lands (
    id bigint NOT NULL,
    land_number character varying,
    land_url character varying,
    land_area numeric(10,2),
    land_holding_point_personal integer,
    land_holding_point_all integer,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "landRemarks" character varying,
    "landPresentValue" character varying,
    "landTotalArea" character varying,
    "landAreaWidth" character varying,
    "landAreaDepth" character varying
);


ALTER TABLE public.lands OWNER TO ubuntu;

--
-- Name: lands_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.lands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lands_id_seq OWNER TO ubuntu;

--
-- Name: lands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.lands_id_seq OWNED BY public.lands.id;


--
-- Name: objectbuilds; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.objectbuilds (
    id bigint NOT NULL,
    address character varying,
    total_price integer,
    build_area numeric(9,2),
    house_age numeric(5,2),
    floor_height character varying,
    objectbuild_url character varying,
    surveyora character varying,
    surveyorb character varying,
    plusa numeric(3,2),
    plusb numeric(3,2),
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    objectbuild_status character varying,
    plusa_reason character varying,
    plusb_reason character varying
);


ALTER TABLE public.objectbuilds OWNER TO ubuntu;

--
-- Name: objectbuilds_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.objectbuilds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objectbuilds_id_seq OWNER TO ubuntu;

--
-- Name: objectbuilds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.objectbuilds_id_seq OWNED BY public.objectbuilds.id;


--
-- Name: personnals; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.personnals (
    id bigint NOT NULL,
    is_debtor boolean,
    is_creditor boolean,
    is_land_owner boolean,
    is_build_owner boolean,
    name character varying,
    identity_card character varying,
    birthday timestamp without time zone,
    local_phone character varying,
    mobile_phone character varying,
    personnal_notes character varying,
    person_country character varying,
    person_township character varying,
    person_village character varying,
    person_neighbor character varying,
    person_street character varying,
    person_section character varying,
    person_lane character varying,
    person_alley character varying,
    person_number character varying,
    person_floor character varying,
    is_original_owner boolean,
    is_new_owner boolean,
    is_deed_tax_agent boolean,
    is_tax_agent boolean,
    identity_code character varying,
    public_or_private character varying,
    right_share_person integer,
    right_share_all integer,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "personnalBuildHoldingPointPerson" character varying,
    "personnalBuildHoldingPointAll" character varying,
    "ownerFullAddress" character varying
);


ALTER TABLE public.personnals OWNER TO ubuntu;

--
-- Name: personnals_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.personnals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personnals_id_seq OWNER TO ubuntu;

--
-- Name: personnals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.personnals_id_seq OWNED BY public.personnals.id;


--
-- Name: plusrateas; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.plusrateas (
    id bigint NOT NULL,
    persona character varying,
    plusa numeric(4,2),
    objectbuild_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    plusa_reason character varying
);


ALTER TABLE public.plusrateas OWNER TO ubuntu;

--
-- Name: plusrateas_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.plusrateas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plusrateas_id_seq OWNER TO ubuntu;

--
-- Name: plusrateas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.plusrateas_id_seq OWNED BY public.plusrateas.id;


--
-- Name: plusratebs; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.plusratebs (
    id bigint NOT NULL,
    personb character varying,
    plusb numeric(4,2),
    objectbuild_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    plusb_reason character varying
);


ALTER TABLE public.plusratebs OWNER TO ubuntu;

--
-- Name: plusratebs_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.plusratebs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plusratebs_id_seq OWNER TO ubuntu;

--
-- Name: plusratebs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.plusratebs_id_seq OWNED BY public.plusratebs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ubuntu;

--
-- Name: subsigntrueas; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.subsigntrueas (
    id bigint NOT NULL,
    signtruea character varying,
    signtruea_first_name character varying,
    signtruea_last_name character varying,
    signtruea_date date,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.subsigntrueas OWNER TO ubuntu;

--
-- Name: subsigntrueas_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.subsigntrueas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subsigntrueas_id_seq OWNER TO ubuntu;

--
-- Name: subsigntrueas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.subsigntrueas_id_seq OWNED BY public.subsigntrueas.id;


--
-- Name: subsigntruebs; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.subsigntruebs (
    id bigint NOT NULL,
    signtrueb character varying,
    signtrueb_first_name character varying,
    signtrueb_last_name character varying,
    signtrueb_date date,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.subsigntruebs OWNER TO ubuntu;

--
-- Name: subsigntruebs_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.subsigntruebs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subsigntruebs_id_seq OWNER TO ubuntu;

--
-- Name: subsigntruebs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.subsigntruebs_id_seq OWNED BY public.subsigntruebs.id;


--
-- Name: subsigntruecs; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.subsigntruecs (
    id bigint NOT NULL,
    signtruec character varying,
    signtruec_first_name character varying,
    signtruec_last_name character varying,
    signtruec_date date,
    yfcase_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.subsigntruecs OWNER TO ubuntu;

--
-- Name: subsigntruecs_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.subsigntruecs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subsigntruecs_id_seq OWNER TO ubuntu;

--
-- Name: subsigntruecs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.subsigntruecs_id_seq OWNED BY public.subsigntruecs.id;


--
-- Name: townships; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.townships (
    id bigint NOT NULL,
    name character varying,
    zip_code character varying,
    district_court character varying,
    land_office character varying,
    finance_and_tax_bureau character varying,
    police_station character varying,
    irs character varying,
    home_office character varying,
    country_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.townships OWNER TO ubuntu;

--
-- Name: townships_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.townships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.townships_id_seq OWNER TO ubuntu;

--
-- Name: townships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.townships_id_seq OWNED BY public.townships.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    role integer,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    full_name character varying,
    "userIdentityCard" character varying,
    "userBirthday" date,
    "userLocalPhone" character varying,
    "userMobilePhone" character varying,
    "userNotes" character varying,
    "userCountry" character varying,
    "userTownship" character varying,
    "userVillage" character varying,
    "userNeighbor" character varying,
    "userStreet" character varying,
    "userSection" character varying,
    "userLane" character varying,
    "userAlley" character varying,
    "userNumber" character varying,
    "userFloor" character varying,
    "userIdentityCode" character varying,
    "userPublicOrPrivate" character varying
);


ALTER TABLE public.users OWNER TO ubuntu;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ubuntu;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: yfcases; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.yfcases (
    id bigint NOT NULL,
    case_number character varying,
    other_address character varying,
    auction_day_1 date,
    auction_day_2 date,
    auction_day_3 date,
    auction_day_4 date,
    floor_price_1 integer,
    floor_price_2 integer,
    floor_price_3 integer,
    floor_price_4 integer,
    click_1 integer,
    click_2 integer,
    click_3 integer,
    click_4 integer,
    monitor_1 integer,
    monitor_2 integer,
    monitor_3 integer,
    monitor_4 integer,
    margin_1 integer,
    margin_2 integer,
    margin_3 integer,
    margin_4 integer,
    auction_notes character varying,
    first_survey_day date,
    other_survey_day date,
    foreclosure_announcement_title character varying,
    foreclosure_announcement_link character varying,
    object_photo_title character varying,
    object_photo_link character varying,
    net_price_registration_market_price_title character varying,
    net_price_registration_market_price_link character varying,
    net_price_registration_map_title character varying,
    net_price_registration_map_link character varying,
    net_price_registration_photo_title character varying,
    net_price_registration_photo_link character varying,
    auction_record_title character varying,
    auction_record_link character varying,
    other_notes character varying,
    survey_resolution character varying,
    final_decision character varying,
    co_owner boolean,
    occupy boolean,
    register boolean,
    parking_space boolean,
    management_fee boolean,
    rent boolean,
    leak boolean,
    easy_parking boolean,
    railway boolean,
    vegetable_market boolean,
    supermarket boolean,
    school boolean,
    park boolean,
    post_office boolean,
    main_road boolean,
    water_and_power_failure boolean,
    good_vision boolean,
    final_decision_date date,
    country_id integer,
    township_id integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    big_section character varying,
    small_section character varying,
    company character varying,
    foreclosure_announcement_988_link character varying,
    adv_find_condition character varying,
    active_result character varying,
    active_result_date date,
    priority_purchase_result character varying,
    target_number character varying,
    cause_data date,
    application_for_registration character varying,
    reason_for_registration character varying,
    marking_and_application_rights character varying,
    "attached_Document_Content_1" character varying,
    number_of_attached_quantity_1 integer,
    "attached_Document_Content_2" character varying,
    number_of_attached_quantity_2 integer,
    "attached_Document_Content_3" character varying,
    number_of_attached_quantity_3 integer,
    registration_notes character varying,
    "deedtaxDateOfDeed" date,
    "deedtaxDeclarationDate" date,
    "deedtaxTransferPrice" integer,
    "deedtaxChargeDaffairesTaxDeclarant" character varying,
    "deedtaxDebtTaxPaymentReceiptMethod" character varying,
    "deedtaxClosedNewsletter" character varying,
    "deedtaxUnderreportedDays" integer,
    "deedtaxRemark" character varying,
    "deedtaxBuildingTransferLevel1" character varying,
    "deedtaxBuildingTransferLevel2" character varying,
    "deedtaxBuildingTransferLevel3" character varying,
    "deedtaxBuildingTransferLevel4" character varying,
    "deedtaxBuildingTransferLevel5" character varying,
    "deedtaxBuildingTransferLevel6" character varying,
    "deedtaxBuildingTransferLevel7" character varying,
    "deedtaxBuildingTransferStructure1" character varying,
    "deedtaxBuildingTransferStructure2" character varying,
    "deedtaxBuildingTransferStructure3" character varying,
    "deedtaxBuildingTransferStructure4" character varying,
    "deedtaxBuildingTransferStructure5" character varying,
    "deedtaxBuildingTransferStructure6" character varying,
    "deedtaxBuildingTransferStructure7" character varying,
    "deedtaxBuildingTransferArea1" character varying,
    "deedtaxBuildingTransferArea2" character varying,
    "deedtaxBuildingTransferArea3" character varying,
    "deedtaxBuildingTransferArea4" character varying,
    "deedtaxBuildingTransferArea5" character varying,
    "deedtaxBuildingTransferArea6" character varying,
    "deedtaxBuildingTransferArea7" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber1" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber2" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber3" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber4" character varying,
    "deedtaxBuildingTransferPublicBuildingNumber5" character varying,
    "deedtaxBuildingTransferPublicArea1" character varying,
    "deedtaxBuildingTransferPublicArea2" character varying,
    "deedtaxBuildingTransferPublicArea3" character varying,
    "deedtaxBuildingTransferPublicArea4" character varying,
    "deedtaxBuildingTransferPublicArea5" character varying,
    "deedtaxBuildingTransferPublicHoldings1" character varying,
    "deedtaxBuildingTransferPublicHoldings2" character varying,
    "deedtaxBuildingTransferPublicHoldings3" character varying,
    "deedtaxBuildingTransferPublicHoldings4" character varying,
    "deedtaxBuildingTransferPublicHoldings5" character varying,
    "housingTax" character varying,
    "refereeFee" character varying,
    "agreementSplitUnsuccessfulDate" character varying,
    exhibit1 character varying,
    exhibit2 character varying,
    exhibit3 character varying,
    exhibit4 character varying,
    "tabulationDate" date,
    "isMobileOrDesktop" character varying,
    "realestateregistrationRealEstateAgent" character varying,
    "complaintLitigationAgent" character varying,
    "debtorName" character varying,
    "debtorIdentitycard" character varying,
    "debtorBirthday" date,
    "debtorLocallphone" character varying,
    "debtorMobilelphone" character varying,
    "debtorNotes" character varying,
    "debtorCountry" character varying,
    "debtorTownship" character varying,
    "debtorVillage" character varying,
    "debtorNeighbor" character varying,
    "debtorStreet" character varying,
    "debtorSection" character varying,
    "debtorLane" character varying,
    "debtorAlley" character varying,
    "debtorNumber" character varying,
    "debtorFloor" character varying,
    "debtorBuildholdingpointperson" character varying,
    "debtorBuildholdingpointall" character varying,
    "debtorLandholdingpointperson" character varying,
    "debtorLandholdingpointall" character varying,
    "creditorName" character varying,
    "creditorIdentitycard" character varying,
    "creditorBirthday" date,
    "creditorLocallphone" character varying,
    "creditorMobilelphone" character varying,
    "creditorNotes" character varying,
    "creditorCountry" character varying,
    "creditorTownship" character varying,
    "creditorVillage" character varying,
    "creditorNeighbor" character varying,
    "creditorStreet" character varying,
    "creditorSection" character varying,
    "creditorLane" character varying,
    "creditorAlley" character varying,
    "creditorNumber" character varying,
    "creditorFloor" character varying,
    "creditorBuildholdingpointperson" character varying,
    "creditorBuildholdingpointall" character varying,
    "creditorLandholdingpointperson" character varying,
    "creditorLandholdingpointall" character varying,
    "houseTaxNumberCountry1" character varying,
    "houseTaxNumberCountry2" character varying,
    "houseTaxNumberTownship1" character varying,
    "houseTaxNumberTownship2" character varying,
    "houseTaxNumberBuilding1" character varying,
    "houseTaxNumberBuilding2" character varying,
    "houseTaxNumberBuilding3" character varying,
    "houseTaxNumberBuilding4" character varying,
    "houseTaxNumberHouseHold1" character varying,
    "houseTaxNumberHouseHold2" character varying,
    "houseTaxNumberHouseHold3" character varying
);


ALTER TABLE public.yfcases OWNER TO ubuntu;

--
-- Name: yfcases_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.yfcases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yfcases_id_seq OWNER TO ubuntu;

--
-- Name: yfcases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.yfcases_id_seq OWNED BY public.yfcases.id;


--
-- Name: builds id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.builds ALTER COLUMN id SET DEFAULT nextval('public.builds_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: lands id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.lands ALTER COLUMN id SET DEFAULT nextval('public.lands_id_seq'::regclass);


--
-- Name: objectbuilds id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.objectbuilds ALTER COLUMN id SET DEFAULT nextval('public.objectbuilds_id_seq'::regclass);


--
-- Name: personnals id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.personnals ALTER COLUMN id SET DEFAULT nextval('public.personnals_id_seq'::regclass);


--
-- Name: plusrateas id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.plusrateas ALTER COLUMN id SET DEFAULT nextval('public.plusrateas_id_seq'::regclass);


--
-- Name: plusratebs id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.plusratebs ALTER COLUMN id SET DEFAULT nextval('public.plusratebs_id_seq'::regclass);


--
-- Name: subsigntrueas id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntrueas ALTER COLUMN id SET DEFAULT nextval('public.subsigntrueas_id_seq'::regclass);


--
-- Name: subsigntruebs id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntruebs ALTER COLUMN id SET DEFAULT nextval('public.subsigntruebs_id_seq'::regclass);


--
-- Name: subsigntruecs id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntruecs ALTER COLUMN id SET DEFAULT nextval('public.subsigntruecs_id_seq'::regclass);


--
-- Name: townships id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.townships ALTER COLUMN id SET DEFAULT nextval('public.townships_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: yfcases id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.yfcases ALTER COLUMN id SET DEFAULT nextval('public.yfcases_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-07-20 02:56:36.84259	2020-07-20 02:56:36.84259
\.


--
-- Data for Name: builds; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.builds (id, build_number, build_url, build_area, build_holding_point_personal, build_holding_point_all, build_type_use, use_partition, yfcase_id, created_at, updated_at, "buildCity", "buildTownship", "buildArea", "buildStreet", "buildRoad", "buildSegment", "buildLane", "buildDo", "buildNumber", "buildFloor", "buildBigSegment", "buildSmallSegment", "buildLot", "buildLevel1", "buildLevel2", "buildLevel3", "buildLevel4", "buildOther1", "buildOther2", "buildUse", "buildScopeOfArea", "buildScopeOfRights", "buildRemarks", "buildTotalArea", "buildLandNumber") FROM stdin;
1	135		73.76	1	18	2透天厝	第一種住宅區	1	2020-07-20 06:31:02.762886	2020-07-20 06:31:02.762886	\N	\N	\N	\N		\N					\N	\N										\N			\N
2	3441		120.75	1	18	2透天厝	第一種住宅區	1	2020-07-20 06:31:02.769472	2020-07-20 06:31:02.769472	\N	\N	\N	\N		\N					\N	\N										\N			\N
3	188		65.60	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	2	2020-07-20 06:42:40.680946	2020-07-20 06:42:40.680946	\N	\N	\N	\N		\N					\N	\N										\N			\N
4	4245		46.41	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	2	2020-07-20 06:42:40.683137	2020-07-20 06:42:40.683137	\N	\N	\N	\N		\N					\N	\N										\N			\N
5	661		83.98	1	7	2透天厝	第一種住宅區	3	2020-07-20 06:51:10.248917	2020-07-20 06:51:10.248917	\N	\N	\N	\N		\N					\N	\N										\N			\N
6	1788		70.61	1	7	2透天厝	第一種住宅區	3	2020-07-20 06:51:10.251994	2020-07-20 06:51:10.251994	\N	\N	\N	\N		\N					\N	\N										\N			\N
7	4664		76.48	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	4	2020-07-20 06:56:20.110244	2020-07-20 06:56:20.110244	\N	\N	\N	\N		\N					\N	\N										\N			\N
8	1254		84.37	1	5	6華廈(10層含以下有電梯)	第一種住宅區	5	2020-07-20 07:49:29.128837	2020-07-20 07:49:29.128837	\N	\N	\N	\N		\N					\N	\N										\N			\N
10	906		97.28	1	3	2透天厝	第一種住宅區	6	2020-07-20 07:55:42.559185	2020-07-20 07:55:42.559185	\N	\N	\N	\N		\N					\N	\N										\N			\N
11	27371		151.96	1	5	2透天厝	第一種住宅區	7	2020-07-20 08:00:39.479306	2020-07-20 08:00:39.479306	\N	\N	\N	\N		\N					\N	\N										\N			\N
12	5574		109.39	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	8	2020-07-20 08:04:52.276498	2020-07-20 08:04:52.276498	\N	\N	\N	\N		\N					\N	\N										\N			\N
13	10085		95.13	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	8	2020-07-20 08:04:52.279647	2020-07-20 08:04:52.279647	\N	\N	\N	\N		\N					\N	\N										\N			\N
14	806		110.12	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	9	2020-07-20 08:08:41.523516	2020-07-20 08:08:41.523516	\N	\N	\N	\N		\N					\N	\N										\N			\N
15	1635	https://drive.google.com/drive/folders/19qru68HgIO9M_wTfa5KeQyInRqu7GGr5	49.56	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	10	2020-07-20 08:12:54.696831	2020-07-20 08:12:54.696831	\N	\N	\N	\N		\N					\N	\N										\N			\N
16	38		168.84	1	4	2透天厝	第一種住宅區	11	2020-07-20 08:16:10.514703	2020-07-20 08:16:10.514703	\N	\N	\N	\N		\N					\N	\N										\N			\N
17	984		100.99	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	14	2020-07-20 08:22:32.914319	2020-07-20 08:22:32.914319	\N	\N	\N	\N		\N					\N	\N										\N			\N
18	98		88.60	1	3	2透天厝	第一種住宅區	15	2020-07-20 08:25:12.121018	2020-07-20 08:25:12.121018	\N	\N	\N	\N		\N					\N	\N										\N			\N
19	6059	https://drive.google.com/drive/mobile/folders/12Xo0A7PsAihvHXFfcQla0nmsZ7O-VJD7	187.06	1	8	2透天厝	第一種住宅區	16	2020-07-20 08:29:31.684504	2020-07-20 08:29:31.684504	\N	\N	\N	\N		\N					\N	\N										\N			\N
20	242		144.90	4	6	2透天厝	第一種住宅區	17	2020-07-20 08:33:47.681012	2020-07-20 08:33:47.681012	\N	\N	\N	\N		\N					\N	\N										\N			\N
9	1287		1231.00	1	42	0公設	第一種住宅區	5	2020-07-20 07:49:29.131071	2020-07-20 09:26:10.414256	\N	\N	\N	\N		\N					\N	\N										\N			\N
23	2583	https://drive.google.com/drive/u/1/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	80.10	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	18	2020-08-04 06:36:02.121963	2020-08-04 06:44:00.221305	\N	\N	\N	\N		\N					\N	\N										\N			\N
24	301	https://drive.google.com/drive/u/1/folders/101EycYhst6wW3xUD2OYxnsc2jhUufc-V	101.29	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	19	2020-08-04 06:53:37.27975	2020-08-04 06:53:37.27975	\N	\N	\N	\N		\N					\N	\N										\N			\N
25	2590	https://drive.google.com/drive/u/0/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	152.46	1	8	0公設	第一種住宅區	18	2020-08-06 12:33:13.651031	2020-08-06 12:33:13.651031	\N	\N	\N	\N		\N					\N	\N										\N			\N
21	774	https://drive.google.com/drive/u/1/folders/1VhEp9cfB65HgsC-kFAt0mjU4wybrejiH	84.37	1	6	2透天厝	第一種住宅區	12	2020-07-20 10:20:05.912932	2020-08-07 05:53:26.271954	\N	\N	\N	\N	西門路	1	702	2	17		\N	\N	南門段	57.75	12.83						9.25	\N			18
22	774		79.83	1	6	2透天厝	第四種商業區	12	2020-07-20 10:20:05.915884	2020-08-07 05:53:26.273773	\N	\N	\N	\N	西門路	1	702	2	17		\N	\N	南門段	57.75	12.83					陽台	9.25	\N			
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.countries (id, name, created_at, updated_at) FROM stdin;
1	台北市	2020-07-20 02:58:30.884524	2020-07-20 02:58:30.884524
2	基隆市	2020-07-20 02:58:30.889041	2020-07-20 02:58:30.889041
3	新北市	2020-07-20 02:58:30.892173	2020-07-20 02:58:30.892173
4	連江縣	2020-07-20 02:58:30.895192	2020-07-20 02:58:30.895192
5	宜蘭縣	2020-07-20 02:58:30.898333	2020-07-20 02:58:30.898333
6	釣魚台	2020-07-20 02:58:30.901437	2020-07-20 02:58:30.901437
7	新竹市	2020-07-20 02:58:30.904587	2020-07-20 02:58:30.904587
8	新竹縣	2020-07-20 02:58:30.907678	2020-07-20 02:58:30.907678
9	桃園縣	2020-07-20 02:58:30.91078	2020-07-20 02:58:30.91078
10	苗栗縣	2020-07-20 02:58:30.913948	2020-07-20 02:58:30.913948
11	台中市	2020-07-20 02:58:30.917178	2020-07-20 02:58:30.917178
12	彰化縣	2020-07-20 02:58:30.920257	2020-07-20 02:58:30.920257
13	南投縣	2020-07-20 02:58:30.923304	2020-07-20 02:58:30.923304
14	嘉義市	2020-07-20 02:58:30.926377	2020-07-20 02:58:30.926377
15	嘉義縣	2020-07-20 02:58:30.929402	2020-07-20 02:58:30.929402
16	雲林縣	2020-07-20 02:58:30.93266	2020-07-20 02:58:30.93266
17	台南市	2020-07-20 02:58:30.935907	2020-07-20 02:58:30.935907
18	高雄市	2020-07-20 02:58:30.93904	2020-07-20 02:58:30.93904
19	南海島	2020-07-20 02:58:30.942122	2020-07-20 02:58:30.942122
20	澎湖縣	2020-07-20 02:58:30.94531	2020-07-20 02:58:30.94531
21	金門縣	2020-07-20 02:58:30.94854	2020-07-20 02:58:30.94854
22	屏東縣	2020-07-20 02:58:30.951686	2020-07-20 02:58:30.951686
23	台東縣	2020-07-20 02:58:30.954765	2020-07-20 02:58:30.954765
24	花蓮縣	2020-07-20 02:58:30.957832	2020-07-20 02:58:30.957832
\.


--
-- Data for Name: lands; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.lands (id, land_number, land_url, land_area, land_holding_point_personal, land_holding_point_all, yfcase_id, created_at, updated_at, "landRemarks", "landPresentValue", "landTotalArea", "landAreaWidth", "landAreaDepth") FROM stdin;
1	1481		74.00	1	18	1	2020-07-20 06:31:02.756242	2020-07-20 06:31:02.756242					
2	708		102.00	1	12	2	2020-07-20 06:42:40.67916	2020-07-20 06:42:40.67916					
3	168		76.00	1	7	3	2020-07-20 06:51:10.246574	2020-07-20 06:51:10.246574					
4	290-759		166.00	1	12	4	2020-07-20 06:56:20.107756	2020-07-20 06:56:20.107756					
6	1588-2		75.55	1	3	6	2020-07-20 07:55:42.556917	2020-07-20 07:55:42.556917					
7	74-141		59.00	1	5	7	2020-07-20 08:00:39.477032	2020-07-20 08:00:39.477032					
8	212-6		756.00	374	60000	8	2020-07-20 08:04:52.274201	2020-07-20 08:04:52.274201					
10	96-10	https://drive.google.com/drive/folders/19qru68HgIO9M_wTfa5KeQyInRqu7GGr5	94.00	1	24	10	2020-07-20 08:12:54.69454	2020-07-20 08:12:54.69454					
11	277		195.92	1	4	11	2020-07-20 08:16:10.512342	2020-07-20 08:16:10.512342					
12	573	https://drive.google.com/drive/mobile/folders/1f6PtxeSiXVh4SZqTpK9DSJt7dBlf-5wb	202.45	1	20	14	2020-07-20 08:22:32.912043	2020-07-20 08:22:32.912043					
13	565	https://drive.google.com/drive/mobile/folders/1HtTsGVYYLsrgLmA6H0juIU_S-PpyPNG8	57.85	1	3	15	2020-07-20 08:25:12.116482	2020-07-20 08:25:12.116482					
14	567	https://drive.google.com/drive/mobile/folders/1HtTsGVYYLsrgLmA6H0juIU_S-PpyPNG8	11.82	1	3	15	2020-07-20 08:25:12.118754	2020-07-20 08:25:12.118754					
15	2965-23	https://drive.google.com/drive/mobile/folders/12Xo0A7PsAihvHXFfcQla0nmsZ7O-VJD7	2137.00	52	10000	16	2020-07-20 08:29:31.682226	2020-07-20 08:29:31.682226					
16	1248		31.00	4	6	17	2020-07-20 08:33:47.676332	2020-07-20 08:33:47.676332					
17	1249		35.00	4	6	17	2020-07-20 08:33:47.678709	2020-07-20 08:33:47.678709					
9	182		1183.00	315	60000	9	2020-07-20 08:08:41.521801	2020-07-20 09:19:31.975005					
5	1377		2311.00	101	50000	5	2020-07-20 07:49:29.126453	2020-07-20 09:27:25.694831					
19	1832	https://drive.google.com/drive/u/1/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	683.58	1	96	18	2020-08-04 06:36:02.101481	2020-08-04 06:36:02.101481					
20	1832-1	https://drive.google.com/drive/u/1/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	21.58	1	96	18	2020-08-04 06:36:02.119434	2020-08-04 06:36:02.119434					
21	391	https://drive.google.com/drive/u/1/folders/101EycYhst6wW3xUD2OYxnsc2jhUufc-V	77.13	1	2	19	2020-08-04 06:53:37.276451	2020-08-04 06:53:37.276451					
18	901	https://drive.google.com/drive/u/1/folders/1VhEp9cfB65HgsC-kFAt0mjU4wybrejiH	73.67	1	6	12	2020-07-20 10:20:05.911103	2020-08-05 08:33:01.545367		30500	73.67	23	4.9
\.


--
-- Data for Name: objectbuilds; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.objectbuilds (id, address, total_price, build_area, house_age, floor_height, objectbuild_url, surveyora, surveyorb, plusa, plusb, yfcase_id, created_at, updated_at, objectbuild_status, plusa_reason, plusb_reason) FROM stdin;
1	板橋區四川路一段241~270號	9000000	17.79	49.00	3		\N	\N	\N	\N	1	2020-07-20 06:31:02.772971	2020-07-20 06:31:02.772971	自訂	\N	\N
10	安南區安通路四段119巷27弄1~30號	6600000	34.66	38.00	透天	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%8D%97%E5%8D%80?kw=%E5%AE%89%E9%80%9A%E8%B7%AF%E5%9B%9B%E6%AE%B5	曾友和	曾昱銓	1.00	1.10	6	2020-07-20 07:55:42.562236	2020-07-20 09:15:37.143574	自訂		
18	七堵區泰安路2巷1~30號	3500000	25.21	\N	2/4		張浩文	\N	0.80	\N	9	2020-07-20 08:08:41.527304	2020-07-20 09:19:57.839929	自訂		\N
4	武德街135巷1~30號	4250000	22.14	48.00	2		\N	\N	\N	\N	3	2020-07-20 06:51:10.255065	2020-07-20 06:51:10.255065	自訂	\N	\N
21	復興路1~30號	2680000	49.67	26.00	4		曾昱銓	\N	1.10	\N	11	2020-07-20 08:16:10.517844	2020-07-20 09:40:19.967405	自訂	實際坪數約80坪\t	\N
17	七堵區泰和街61~90號	3350000	28.36	29.00	3/4		\N	\N	\N	\N	9	2020-07-20 08:08:41.525758	2020-07-20 08:08:41.525758	自訂	\N	\N
19	板橋區懷德街78巷1~30號	6450000	19.46	45.00	4/4	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%87%B7%E5%BE%B7%E8%A1%9778%E5%B7%B71%E8%99%9F/@25.0315844,121.4782618,3a,75y,169.14h,89.6t/data=!3m7!1e1!3m5!1sXpaKTjjfXSQKPgCUvzx77A!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DXpaKTjjfXSQKPgCUvzx77A%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D182.28134%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5p2_5qmL5Y2A5oe35b636KGXNzjlt7cxfjMw6Jmf!3m4!1s0x3442a845c3183079:0x7c82dda16d74a051!8m2!3d25.0314992!4d121.4782531	\N	\N	\N	\N	10	2020-07-20 08:12:54.69991	2020-07-20 08:12:54.69991	自訂	\N	\N
20	板橋區懷德街91~120號	9500000	25.62	46.60	3/4	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%87%B7%E5%BE%B7%E8%A1%9791%E8%99%9F/@25.0316992,121.4781761,3a,75y,344.67h,93.72t/data=!3m7!1e1!3m5!1sGGy9DCFqu95RE2EokApw0A!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3DGGy9DCFqu95RE2EokApw0A%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D17.913296%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442a845c13b7cd9:0xb352895716a9a73a!8m2!3d25.0318411!4d121.4782099	\N	\N	\N	\N	10	2020-07-20 08:12:54.702649	2020-07-20 08:12:54.702649	自訂	\N	\N
22	安平區安平路370巷3弄1~30號	3400000	28.52	44.70	2/4	https://goo.gl/maps/psYVs2UkDkfvtdY96	\N	\N	\N	\N	14	2020-07-20 08:22:32.917347	2020-07-20 08:22:32.917347	自訂	\N	\N
23	安平區安平路370巷3弄1~30號\t	3600000	28.17	\N		https://goo.gl/maps/psYVs2UkDkfvtdY96	\N	\N	\N	\N	14	2020-07-20 08:22:32.91947	2020-07-20 08:22:32.91947	自訂	\N	\N
24	永康區文賢街271~300號	6200000	32.34	32.40	1/2	https://www.google.com.tw/maps/place/710%E5%8F%B0%E5%8D%97%E5%B8%82%E6%B0%B8%E5%BA%B7%E5%8D%80%E6%96%87%E8%B3%A2%E8%A1%97271%E8%99%9F/@23.0121451,120.2703226,3a,75y,228.77h,95.13t/data=!3m6!1e1!3m4!1sIQzUnpXP8Fclj4IayxJEdg!2e0!7i13312!8i6656!4m5!3m4!1s0x346e70dee5400673:0x5df3bc4dd1db24a4!8m2!3d23.0119948!4d120.2709148	\N	\N	\N	\N	16	2020-07-20 08:29:31.68856	2020-07-20 08:29:31.68856	自訂	\N	\N
25	白河區中正路121~150號	5180000	62.35	13.60	1/4		\N	\N	\N	\N	17	2020-07-20 08:33:47.68414	2020-07-20 08:33:47.68414	自訂	\N	\N
26	白河區中正路121~150號	5500000	62.57	14.10	1/4		\N	\N	\N	\N	17	2020-07-20 08:33:47.686365	2020-07-20 08:33:47.686365	自訂	\N	\N
14	南區國華街一段91~120號(108/07)	4500000	29.09	47.90	2	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	劉家彰	曾友和	0.30	0.35	7	2020-07-20 08:00:39.484563	2020-07-20 09:33:42.522096	自訂	更近市區	0.7 無尾巷、0.5 未辦保存登記
8	東區前鋒路61~90號	4500000	32.00	37.00	6	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	曾昱銓	0.90	0.90	5	2020-07-20 07:51:48.207215	2020-07-20 09:28:51.931112	自訂		
13	南區國華街一段61~90號(108/11)	4880000	30.65	48.70	2	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	劉家彰	曾友和	0.35	0.35	7	2020-07-20 08:00:39.482371	2020-07-20 09:34:08.331432	自訂	無尾巷2m巷寬未辦保存登記	0.7 無尾巷、0.5 未辦保存登記
12	安通路四段119巷27弄1號（**仲介））	7000000	29.43	38.00	透天		曾友和	曾昱銓	0.90	1.00	6	2020-07-20 07:56:50.531189	2020-07-20 09:15:23.384052	仲介		
11	安南區安通路四段119巷27弄1~30號	7000000	34.66	38.00	透天	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%8D%97%E5%8D%80?kw=%E5%AE%89%E9%80%9A%E8%B7%AF%E5%9B%9B%E6%AE%B5	曾友和	曾昱銓	1.00	1.00	6	2020-07-20 07:55:42.564402	2020-07-20 09:15:32.760568	自訂		
9	東區前鋒路61~90號	3200000	32.00	37.00	3	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	曾昱銓	1.15	1.10	5	2020-07-20 07:51:48.209019	2020-07-20 09:28:59.269055	自訂		
27	東區前鋒路61~90號	4500000	32.00	37.00	6	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	吳俊男	0.90	0.90	12	2020-07-20 10:22:22.442586	2020-07-20 10:23:43.633587	自訂		
16	板橋區懷德街66巷1~30號	12360000	32.45	48.30	2/5		張浩文	曾友和	0.60	0.60	8	2020-07-20 08:04:52.28515	2020-07-20 09:38:13.438095	自訂		
15	板橋區仁化街64巷1~30號	8350000	23.55	46.30	2/3		張浩文	曾友和	0.65	0.60	8	2020-07-20 08:04:52.282747	2020-07-20 09:38:25.689008	自訂		
5	金華路二段15巷1~30號	3000000	23.14	41.20	2/4		曾友和	劉家彰	1.10	1.10	4	2020-07-20 06:56:20.124651	2020-07-20 09:42:58.63967	自訂		
6	金華路二段15巷1~30號	3000000	22.89	41.50	3/4	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	劉家彰	0.90	0.50	4	2020-07-20 06:56:20.127084	2020-07-20 09:43:13.514786	自訂		
7	金華路二段21巷1~30號	2350000	22.89	41.00	4/4		曾友和	劉家彰	1.10	1.00	4	2020-07-20 06:56:20.129237	2020-07-20 09:43:19.939417	自訂		
2	板橋區忠孝路132巷1~30號	6850000	21.18	47.20	2/3		張浩文	曾友和	0.80	0.75	2	2020-07-20 06:42:40.685418	2020-07-20 09:49:34.451475	自訂		
3	板橋區忠孝路154巷31~60號	7000000	24.58	44.70	2/4		張浩文	曾友和	0.75	0.70	2	2020-07-20 06:42:40.687013	2020-07-20 09:49:40.087807	自訂		
28	東區前鋒路61~90號	3200000	32.00	37.00	3	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	吳俊男	曾友和	1.15	1.10	12	2020-07-20 10:22:22.444421	2020-07-31 14:02:23.58461	自訂		
29	信義街44巷1~30號(106/12)	5200000	58.44	24.00	全/4		\N	\N	\N	\N	16	2020-08-04 03:46:00.399067	2020-08-04 03:46:00.399067	自訂	\N	\N
30	信義街62巷1~30號(108/2)	5000000	57.64	25.00	全/5		\N	\N	\N	\N	16	2020-08-04 03:55:13.687466	2020-08-04 03:55:13.687466	自訂	\N	\N
32	中西區健康路一段151~180號 (109/06公寓)	3880000	37.57	36.10	3/5		劉家彰	曾友和	0.98	1.10	18	2020-08-04 06:44:00.224959	2020-08-06 14:08:27.906687	自訂	頂樓加價	
34	復國二路16巷1~30號(106/6)	5600000	39.30	29.00	2/2	https://lvr.land.moi.gov.tw/	劉家彰	\N	0.80	\N	19	2020-08-04 07:09:35.291878	2020-08-04 07:15:19.628325	自訂	拍賣物含未辦保存登記面積32.27坪，實價登錄未含。	\N
31	中西區健康路一段150巷1~30號 (108/09公寓)	4380000	40.55	34.10	5/5		劉家彰	曾友和	1.05	1.10	18	2020-08-04 06:44:00.223098	2020-08-06 14:07:52.078874	自訂	去年價錢	
33	 復國二路16巷1~30號(108/05)	6500000	39.72	31.00	2/2	https://lvr.land.moi.gov.tw/	劉家彰	\N	0.80	\N	19	2020-08-04 07:04:24.309088	2020-08-04 07:15:19.630034	自訂	拍賣物含未辦保存登記面積32.27坪，實價登錄未含。	\N
35	健康路一段170巷1~30號(107/05)	3300000	30.00	38.00	3/4		劉家彰	曾友和	1.15	1.10	18	2020-08-06 12:47:17.523576	2020-08-06 14:08:56.265151	自訂	漲價	
36	 健康一段170巷1~30號(107/02)	3950000	30.00	37.00	4/4		劉家彰	曾友和	1.10	0.95	18	2020-08-06 12:49:02.201571	2020-08-06 14:09:16.530942	自訂	漲價頂樓	
\.


--
-- Data for Name: personnals; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.personnals (id, is_debtor, is_creditor, is_land_owner, is_build_owner, name, identity_card, birthday, local_phone, mobile_phone, personnal_notes, person_country, person_township, person_village, person_neighbor, person_street, person_section, person_lane, person_alley, person_number, person_floor, is_original_owner, is_new_owner, is_deed_tax_agent, is_tax_agent, identity_code, public_or_private, right_share_person, right_share_all, yfcase_id, created_at, updated_at, "personnalBuildHoldingPointPerson", "personnalBuildHoldingPointAll", "ownerFullAddress") FROM stdin;
1	t	f	\N	\N	郭秀珍	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2020-07-20 06:51:10.242374	2020-07-20 06:51:10.242374	\N	\N	\N
2	t	f	\N	\N	黃絹惠	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	2020-07-20 07:49:29.12335	2020-07-20 07:49:29.12335	\N	\N	\N
3	f	t	\N	\N	飊誠第一資產管理股份有限公司	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	2020-07-20 07:49:29.124966	2020-07-20 07:49:29.124966	\N	\N	\N
4	t	f	\N	\N	洪蘇淑珍	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	11	2020-07-20 08:16:10.510108	2020-07-20 08:16:10.510108	\N	\N	\N
5	t	f	\N	\N	林艮伶即林吳雪珍之繼承人	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	14	2020-07-20 08:22:32.909757	2020-07-20 08:22:32.909757	\N	\N	\N
7	f	t	t	t	李壁鈞	A123456789	2020-07-16 00:00:00	06-12345678	0921343456												f	f	f	f	 	 	1	6	12	2020-07-20 10:20:05.909592	2020-08-05 10:46:18.2321	26	13	新北市中和區景安路132巷15號
6	t	f	t	t	李瑞鏗		\N														t	f	f	f	 	 	1	6	12	2020-07-20 10:20:05.907895	2020-08-05 10:46:18.234189	1	6	高雄市三民區自強一路207巷1-5號
9	\N	\N	\N	\N	李碩冠 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	12	12	2020-08-05 10:46:18.236036	2020-08-05 10:46:18.236036	1	12	臺南市中西區開山路122巷38號
10	\N	\N	\N	\N	李信佑	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	12	12	2020-08-05 10:46:18.249166	2020-08-05 10:46:18.249166	1	12	新北市汐止區民權街2段28號3樓
11	\N	\N	\N	\N	李維倫 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	6	12	2020-08-05 10:46:18.251292	2020-08-05 10:46:18.251292	1	6	臺南市中西區民權路3段400巷32號3樓
12	\N	\N	\N	\N	李建賢	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	6	12	2020-08-05 10:46:18.270852	2020-08-05 10:46:18.270852	1	6	臺南市歸仁區文化十街10巷19弄16號
13	\N	\N	\N	\N	陳俊一	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.545713	2020-08-06 14:23:36.545713	1	6	台南市東門路1號
14	\N	\N	\N	\N	陳俊二	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.555489	2020-08-06 14:23:36.555489	1	6	台南市東門路1號
15	\N	\N	\N	\N	陳俊三	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.557339	2020-08-06 14:23:36.557339	1	6	南市東門路1號
16	\N	\N	\N	\N	陳俊四	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.572467	2020-08-06 14:23:36.572467	1	6	南市東門路1號
17	\N	\N	\N	\N	陳俊五	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.574968	2020-08-06 14:23:36.574968	1	6	南市東門路1號
\.


--
-- Data for Name: plusrateas; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.plusrateas (id, persona, plusa, objectbuild_id, created_at, updated_at, plusa_reason) FROM stdin;
\.


--
-- Data for Name: plusratebs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.plusratebs (id, personb, plusb, objectbuild_id, created_at, updated_at, plusb_reason) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.schema_migrations (version) FROM stdin;
20200716031100
20200507063050
20200713014036
20200713080306
20200507085341
20200507063322
20200507062623
20200520062613
20200507061515
20200713091540
20200629053924
20200507063328
20200507062407
20200507062139
20200520031724
20200710015536
20200629032539
20200507063333
20200507063033
20200710090624
20200525134706
20200706081323
20200507061908
20200629063415
20200507145534
20200507060621
20200507061128
20200705135300
20200716005206
20200723132704
20200723231257
20200724005707
20200724025125
20200729022530
20200729045759
20200807054708
20200807101013
\.


--
-- Data for Name: subsigntrueas; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntrueas (id, signtruea, signtruea_first_name, signtruea_last_name, signtruea_date, yfcase_id, created_at, updated_at) FROM stdin;
1	曾友志	曾	友志	2020-06-05	11	2020-07-20 09:00:10.462202	2020-07-20 09:03:18.762018
2	曾友和	曾	友和	2020-06-03	2	2020-07-20 09:06:57.662559	2020-07-20 09:07:17.200448
3	曾友和	曾	友和	2020-06-03	8	2020-07-20 09:08:08.542166	2020-07-20 09:08:35.432752
4	曾友和	曾	友和	2020-06-05	7	2020-07-20 09:09:22.051265	2020-07-20 09:09:40.392684
5	曾昱銓	曾	昱銓	2020-05-16	5	2020-07-20 09:10:37.296956	2020-07-20 09:10:54.955429
6	曾昱銓	曾	昱銓	2020-05-16	6	2020-07-20 09:11:40.167975	2020-07-20 09:11:53.204311
7	曾友和	曾	友和	2020-07-20	12	2020-07-20 10:24:10.500769	2020-07-20 10:24:10.500769
8	曾友和	曾	友和	2020-07-31	13	2020-07-31 13:52:47.726296	2020-07-31 13:52:47.726296
9	曾友和	曾	友和	2020-08-06	18	2020-08-06 14:09:57.240534	2020-08-06 14:09:57.240534
\.


--
-- Data for Name: subsigntruebs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntruebs (id, signtrueb, signtrueb_first_name, signtrueb_last_name, signtrueb_date, yfcase_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: subsigntruecs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntruecs (id, signtruec, signtruec_first_name, signtruec_last_name, signtruec_date, yfcase_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: townships; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.townships (id, name, zip_code, district_court, land_office, finance_and_tax_bureau, police_station, irs, home_office, country_id, created_at, updated_at) FROM stdin;
1	中正區	100	臺北	古亭	中正分處				1	2020-07-20 02:58:30.977377	2020-07-20 02:58:30.977377
2	大同區	103	士林	建成	大同分處				1	2020-07-20 02:58:30.981416	2020-07-20 02:58:30.981416
3	中山區	104	臺北	中山	中山分處				1	2020-07-20 02:58:30.985016	2020-07-20 02:58:30.985016
4	松山區	105	臺北	松山	松山分處				1	2020-07-20 02:58:30.988437	2020-07-20 02:58:30.988437
5	大安區	106	臺北	大安	大安分處				1	2020-07-20 02:58:30.991823	2020-07-20 02:58:30.991823
6	萬華區	108	臺北	建成	萬華分處				1	2020-07-20 02:58:30.9953	2020-07-20 02:58:30.9953
7	信義區	110	臺北	松山	信義分處				1	2020-07-20 02:58:30.999881	2020-07-20 02:58:30.999881
8	士林區	111	士林	士林	士林分處				1	2020-07-20 02:58:31.003297	2020-07-20 02:58:31.003297
9	北投區	112	士林	士林	北投分處				1	2020-07-20 02:58:31.006739	2020-07-20 02:58:31.006739
10	內湖區	114	士林	中山	內湖分處				1	2020-07-20 02:58:31.010276	2020-07-20 02:58:31.010276
11	南港區	115	士林	松山	南港分處				1	2020-07-20 02:58:31.013228	2020-07-20 02:58:31.013228
12	文山區	116	臺北	古亭	文山分處				1	2020-07-20 02:58:31.016211	2020-07-20 02:58:31.016211
13	仁愛區	200	基隆	信義	總局				2	2020-07-20 02:58:31.019061	2020-07-20 02:58:31.019061
14	信義區	201	臺北	松山	信義分處				2	2020-07-20 02:58:31.021964	2020-07-20 02:58:31.021964
15	中正區	202	臺北	古亭	中正分處				2	2020-07-20 02:58:31.024874	2020-07-20 02:58:31.024874
16	中山區	203	臺北	中山	中山分處				2	2020-07-20 02:58:31.02769	2020-07-20 02:58:31.02769
17	安樂區	204	基隆	安樂	總局				2	2020-07-20 02:58:31.030548	2020-07-20 02:58:31.030548
18	暖暖區	205	基隆	安樂	七堵分局				2	2020-07-20 02:58:31.033377	2020-07-20 02:58:31.033377
19	七堵區	206	基隆	安樂	七堵分局				2	2020-07-20 02:58:31.036207	2020-07-20 02:58:31.036207
20	萬里區	207	基隆	汐止	淡水分處				3	2020-07-20 02:58:31.038994	2020-07-20 02:58:31.038994
21	金山區	208	基隆	汐止	淡水分處				3	2020-07-20 02:58:31.042079	2020-07-20 02:58:31.042079
22	板橋區	220	新北	板橋	板橋分處				3	2020-07-20 02:58:31.04496	2020-07-20 02:58:31.04496
23	汐止區	221	士林	汐止	汐止分處				3	2020-07-20 02:58:31.057616	2020-07-20 02:58:31.057616
24	深坑區	222	臺北	新店	新店分處				3	2020-07-20 02:58:31.060635	2020-07-20 02:58:31.060635
25	石碇區	223	臺北	新店	新店分處				3	2020-07-20 02:58:31.063495	2020-07-20 02:58:31.063495
26	瑞芳區	224	基隆	瑞芳	瑞芳分處				3	2020-07-20 02:58:31.066475	2020-07-20 02:58:31.066475
27	平溪區	226	基隆	瑞芳	瑞芳分處				3	2020-07-20 02:58:31.069369	2020-07-20 02:58:31.069369
28	雙溪區	227	基隆	瑞芳	瑞芳分處				3	2020-07-20 02:58:31.07246	2020-07-20 02:58:31.07246
29	貢寮區	228	基隆	瑞芳	瑞芳分處				3	2020-07-20 02:58:31.075456	2020-07-20 02:58:31.075456
30	新店區	231	臺北	新店	新店分處				3	2020-07-20 02:58:31.078369	2020-07-20 02:58:31.078369
31	坪林區	232	臺北	新店	新店分處				3	2020-07-20 02:58:31.08137	2020-07-20 02:58:31.08137
32	烏來區	233	臺北	新店	新店分處				3	2020-07-20 02:58:31.084054	2020-07-20 02:58:31.084054
33	永和區	234	新北	中和	中和分處				3	2020-07-20 02:58:31.086502	2020-07-20 02:58:31.086502
34	中和區	235	新北	中和	中和分處				3	2020-07-20 02:58:31.0888	2020-07-20 02:58:31.0888
35	土城區	236	新北	板橋	總處				3	2020-07-20 02:58:31.091121	2020-07-20 02:58:31.091121
36	三峽區	237	新北	樹林	三鶯分處				3	2020-07-20 02:58:31.093469	2020-07-20 02:58:31.093469
37	樹林區	238	新北	樹林	總處				3	2020-07-20 02:58:31.095833	2020-07-20 02:58:31.095833
38	鶯歌區	239	新北	樹林	三鶯分處				3	2020-07-20 02:58:31.098235	2020-07-20 02:58:31.098235
39	三重區	241	新北	三重	三重分處				3	2020-07-20 02:58:31.100612	2020-07-20 02:58:31.100612
40	新莊區	242	新北	新莊	新莊分處				3	2020-07-20 02:58:31.102971	2020-07-20 02:58:31.102971
41	泰山區	243	新北	新莊	新莊分處				3	2020-07-20 02:58:31.10535	2020-07-20 02:58:31.10535
42	林口區	244	新北	新莊	林口分處				3	2020-07-20 02:58:31.107652	2020-07-20 02:58:31.107652
43	蘆洲區	247	新北	三重	三重分處				3	2020-07-20 02:58:31.109987	2020-07-20 02:58:31.109987
44	五股區	248	新北	新莊	新莊分處				3	2020-07-20 02:58:31.112317	2020-07-20 02:58:31.112317
45	八里區	249	士林	淡水	淡水分處				3	2020-07-20 02:58:31.114684	2020-07-20 02:58:31.114684
46	淡水區	251	士林	淡水	淡水分處				3	2020-07-20 02:58:31.116977	2020-07-20 02:58:31.116977
47	三芝區	252	士林	淡水	淡水分處				3	2020-07-20 02:58:31.119243	2020-07-20 02:58:31.119243
48	石門區	253	士林	淡水	淡水分處				3	2020-07-20 02:58:31.121535	2020-07-20 02:58:31.121535
49	南竿鄉	209							4	2020-07-20 02:58:31.123736	2020-07-20 02:58:31.123736
50	北竿鄉	210							4	2020-07-20 02:58:31.126018	2020-07-20 02:58:31.126018
51	莒光鄉	211							4	2020-07-20 02:58:31.128287	2020-07-20 02:58:31.128287
52	東引鄉	212							4	2020-07-20 02:58:31.137001	2020-07-20 02:58:31.137001
53	宜蘭市	260							5	2020-07-20 02:58:31.143799	2020-07-20 02:58:31.143799
54	頭城鎮	261							5	2020-07-20 02:58:31.192567	2020-07-20 02:58:31.192567
55	礁溪鄉	262							5	2020-07-20 02:58:31.19492	2020-07-20 02:58:31.19492
56	壯圍鄉	263							5	2020-07-20 02:58:31.197173	2020-07-20 02:58:31.197173
57	員山鄉	264							5	2020-07-20 02:58:31.200107	2020-07-20 02:58:31.200107
58	羅東鎮	265							5	2020-07-20 02:58:31.202923	2020-07-20 02:58:31.202923
59	三星鄉	266							5	2020-07-20 02:58:31.205994	2020-07-20 02:58:31.205994
60	大同鄉	267							5	2020-07-20 02:58:31.208834	2020-07-20 02:58:31.208834
61	五結鄉	268							5	2020-07-20 02:58:31.211802	2020-07-20 02:58:31.211802
62	冬山鄉	269							5	2020-07-20 02:58:31.214662	2020-07-20 02:58:31.214662
63	蘇澳鎮	270							5	2020-07-20 02:58:31.21757	2020-07-20 02:58:31.21757
64	南澳鄉	272							5	2020-07-20 02:58:31.220087	2020-07-20 02:58:31.220087
65	釣魚台	290							6	2020-07-20 02:58:31.222455	2020-07-20 02:58:31.222455
66	東區	300							7	2020-07-20 02:58:31.224692	2020-07-20 02:58:31.224692
67	北區	300							7	2020-07-20 02:58:31.226934	2020-07-20 02:58:31.226934
68	香山區	300							7	2020-07-20 02:58:31.229207	2020-07-20 02:58:31.229207
69	竹北市	302							8	2020-07-20 02:58:31.231447	2020-07-20 02:58:31.231447
70	湖口鄉	303							8	2020-07-20 02:58:31.233733	2020-07-20 02:58:31.233733
71	新豐鄉	304							8	2020-07-20 02:58:31.236002	2020-07-20 02:58:31.236002
72	新埔鎮	305							8	2020-07-20 02:58:31.238295	2020-07-20 02:58:31.238295
73	關西鎮	306							8	2020-07-20 02:58:31.240639	2020-07-20 02:58:31.240639
74	芎林鄉	307							8	2020-07-20 02:58:31.242937	2020-07-20 02:58:31.242937
75	寶山鄉	308							8	2020-07-20 02:58:31.24524	2020-07-20 02:58:31.24524
76	竹東鎮	310							8	2020-07-20 02:58:31.247475	2020-07-20 02:58:31.247475
77	五峰鄉	311							8	2020-07-20 02:58:31.249791	2020-07-20 02:58:31.249791
78	橫山鄉	312							8	2020-07-20 02:58:31.25215	2020-07-20 02:58:31.25215
79	尖石鄉	313							8	2020-07-20 02:58:31.254456	2020-07-20 02:58:31.254456
80	北埔鄉	314							8	2020-07-20 02:58:31.256692	2020-07-20 02:58:31.256692
81	峨眉鄉	315							8	2020-07-20 02:58:31.258939	2020-07-20 02:58:31.258939
82	中壢市	320							9	2020-07-20 02:58:31.261197	2020-07-20 02:58:31.261197
83	平鎮市	324							9	2020-07-20 02:58:31.263494	2020-07-20 02:58:31.263494
84	龍潭鄉	325							9	2020-07-20 02:58:31.265728	2020-07-20 02:58:31.265728
85	楊梅市	326							9	2020-07-20 02:58:31.268018	2020-07-20 02:58:31.268018
86	新屋鄉	327							9	2020-07-20 02:58:31.270334	2020-07-20 02:58:31.270334
87	觀音鄉	328							9	2020-07-20 02:58:31.272675	2020-07-20 02:58:31.272675
88	桃園市	330							9	2020-07-20 02:58:31.275059	2020-07-20 02:58:31.275059
89	龜山鄉	333							9	2020-07-20 02:58:33.286892	2020-07-20 02:58:33.286892
90	八德市	334							9	2020-07-20 02:58:33.289421	2020-07-20 02:58:33.289421
91	大溪鎮	335							9	2020-07-20 02:58:33.291746	2020-07-20 02:58:33.291746
92	復興鄉	336							9	2020-07-20 02:58:33.294801	2020-07-20 02:58:33.294801
93	大園鄉	337							9	2020-07-20 02:58:33.297894	2020-07-20 02:58:33.297894
94	蘆竹鄉	338							9	2020-07-20 02:58:33.301088	2020-07-20 02:58:33.301088
95	竹南鎮	350							10	2020-07-20 02:58:33.304219	2020-07-20 02:58:33.304219
96	頭份鎮	351							10	2020-07-20 02:58:33.314374	2020-07-20 02:58:33.314374
97	三灣鄉	352							10	2020-07-20 02:58:33.317536	2020-07-20 02:58:33.317536
98	南庄鄉	353							10	2020-07-20 02:58:33.320675	2020-07-20 02:58:33.320675
99	獅潭鄉	354							10	2020-07-20 02:58:33.323618	2020-07-20 02:58:33.323618
100	後龍鎮	356							10	2020-07-20 02:58:33.326703	2020-07-20 02:58:33.326703
101	通霄鎮	357							10	2020-07-20 02:58:33.329852	2020-07-20 02:58:33.329852
102	苑裡鎮	358							10	2020-07-20 02:58:33.332799	2020-07-20 02:58:33.332799
103	苗栗市	360							10	2020-07-20 02:58:33.335849	2020-07-20 02:58:33.335849
104	造橋鄉	361							10	2020-07-20 02:58:33.338958	2020-07-20 02:58:33.338958
105	頭屋鄉	362							10	2020-07-20 02:58:33.342104	2020-07-20 02:58:33.342104
106	公館鄉	363							10	2020-07-20 02:58:33.34527	2020-07-20 02:58:33.34527
107	大湖鄉	364							10	2020-07-20 02:58:33.34867	2020-07-20 02:58:33.34867
108	泰安鄉	365							10	2020-07-20 02:58:33.351687	2020-07-20 02:58:33.351687
109	銅鑼鄉	366							10	2020-07-20 02:58:33.354616	2020-07-20 02:58:33.354616
110	三義鄉	367							10	2020-07-20 02:58:33.357625	2020-07-20 02:58:33.357625
111	西湖鄉	368							10	2020-07-20 02:58:33.360462	2020-07-20 02:58:33.360462
112	卓蘭鎮	369							10	2020-07-20 02:58:33.363069	2020-07-20 02:58:33.363069
113	中區	400							11	2020-07-20 02:58:33.36551	2020-07-20 02:58:33.36551
114	東區	401							11	2020-07-20 02:58:33.367856	2020-07-20 02:58:33.367856
115	南區	402							11	2020-07-20 02:58:33.370219	2020-07-20 02:58:33.370219
116	西區	403							11	2020-07-20 02:58:33.372639	2020-07-20 02:58:33.372639
117	北區	404							11	2020-07-20 02:58:33.375016	2020-07-20 02:58:33.375016
118	北屯區	406	臺中	中正	東山分局				11	2020-07-20 02:58:33.377731	2020-07-20 02:58:33.377731
119	西屯區	407	臺中	中興	文心分局				11	2020-07-20 02:58:33.380147	2020-07-20 02:58:33.380147
120	南屯區	408	臺中	中興	文心分局				11	2020-07-20 02:58:33.382564	2020-07-20 02:58:33.382564
121	太平區	411	臺中	太平	大屯分局				11	2020-07-20 02:58:33.384986	2020-07-20 02:58:33.384986
122	大里區	412	臺中	大里	大屯分局				11	2020-07-20 02:58:33.387366	2020-07-20 02:58:33.387366
123	霧峰區	413	臺中	大里	大屯分局				11	2020-07-20 02:58:33.389744	2020-07-20 02:58:33.389744
124	烏日區	414	臺中	大里	大屯分局				11	2020-07-20 02:58:33.392162	2020-07-20 02:58:33.392162
125	豐原區	420	臺中	豐原	豐原分局				11	2020-07-20 02:58:33.394539	2020-07-20 02:58:33.394539
126	后里區	421	臺中	豐原	豐原分局				11	2020-07-20 02:58:33.396926	2020-07-20 02:58:33.396926
127	石岡區	422	臺中	東勢	東勢分局				11	2020-07-20 02:58:33.399232	2020-07-20 02:58:33.399232
128	東勢區	423	臺中	東勢	東勢分局				11	2020-07-20 02:58:33.401564	2020-07-20 02:58:33.401564
129	和平區	424	臺中	東勢	東勢分局				11	2020-07-20 02:58:33.403854	2020-07-20 02:58:33.403854
130	新社區	426	臺中	東勢	東勢分局				11	2020-07-20 02:58:33.406188	2020-07-20 02:58:33.406188
131	潭子區	427	臺中	雅潭	豐原分局				11	2020-07-20 02:58:33.408488	2020-07-20 02:58:33.408488
132	大雅區	428	臺中	雅潭	豐原分局				11	2020-07-20 02:58:33.410824	2020-07-20 02:58:33.410824
133	神岡區	429	臺中	豐原	豐原分局				11	2020-07-20 02:58:33.586564	2020-07-20 02:58:33.586564
134	大肚區	432	臺中	龍井	沙鹿分局				11	2020-07-20 02:58:33.58947	2020-07-20 02:58:33.58947
135	沙鹿區	433	臺中	清水	沙鹿分局				11	2020-07-20 02:58:33.591815	2020-07-20 02:58:33.591815
136	龍井區	434	臺中	龍井	沙鹿分局				11	2020-07-20 02:58:33.594956	2020-07-20 02:58:33.594956
137	梧棲區	435	臺中	清水	沙鹿分局				11	2020-07-20 02:58:33.598502	2020-07-20 02:58:33.598502
138	清水區	436	臺中	清水	沙鹿分局				11	2020-07-20 02:58:33.601674	2020-07-20 02:58:33.601674
139	大甲區	437	臺中	大甲	沙鹿分局				11	2020-07-20 02:58:33.604713	2020-07-20 02:58:33.604713
140	外埔區	438	臺中	大甲	沙鹿分局				11	2020-07-20 02:58:33.607584	2020-07-20 02:58:33.607584
141	大安區	439	臺北	大安	大安分處				11	2020-07-20 02:58:33.610514	2020-07-20 02:58:33.610514
142	彰化市	500							12	2020-07-20 02:58:33.618188	2020-07-20 02:58:33.618188
143	芬園鄉	502							12	2020-07-20 02:58:33.621163	2020-07-20 02:58:33.621163
144	花壇鄉	503							12	2020-07-20 02:58:33.624108	2020-07-20 02:58:33.624108
145	秀水鄉	504							12	2020-07-20 02:58:33.627012	2020-07-20 02:58:33.627012
146	鹿港鎮	505							12	2020-07-20 02:58:33.630281	2020-07-20 02:58:33.630281
147	福興鄉	506							12	2020-07-20 02:58:33.63316	2020-07-20 02:58:33.63316
148	線西鄉	507							12	2020-07-20 02:58:33.636112	2020-07-20 02:58:33.636112
149	和美鎮	508							12	2020-07-20 02:58:33.638953	2020-07-20 02:58:33.638953
150	伸港鄉	509							12	2020-07-20 02:58:33.641852	2020-07-20 02:58:33.641852
151	員林鎮	510							12	2020-07-20 02:58:33.644871	2020-07-20 02:58:33.644871
152	社頭鄉	511							12	2020-07-20 02:58:33.648067	2020-07-20 02:58:33.648067
153	永靖鄉	512							12	2020-07-20 02:58:33.651033	2020-07-20 02:58:33.651033
154	埔心鄉	513							12	2020-07-20 02:58:33.654088	2020-07-20 02:58:33.654088
155	溪湖鎮	514							12	2020-07-20 02:58:33.657035	2020-07-20 02:58:33.657035
156	大村鄉	515							12	2020-07-20 02:58:33.660129	2020-07-20 02:58:33.660129
157	埔鹽鄉	516							12	2020-07-20 02:58:33.663023	2020-07-20 02:58:33.663023
158	田中鎮	520							12	2020-07-20 02:58:33.665906	2020-07-20 02:58:33.665906
159	北斗鎮	521							12	2020-07-20 02:58:33.668861	2020-07-20 02:58:33.668861
160	田尾鄉	522							12	2020-07-20 02:58:33.671995	2020-07-20 02:58:33.671995
161	埤頭鄉	523							12	2020-07-20 02:58:33.674863	2020-07-20 02:58:33.674863
162	溪州鄉	524							12	2020-07-20 02:58:33.677983	2020-07-20 02:58:33.677983
163	竹塘鄉	525							12	2020-07-20 02:58:33.680832	2020-07-20 02:58:33.680832
164	二林鎮	526							12	2020-07-20 02:58:33.683567	2020-07-20 02:58:33.683567
165	大城鄉	527							12	2020-07-20 02:58:33.686205	2020-07-20 02:58:33.686205
166	芳苑鄉	528							12	2020-07-20 02:58:33.688688	2020-07-20 02:58:33.688688
167	二水鄉	530							12	2020-07-20 02:58:33.691113	2020-07-20 02:58:33.691113
168	南投市	540							13	2020-07-20 02:58:33.693478	2020-07-20 02:58:33.693478
169	中寮鄉	541							13	2020-07-20 02:58:33.702104	2020-07-20 02:58:33.702104
170	草屯鎮	542							13	2020-07-20 02:58:33.705438	2020-07-20 02:58:33.705438
171	國姓鄉	544							13	2020-07-20 02:58:33.707847	2020-07-20 02:58:33.707847
172	埔里鎮	545							13	2020-07-20 02:58:33.710344	2020-07-20 02:58:33.710344
173	仁愛鄉	546							13	2020-07-20 02:58:33.7151	2020-07-20 02:58:33.7151
174	名間鄉	551							13	2020-07-20 02:58:33.717439	2020-07-20 02:58:33.717439
175	集集鎮	552							13	2020-07-20 02:58:33.719728	2020-07-20 02:58:33.719728
176	水里鄉	553							13	2020-07-20 02:58:33.72209	2020-07-20 02:58:33.72209
177	魚池鄉	555							13	2020-07-20 02:58:33.724417	2020-07-20 02:58:33.724417
178	信義鄉	556							13	2020-07-20 02:58:33.726638	2020-07-20 02:58:33.726638
179	竹山鎮	557							13	2020-07-20 02:58:33.728905	2020-07-20 02:58:33.728905
180	鹿谷鄉	558							13	2020-07-20 02:58:33.731213	2020-07-20 02:58:33.731213
181	東區	600							14	2020-07-20 02:58:33.733521	2020-07-20 02:58:33.733521
182	西區	600							14	2020-07-20 02:58:33.735779	2020-07-20 02:58:33.735779
183	番路鄉	602							15	2020-07-20 02:58:33.738246	2020-07-20 02:58:33.738246
184	梅山鄉	603							15	2020-07-20 02:58:33.740586	2020-07-20 02:58:33.740586
185	竹崎鄉	604							15	2020-07-20 02:58:33.742926	2020-07-20 02:58:33.742926
186	阿里山鄉	605							15	2020-07-20 02:58:33.745406	2020-07-20 02:58:33.745406
187	中埔鄉	606							15	2020-07-20 02:58:33.747798	2020-07-20 02:58:33.747798
188	大埔鄉	607							15	2020-07-20 02:58:33.750187	2020-07-20 02:58:33.750187
189	水上鄉	608							15	2020-07-20 02:58:33.752534	2020-07-20 02:58:33.752534
190	鹿草鄉	611							15	2020-07-20 02:58:33.930937	2020-07-20 02:58:33.930937
191	太保市	612							15	2020-07-20 02:58:33.933428	2020-07-20 02:58:33.933428
192	朴子市	613							15	2020-07-20 02:58:33.935706	2020-07-20 02:58:33.935706
193	東石鄉	614							15	2020-07-20 02:58:33.938707	2020-07-20 02:58:33.938707
194	六腳鄉	615							15	2020-07-20 02:58:33.941583	2020-07-20 02:58:33.941583
195	新港鄉	616							15	2020-07-20 02:58:33.944588	2020-07-20 02:58:33.944588
196	民雄鄉	621							15	2020-07-20 02:58:33.947578	2020-07-20 02:58:33.947578
197	大林鎮	622							15	2020-07-20 02:58:33.950547	2020-07-20 02:58:33.950547
198	溪口鄉	623							15	2020-07-20 02:58:33.953561	2020-07-20 02:58:33.953561
199	義竹鄉	624							15	2020-07-20 02:58:33.956479	2020-07-20 02:58:33.956479
200	布袋鎮	625							15	2020-07-20 02:58:33.95947	2020-07-20 02:58:33.95947
201	斗南鎮	630							16	2020-07-20 02:58:33.962436	2020-07-20 02:58:33.962436
202	大埤鄉	631							16	2020-07-20 02:58:33.965314	2020-07-20 02:58:33.965314
203	虎尾鎮	632							16	2020-07-20 02:58:33.968582	2020-07-20 02:58:33.968582
204	土庫鎮	633							16	2020-07-20 02:58:33.971439	2020-07-20 02:58:33.971439
205	褒忠鄉	634							16	2020-07-20 02:58:33.974549	2020-07-20 02:58:33.974549
206	東勢鄉	635							16	2020-07-20 02:58:33.9776	2020-07-20 02:58:33.9776
207	台西鄉	636							16	2020-07-20 02:58:33.98049	2020-07-20 02:58:33.98049
208	崙背鄉	637							16	2020-07-20 02:58:33.983319	2020-07-20 02:58:33.983319
209	麥寮鄉	638							16	2020-07-20 02:58:33.986178	2020-07-20 02:58:33.986178
210	斗六市	640							16	2020-07-20 02:58:33.988998	2020-07-20 02:58:33.988998
211	林內鄉	643							16	2020-07-20 02:58:33.992008	2020-07-20 02:58:33.992008
212	古坑鄉	646							16	2020-07-20 02:58:33.995014	2020-07-20 02:58:33.995014
213	莿桐鄉	647							16	2020-07-20 02:58:33.997819	2020-07-20 02:58:33.997819
214	西螺鎮	648							16	2020-07-20 02:58:34.000441	2020-07-20 02:58:34.000441
215	二崙鄉	649							16	2020-07-20 02:58:34.002912	2020-07-20 02:58:34.002912
216	北港鎮	651							16	2020-07-20 02:58:34.005314	2020-07-20 02:58:34.005314
217	水林鄉	652							16	2020-07-20 02:58:34.007549	2020-07-20 02:58:34.007549
218	口湖鄉	653							16	2020-07-20 02:58:34.010053	2020-07-20 02:58:34.010053
219	四湖鄉	654							16	2020-07-20 02:58:34.012614	2020-07-20 02:58:34.012614
220	元長鄉	655							16	2020-07-20 02:58:34.015085	2020-07-20 02:58:34.015085
225	安平區	708	臺南	臺南	臺南分局		臺南分局		17	2020-07-20 02:58:34.026982	2020-07-20 02:58:34.026982
226	安南區	709	臺南	安南	安南分局		安南稽徵所		17	2020-07-20 02:58:34.029344	2020-07-20 02:58:34.029344
227	永康區	710	臺南	永康	新化分局		新化稽徵所		17	2020-07-20 02:58:34.031773	2020-07-20 02:58:34.031773
228	歸仁區	711	臺南	歸仁	新化分局		新化稽徵所		17	2020-07-20 02:58:34.034128	2020-07-20 02:58:34.034128
229	新化區	712	臺南	新化	新化分局		新化稽徵所		17	2020-07-20 02:58:34.036464	2020-07-20 02:58:34.036464
230	左鎮區	713	臺南	新化	新化分局		新化稽徵所		17	2020-07-20 02:58:34.038881	2020-07-20 02:58:34.038881
231	玉井區	714	臺南	玉井	新化分局		新化稽徵所		17	2020-07-20 02:58:34.041147	2020-07-20 02:58:34.041147
232	楠西區	715	臺南	玉井	新化分局		新化稽徵所		17	2020-07-20 02:58:34.04348	2020-07-20 02:58:34.04348
233	南化區	716	臺南	玉井	新化分局		新化稽徵所		17	2020-07-20 02:58:34.045808	2020-07-20 02:58:34.045808
234	仁德區	717	臺南	歸仁	���化分局		新化稽徵所		17	2020-07-20 02:58:34.048064	2020-07-20 02:58:34.048064
235	關廟區	718	臺南	歸仁	新化分局		新化稽徵所		17	2020-07-20 02:58:34.05034	2020-07-20 02:58:34.05034
236	龍崎區	719	臺南	歸仁	新化分局		新化稽徵所		17	2020-07-20 02:58:34.052593	2020-07-20 02:58:34.052593
237	官田區	720	臺南	麻豆	新化分局		新化稽徵所		17	2020-07-20 02:58:34.240431	2020-07-20 02:58:34.240431
238	麻豆區	721	臺南	麻豆	佳里分局		佳里稽徵所		17	2020-07-20 02:58:34.242886	2020-07-20 02:58:34.242886
239	佳里區	722	臺南	佳里	佳里分局		佳里稽徵所		17	2020-07-20 02:58:34.245109	2020-07-20 02:58:34.245109
240	西港區	723	臺南	佳里	佳里分局		佳里稽徵所		17	2020-07-20 02:58:34.248231	2020-07-20 02:58:34.248231
241	七股區	724							17	2020-07-20 02:58:34.251071	2020-07-20 02:58:34.251071
242	將軍區	725	臺南	佳里	佳里分局		佳里稽徵所		17	2020-07-20 02:58:34.25955	2020-07-20 02:58:34.25955
243	學甲區	726	臺南	佳里	佳里分局		佳里稽徵所		17	2020-07-20 02:58:34.263531	2020-07-20 02:58:34.263531
244	北門區	727	臺南	佳里	佳里分局		佳里稽徵所		17	2020-07-20 02:58:34.266502	2020-07-20 02:58:34.266502
245	新營區	730	臺南	鹽水	新營分局		新營分局		17	2020-07-20 02:58:34.26942	2020-07-20 02:58:34.26942
246	後壁區	731	臺南	白河	新營分局		新營分局		17	2020-07-20 02:58:34.272404	2020-07-20 02:58:34.272404
247	白河區	732	臺南	白河	新營分局		新營分局		17	2020-07-20 02:58:34.275514	2020-07-20 02:58:34.275514
248	東山區	733	臺南	白河	新營分局		新營分局		17	2020-07-20 02:58:34.278523	2020-07-20 02:58:34.278523
249	六甲區	734	臺南	麻豆	新營分局		新營分局		17	2020-07-20 02:58:34.281426	2020-07-20 02:58:34.281426
250	下營區	735	臺南	麻豆	新營分局		新營分局		17	2020-07-20 02:58:34.28468	2020-07-20 02:58:34.28468
251	柳營區	736	臺南	鹽水	新營分局		新營分局		17	2020-07-20 02:58:34.287716	2020-07-20 02:58:34.287716
252	鹽水區	737	臺南	鹽水	新營分局		新營分局		17	2020-07-20 02:58:34.290953	2020-07-20 02:58:34.290953
253	善化區	741	臺南	新化	新營分局		新營分局		17	2020-07-20 02:58:34.294267	2020-07-20 02:58:34.294267
254	大內區	742	臺南	麻豆	新營分局		新營分局		17	2020-07-20 02:58:34.297319	2020-07-20 02:58:34.297319
255	山上區	743	臺南	新化	新化分局		新化稽徵所		17	2020-07-20 02:58:34.300461	2020-07-20 02:58:34.300461
256	新市區	744	臺南	新化	新化分局		新化稽徵所		17	2020-07-20 02:58:34.303543	2020-07-20 02:58:34.303543
257	安定區	745	臺南	新化	佳里分局		佳里稽徵所		17	2020-07-20 02:58:34.306603	2020-07-20 02:58:34.306603
258	新興區	800	高雄	新興	新興分處				18	2020-07-20 02:58:34.309545	2020-07-20 02:58:34.309545
259	前金區	801	高雄	鹽埕	鹽埕分處				18	2020-07-20 02:58:34.312646	2020-07-20 02:58:34.312646
260	苓雅區	802	高雄	新興	新興分處				18	2020-07-20 02:58:34.315714	2020-07-20 02:58:34.315714
261	鹽埕區	803	高雄	鹽埕	鹽埕分處				18	2020-07-20 02:58:34.318788	2020-07-20 02:58:34.318788
262	鼓山區	804	高雄	鹽埕	鹽埕分處				18	2020-07-20 02:58:34.321656	2020-07-20 02:58:34.321656
263	旗津區	805	高雄	鹽埕	鹽埕分處				18	2020-07-20 02:58:34.324255	2020-07-20 02:58:34.324255
264	前鎮區	806	高雄	前鎮	前鎮				18	2020-07-20 02:58:34.326751	2020-07-20 02:58:34.326751
265	三民區	807	高雄	三民	三民				18	2020-07-20 02:58:34.329139	2020-07-20 02:58:34.329139
266	楠梓區	811	橋頭	楠梓	楠梓				18	2020-07-20 02:58:34.331548	2020-07-20 02:58:34.331548
267	小港區	812	高雄	前鎮	前鎮				18	2020-07-20 02:58:34.333942	2020-07-20 02:58:34.333942
268	左營區	813	橋頭	楠梓	左營分處				18	2020-07-20 02:58:34.336287	2020-07-20 02:58:34.336287
269	仁武區	814	橋頭	仁武	仁武				18	2020-07-20 02:58:34.338607	2020-07-20 02:58:34.338607
270	大社區	815	橋頭	仁武	仁武				18	2020-07-20 02:58:34.340912	2020-07-20 02:58:34.340912
271	岡山區	820	橋頭	岡山	岡山分處				18	2020-07-20 02:58:34.343282	2020-07-20 02:58:34.343282
272	路竹區	821	橋頭	路竹	岡山分處				18	2020-07-20 02:58:34.345595	2020-07-20 02:58:34.345595
273	阿蓮區	822	橋頭	路竹	岡山分處				18	2020-07-20 02:58:34.34791	2020-07-20 02:58:34.34791
274	田寮區	823	橋頭	路竹	岡山分處				18	2020-07-20 02:58:34.350271	2020-07-20 02:58:34.350271
275	燕巢區	824	橋頭	岡山	岡山分處				18	2020-07-20 02:58:34.352684	2020-07-20 02:58:34.352684
222	東區	701	臺南	東南	臺南分局				17	2020-07-20 02:58:34.019874	2020-07-21 01:45:23.006479
223	南區	702	臺南	東南	臺南分局				17	2020-07-20 02:58:34.022241	2020-07-21 01:45:29.438048
276	橋頭區	825	橋頭	岡山	岡山分處				18	2020-07-20 02:58:34.355012	2020-07-20 02:58:34.355012
277	梓官區	826	橋頭	岡山	岡山分處				18	2020-07-20 02:58:34.357511	2020-07-20 02:58:34.357511
278	彌陀區	827	橋頭	岡山	岡山分處				18	2020-07-20 02:58:34.36014	2020-07-20 02:58:34.36014
279	永安區	828	橋頭	岡山	岡山分處				18	2020-07-20 02:58:34.362525	2020-07-20 02:58:34.362525
280	湖內區	829	橋頭	路竹	岡山分處				18	2020-07-20 02:58:34.364809	2020-07-20 02:58:34.364809
281	鳳山區	830	高雄	鳳山	鳳山分處				18	2020-07-20 02:58:34.367195	2020-07-20 02:58:34.367195
282	大寮區	831	高雄	大寮	大寮				18	2020-07-20 02:58:34.369457	2020-07-20 02:58:34.369457
283	林園區	832	高雄	大寮	大寮				18	2020-07-20 02:58:34.561094	2020-07-20 02:58:34.561094
284	鳥松區	833	橋頭	仁武	仁武				18	2020-07-20 02:58:34.564003	2020-07-20 02:58:34.564003
285	大樹區	840	橋頭	鳳山	仁武				18	2020-07-20 02:58:34.566287	2020-07-20 02:58:34.566287
286	旗山區	842	橋頭	旗山	旗山分處				18	2020-07-20 02:58:34.569776	2020-07-20 02:58:34.569776
287	美濃區	843	橋頭	美濃	旗山分處				18	2020-07-20 02:58:34.573379	2020-07-20 02:58:34.573379
288	六龜區	844	橋頭	美濃	旗山分處				18	2020-07-20 02:58:34.576904	2020-07-20 02:58:34.576904
289	內門區	845	橋頭	旗山	旗山分處				18	2020-07-20 02:58:34.5829	2020-07-20 02:58:34.5829
290	杉林區	846	橋頭	旗山	旗山分處				18	2020-07-20 02:58:34.586333	2020-07-20 02:58:34.586333
291	甲仙區	847	橋頭	旗山	旗山分處				18	2020-07-20 02:58:34.589457	2020-07-20 02:58:34.589457
292	桃源區	848	橋頭	美濃	旗山分處				18	2020-07-20 02:58:34.592307	2020-07-20 02:58:34.592307
293	那瑪夏區	849	橋頭	旗山	旗山分處				18	2020-07-20 02:58:34.595133	2020-07-20 02:58:34.595133
294	茂林區	851	橋頭	美濃	旗山分處				18	2020-07-20 02:58:34.598054	2020-07-20 02:58:34.598054
295	茄萣區	852	橋頭	路竹	岡山分處				18	2020-07-20 02:58:34.600964	2020-07-20 02:58:34.600964
296	東沙群島	817							19	2020-07-20 02:58:34.604065	2020-07-20 02:58:34.604065
297	南沙群島	819							19	2020-07-20 02:58:34.60712	2020-07-20 02:58:34.60712
298	馬公市	880							20	2020-07-20 02:58:34.610102	2020-07-20 02:58:34.610102
299	西嶼鄉	881							20	2020-07-20 02:58:34.613026	2020-07-20 02:58:34.613026
300	望安鄉	882							20	2020-07-20 02:58:34.615918	2020-07-20 02:58:34.615918
301	七美鄉	883							20	2020-07-20 02:58:34.618904	2020-07-20 02:58:34.618904
302	白沙鄉	884							20	2020-07-20 02:58:34.621821	2020-07-20 02:58:34.621821
303	湖西鄉	885							20	2020-07-20 02:58:34.624667	2020-07-20 02:58:34.624667
304	金沙鎮	890							21	2020-07-20 02:58:34.627666	2020-07-20 02:58:34.627666
305	金湖鎮	891							21	2020-07-20 02:58:34.630608	2020-07-20 02:58:34.630608
306	金寧鄉	892							21	2020-07-20 02:58:34.633575	2020-07-20 02:58:34.633575
307	金城鎮	893							21	2020-07-20 02:58:34.636463	2020-07-20 02:58:34.636463
308	烈嶼鄉	894							21	2020-07-20 02:58:34.63927	2020-07-20 02:58:34.63927
309	烏坵鄉	896							21	2020-07-20 02:58:34.642263	2020-07-20 02:58:34.642263
310	屏東市	900							22	2020-07-20 02:58:34.645166	2020-07-20 02:58:34.645166
311	三地門鄉	901							22	2020-07-20 02:58:34.648086	2020-07-20 02:58:34.648086
312	霧台鄉	902							22	2020-07-20 02:58:34.650849	2020-07-20 02:58:34.650849
313	瑪家鄉	903							22	2020-07-20 02:58:34.653719	2020-07-20 02:58:34.653719
314	九如鄉	904							22	2020-07-20 02:58:34.656613	2020-07-20 02:58:34.656613
315	里港鄉	905							22	2020-07-20 02:58:34.659479	2020-07-20 02:58:34.659479
316	高樹鄉	906							22	2020-07-20 02:58:34.66913	2020-07-20 02:58:34.66913
317	鹽埔鄉	907							22	2020-07-20 02:58:34.671658	2020-07-20 02:58:34.671658
318	長治鄉	908							22	2020-07-20 02:58:34.674178	2020-07-20 02:58:34.674178
319	麟洛鄉	909							22	2020-07-20 02:58:34.676547	2020-07-20 02:58:34.676547
320	竹田鄉	911							22	2020-07-20 02:58:34.678867	2020-07-20 02:58:34.678867
321	內埔鄉	912							22	2020-07-20 02:58:34.68113	2020-07-20 02:58:34.68113
322	萬丹鄉	913							22	2020-07-20 02:58:34.683461	2020-07-20 02:58:34.683461
323	潮州鎮	920							22	2020-07-20 02:58:34.685801	2020-07-20 02:58:34.685801
324	泰武鄉	921							22	2020-07-20 02:58:34.688076	2020-07-20 02:58:34.688076
325	來義鄉	922							22	2020-07-20 02:58:34.690609	2020-07-20 02:58:34.690609
326	萬巒鄉	923							22	2020-07-20 02:58:34.692954	2020-07-20 02:58:34.692954
327	崁頂鄉	924							22	2020-07-20 02:58:34.695205	2020-07-20 02:58:34.695205
328	新埤鄉	925							22	2020-07-20 02:58:34.697485	2020-07-20 02:58:34.697485
329	南州鄉	926							22	2020-07-20 02:58:34.699687	2020-07-20 02:58:34.699687
330	林邊鄉	927							22	2020-07-20 02:58:34.702009	2020-07-20 02:58:34.702009
331	東港鎮	928							22	2020-07-20 02:58:34.704434	2020-07-20 02:58:34.704434
332	琉球鄉	929							22	2020-07-20 02:58:34.706706	2020-07-20 02:58:34.706706
333	佳冬鄉	931							22	2020-07-20 02:58:34.708912	2020-07-20 02:58:34.708912
334	新園鄉	932							22	2020-07-20 02:58:34.711178	2020-07-20 02:58:34.711178
335	枋寮鄉	940							22	2020-07-20 02:58:34.713415	2020-07-20 02:58:34.713415
336	枋山鄉	941							22	2020-07-20 02:58:34.715605	2020-07-20 02:58:34.715605
337	春日鄉	942							22	2020-07-20 02:58:34.718018	2020-07-20 02:58:34.718018
338	獅子鄉	943							22	2020-07-20 02:58:34.720384	2020-07-20 02:58:34.720384
339	車城鄉	944							22	2020-07-20 02:58:34.722749	2020-07-20 02:58:34.722749
340	牡丹鄉	945							22	2020-07-20 02:58:34.725107	2020-07-20 02:58:34.725107
341	恆春鎮	946							22	2020-07-20 02:58:34.727744	2020-07-20 02:58:34.727744
342	滿州鄉	947							22	2020-07-20 02:58:34.730086	2020-07-20 02:58:34.730086
343	台東市	950							23	2020-07-20 02:58:34.732409	2020-07-20 02:58:34.732409
344	綠島鄉	951							23	2020-07-20 02:58:34.8947	2020-07-20 02:58:34.8947
345	蘭嶼鄉	952							23	2020-07-20 02:58:34.897263	2020-07-20 02:58:34.897263
346	延平鄉	953							23	2020-07-20 02:58:34.899617	2020-07-20 02:58:34.899617
347	卑南鄉	954							23	2020-07-20 02:58:34.902052	2020-07-20 02:58:34.902052
348	鹿野鄉	955							23	2020-07-20 02:58:34.90431	2020-07-20 02:58:34.90431
349	關山鎮	956							23	2020-07-20 02:58:34.906796	2020-07-20 02:58:34.906796
350	海端鄉	957							23	2020-07-20 02:58:34.909221	2020-07-20 02:58:34.909221
351	池上鄉	958							23	2020-07-20 02:58:34.911642	2020-07-20 02:58:34.911642
352	東河鄉	959							23	2020-07-20 02:58:34.913988	2020-07-20 02:58:34.913988
353	成功鎮	961							23	2020-07-20 02:58:34.916278	2020-07-20 02:58:34.916278
354	長濱鄉	962							23	2020-07-20 02:58:34.918527	2020-07-20 02:58:34.918527
355	太麻里鄉	963							23	2020-07-20 02:58:34.920728	2020-07-20 02:58:34.920728
356	金峰鄉	964							23	2020-07-20 02:58:34.923085	2020-07-20 02:58:34.923085
357	大武鄉	965							23	2020-07-20 02:58:34.925494	2020-07-20 02:58:34.925494
358	達仁鄉	966							23	2020-07-20 02:58:34.927899	2020-07-20 02:58:34.927899
359	花蓮市	970							24	2020-07-20 02:58:34.93045	2020-07-20 02:58:34.93045
360	新城鄉	971							24	2020-07-20 02:58:34.932804	2020-07-20 02:58:34.932804
361	秀林鄉	972							24	2020-07-20 02:58:34.935233	2020-07-20 02:58:34.935233
362	吉安鄉	973							24	2020-07-20 02:58:34.937558	2020-07-20 02:58:34.937558
363	壽豐鄉	974							24	2020-07-20 02:58:34.940083	2020-07-20 02:58:34.940083
364	鳳林鎮	975							24	2020-07-20 02:58:34.942571	2020-07-20 02:58:34.942571
365	光復鄉	976							24	2020-07-20 02:58:34.944908	2020-07-20 02:58:34.944908
366	豐濱鄉	977							24	2020-07-20 02:58:34.947211	2020-07-20 02:58:34.947211
367	瑞穗鄉	978							24	2020-07-20 02:58:34.94947	2020-07-20 02:58:34.94947
368	萬榮鄉	979							24	2020-07-20 02:58:34.951796	2020-07-20 02:58:34.951796
369	玉里鎮	981							24	2020-07-20 02:58:34.954155	2020-07-20 02:58:34.954155
370	卓溪鄉	982							24	2020-07-20 02:58:34.956591	2020-07-20 02:58:34.956591
371	富里鄉	983							24	2020-07-20 02:58:35.198756	2020-07-20 02:58:35.198756
221	中西區	700	臺南	臺南	臺南分局				17	2020-07-20 02:58:34.01752	2020-07-21 01:43:41.44479
224	北區	704	臺南	臺南	臺南分局				17	2020-07-20 02:58:34.024715	2020-07-21 01:45:34.866807
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.users (id, first_name, last_name, role, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, full_name, "userIdentityCard", "userBirthday", "userLocalPhone", "userMobilePhone", "userNotes", "userCountry", "userTownship", "userVillage", "userNeighbor", "userStreet", "userSection", "userLane", "userAlley", "userNumber", "userFloor", "userIdentityCode", "userPublicOrPrivate") FROM stdin;
1	管	理者	1	admin@gmail.com	$2a$11$biE6TLmajNwSYDy.R3kh3OxClPxGtgsF6yDId/mWh1JsE1Bkx7sWS	\N	\N	\N	2020-07-20 02:58:29.600414	2020-08-07 02:35:13.254582	管理者	\N	\N	\N	\N	管理者	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	曾	昱銓	\N	acme6801@gmail.com	$2a$11$7lvUaYwllgo/dNXJUWiJqelg/8vNfp.pY6/V5XzDfWKOjJpoP/1P6	\N	\N	\N	2020-07-20 02:58:30.074442	2020-08-07 02:35:13.269486	曾昱銓	L125051272	\N	\N	0911987707	職員	高雄市	鳳山區	\N	\N	建國路	一段	17巷	\N	86號	\N	\N	\N
5	曾	桂雄	\N	brainsou@gmail.com	$2a$11$jq0SC4ft3qphEI6u8y.AXuddz3UPTdynUcfbYgkc3MbFMFBY1AJLC	\N	\N	\N	2020-07-20 02:58:30.231692	2020-08-07 02:35:13.279239	曾桂雄	L103230313	\N	\N	0911987701	職員	高雄市	鳳山區	\N	\N	建國路	一段	17巷	\N	86號	\N	\N	\N
6	劉	家彰	\N	nealeliu@gmail.com	$2a$11$U35P79R9X2DHOYc76a6C9e8sKbH5XVKiT3ICF6osfHBEAyOtv7ZSi	\N	\N	2020-08-06 12:24:39.754748	2020-07-20 02:58:30.394661	2020-08-07 02:35:13.287901	劉家彰	P122190873	\N	\N	0918332707	職員	臺南市	東區	\N	\N	東平路	\N	\N	\N	11號	5樓	\N	\N
9	王	建斌	\N	bahg2001@gmail.com	$2a$11$nZtmHpqlUQ/VhnUsMgd7O.Wa4nRPLUnwRCMDQENcbfF9QyMYSTkTe	\N	\N	\N	2020-07-20 02:58:30.870679	2020-08-07 02:35:13.296317	王建斌	\N	\N	\N	\N	職員	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	吳	俊男	\N	ryowu0329@gmail.com	$2a$11$l.PDhoYpwtkHPb7ddxxkfu/PMpy5/lBMg0lcgvm26ZfRDKJJZCUHi	\N	\N	\N	2020-07-20 02:58:29.758236	2020-08-07 02:35:13.304589	吳俊男	R111111333	1976-03-29	06-7222333	0921526137	職員	台南市	東區	\N	\N	德東街	\N	\N	\N	222號	6樓6	\N	\N
7	曾	友志	\N	7531karl@gmail.com	$2a$11$Vh0Jblcu3dNI.3Nygm34fu35y8ZZarGqUzKr4hFNJSFWFGHuhbkru	\N	\N	2020-07-24 15:08:23.365825	2020-07-20 02:58:30.553441	2020-08-07 02:35:13.318153	曾友志	L121920838	\N	\N	0935770043	會計	臺中市	大里區	\N	\N	新仁路	三段	\N	\N	49號	\N	\N	\N
3	張	浩文	\N	waterhao0709@gmail.com	$2a$11$zoNOfDd3VtG/JVWjHGP4/.VgBpubJ18ijM0pL5MV1MhMQ1cnxnFVu	\N	\N	\N	2020-07-20 02:58:29.916249	2020-08-07 02:35:13.325003	張浩文	\N	\N	\N	0920005858	職員	新北巿	中和區	\N	\N	圓通路	\N	198巷	\N	32號	\N	\N	\N
12	曾	智翊	\N	sunmarbo@gmail.com	$2a$11$35H0K1hN5FQrT5bMqH4nk.FXO53fzrPU19nUbAgW2ao4CMWd9Ml9a	\N	\N	\N	2020-08-07 02:19:11.481507	2020-08-07 02:35:13.331533	曾智翊	\N	\N	\N	0912676719	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	曾	友和	\N	sosan600715@gmail.com	$2a$11$SDF.EEpeT8D1/ZUzX7kMoeLQU3B9Uwx41bHMXqa.3ZN05cNLR0CXe	\N	\N	\N	2020-07-20 02:58:30.710781	2020-08-07 03:06:46.676214	曾友和	L121924265	1971-07-15	\N	0921765023	法務	臺南市	東區	\N	\N	東平路	\N	\N	\N	11號	5樓	\N	\N
13	揚富	開發有限公司	\N	yangfu@gmail.com	$2a$11$2zwbA6gLtjKckKTJndcnbeuK6u0/fYBTx.QSpX67K.uRrAkLPHIV.	\N	\N	\N	2020-08-07 02:21:46.292755	2020-08-07 03:06:46.699291	揚富開發有限公司	64187207	2018-01-23	\N	\N	\N	臺中市	大里區	\N	\N	新仁路	三段	\N	\N	49號	1樓	\N	\N
14	鉅鈦	開發有限公司	\N	jutai@gmail.com	$2a$11$iYiZf5Rwd7dqmN9c8pCM1e5TKnF4lBUyY38RmPfdT73OqRPXJXE5.	\N	\N	\N	2020-08-07 02:24:53.55161	2020-08-07 03:06:46.706335	鉅鈦開發有限公司	83554300	2020-03-11	\N	\N	\N	臺中市	大里區	\N	\N	新仁路	三段	72巷	\N	3號	1樓	\N	\N
\.


--
-- Data for Name: yfcases; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.yfcases (id, case_number, other_address, auction_day_1, auction_day_2, auction_day_3, auction_day_4, floor_price_1, floor_price_2, floor_price_3, floor_price_4, click_1, click_2, click_3, click_4, monitor_1, monitor_2, monitor_3, monitor_4, margin_1, margin_2, margin_3, margin_4, auction_notes, first_survey_day, other_survey_day, foreclosure_announcement_title, foreclosure_announcement_link, object_photo_title, object_photo_link, net_price_registration_market_price_title, net_price_registration_market_price_link, net_price_registration_map_title, net_price_registration_map_link, net_price_registration_photo_title, net_price_registration_photo_link, auction_record_title, auction_record_link, other_notes, survey_resolution, final_decision, co_owner, occupy, register, parking_space, management_fee, rent, leak, easy_parking, railway, vegetable_market, supermarket, school, park, post_office, main_road, water_and_power_failure, good_vision, final_decision_date, country_id, township_id, user_id, created_at, updated_at, big_section, small_section, company, foreclosure_announcement_988_link, adv_find_condition, active_result, active_result_date, priority_purchase_result, target_number, cause_data, application_for_registration, reason_for_registration, marking_and_application_rights, "attached_Document_Content_1", number_of_attached_quantity_1, "attached_Document_Content_2", number_of_attached_quantity_2, "attached_Document_Content_3", number_of_attached_quantity_3, registration_notes, "deedtaxDateOfDeed", "deedtaxDeclarationDate", "deedtaxTransferPrice", "deedtaxChargeDaffairesTaxDeclarant", "deedtaxDebtTaxPaymentReceiptMethod", "deedtaxClosedNewsletter", "deedtaxUnderreportedDays", "deedtaxRemark", "deedtaxBuildingTransferLevel1", "deedtaxBuildingTransferLevel2", "deedtaxBuildingTransferLevel3", "deedtaxBuildingTransferLevel4", "deedtaxBuildingTransferLevel5", "deedtaxBuildingTransferLevel6", "deedtaxBuildingTransferLevel7", "deedtaxBuildingTransferStructure1", "deedtaxBuildingTransferStructure2", "deedtaxBuildingTransferStructure3", "deedtaxBuildingTransferStructure4", "deedtaxBuildingTransferStructure5", "deedtaxBuildingTransferStructure6", "deedtaxBuildingTransferStructure7", "deedtaxBuildingTransferArea1", "deedtaxBuildingTransferArea2", "deedtaxBuildingTransferArea3", "deedtaxBuildingTransferArea4", "deedtaxBuildingTransferArea5", "deedtaxBuildingTransferArea6", "deedtaxBuildingTransferArea7", "deedtaxBuildingTransferPublicBuildingNumber1", "deedtaxBuildingTransferPublicBuildingNumber2", "deedtaxBuildingTransferPublicBuildingNumber3", "deedtaxBuildingTransferPublicBuildingNumber4", "deedtaxBuildingTransferPublicBuildingNumber5", "deedtaxBuildingTransferPublicArea1", "deedtaxBuildingTransferPublicArea2", "deedtaxBuildingTransferPublicArea3", "deedtaxBuildingTransferPublicArea4", "deedtaxBuildingTransferPublicArea5", "deedtaxBuildingTransferPublicHoldings1", "deedtaxBuildingTransferPublicHoldings2", "deedtaxBuildingTransferPublicHoldings3", "deedtaxBuildingTransferPublicHoldings4", "deedtaxBuildingTransferPublicHoldings5", "housingTax", "refereeFee", "agreementSplitUnsuccessfulDate", exhibit1, exhibit2, exhibit3, exhibit4, "tabulationDate", "isMobileOrDesktop", "realestateregistrationRealEstateAgent", "complaintLitigationAgent", "debtorName", "debtorIdentitycard", "debtorBirthday", "debtorLocallphone", "debtorMobilelphone", "debtorNotes", "debtorCountry", "debtorTownship", "debtorVillage", "debtorNeighbor", "debtorStreet", "debtorSection", "debtorLane", "debtorAlley", "debtorNumber", "debtorFloor", "debtorBuildholdingpointperson", "debtorBuildholdingpointall", "debtorLandholdingpointperson", "debtorLandholdingpointall", "creditorName", "creditorIdentitycard", "creditorBirthday", "creditorLocallphone", "creditorMobilelphone", "creditorNotes", "creditorCountry", "creditorTownship", "creditorVillage", "creditorNeighbor", "creditorStreet", "creditorSection", "creditorLane", "creditorAlley", "creditorNumber", "creditorFloor", "creditorBuildholdingpointperson", "creditorBuildholdingpointall", "creditorLandholdingpointperson", "creditorLandholdingpointall", "houseTaxNumberCountry1", "houseTaxNumberCountry2", "houseTaxNumberTownship1", "houseTaxNumberTownship2", "houseTaxNumberBuilding1", "houseTaxNumberBuilding2", "houseTaxNumberBuilding3", "houseTaxNumberBuilding4", "houseTaxNumberHouseHold1", "houseTaxNumberHouseHold2", "houseTaxNumberHouseHold3") FROM stdin;
5	109年度南金職字第31號\t	前鋒路81號3樓	2020-03-18	2020-04-08	2020-04-29	\N	800000	640000	512000	409600	\N	\N	\N	150	\N	\N	\N	2	\N	\N	\N	\N	\N	2020-03-07	2020-05-16	\N	https://tfasc.blob.core.windows.net/importbulletin/10904_29171637.107	\N	https://www.google.com.tw/maps/place/701%E5%8F%B0%E5%8D%97%E5%B8%82%E6%9D%B1%E5%8D%80%E5%89%8D%E9%8B%92%E8%B7%AF81%E8%99%9F/@22.9917642,120.2128888,3a,75y,258.04h,90t/data=!3m7!1e1!3m5!1snpwjvUSYXSPJX1GNMdRrSQ!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DnpwjvUSYXSPJX1GNMdRrSQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D258.0402%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5YmN6YuS6LevODHomZ8z5qiT!3m4!1s0x346e768ee428a9b9:0x5e64bc54631f7012!8m2!3d22.9917521!4d120.2128537	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%89%8d%e9%8b%92%e8%b7%af81%e8%99%9f	\N	\N	4拍進場	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	2020-05-16	17	222	8	2020-07-20 07:49:29.118647	2020-07-20 08:57:13.201073			揚富開發有限公司		109年度南金職字第31號\t//3/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	109南金職亥字第223號\t	國華街一段56巷9號	2020-06-10	\N	\N	\N	830000	0	0	0	22	\N	\N	\N	1	\N	\N	\N	166000	\N	\N	\N	\N	2020-06-03	2020-06-06	\N	https://tfasc.blob.core.windows.net/importbulletin/10905_15103251.112	\N	https://drive.google.com/drive/folders/1MwTRY7Xi_70scqVbzlS60sUdbLLecKzL	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%9c%8b%e8%8f%af%e8%a1%97%e4%b8%80%e6%ae%b556%e5%b7%b79%e8%99%9f	\N	\N	放棄	f	f	t	f	f	f	f	f	f	t	f	t	t	t	f	f	f	2020-06-05	17	223	6	2020-07-20 08:00:39.471964	2020-07-20 08:57:21.461128			揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	108年度司執字第47156號	懷德街121號3樓	2020-02-11	2020-03-10	\N	\N	1010000	810000	0	0	\N	301	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	2020-02-12	2020-02-15	\N	https://tw.988house.com/Auction/AuctionDataShow.aspx?Caption=108%e6%97%a547156_2_2020-2-12.pdf&Court=PCD	\N	https://www.google.com.tw/maps/@25.0310432,121.4787308,3a,75y,49.25h,121.04t/data=!3m6!1e1!3m4!1sclj4hqkdufKyBreyhTzLGg!2e0!7i16384!8i8192	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e6%87%b7%e5%be%b7%e8%a1%97121%e8%99%9f3%e6%a8%93	\N	\N	放棄	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-05-25	3	22	8	2020-07-20 08:12:54.689641	2020-07-20 08:57:34.797114	江子翠段		揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	108司執助字第3566號\t	忠孝路132巷23之2號	2020-04-09	2020-05-07	2020-06-04	\N	2200000	1760000	1414000	0	\N	\N	172	\N	\N	\N	1	\N	\N	\N	290000	\N	\N	2020-05-20	2020-06-03	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10905/07142132037.000.pdf	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E5%BF%A0%E5%AD%9D%E8%B7%AF132%E5%B7%B723%E8%99%9F/@25.0017011,121.4635519,3a,75y,60.67h,101.84t/data=!3m7!1e1!3m5!1soiZp4IEU4FKrMe3mOHf7bQ!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DoiZp4IEU4FKrMe3mOHf7bQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D82.89324%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x346802a3e547b995:0x66cc8096f9ee8c65!8m2!3d25.0017266!4d121.4636571	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%bf%a0%e5%ad%9d%e8%b7%af132%e5%b7%b723%e4%b9%8b2	\N	\N	放棄	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-06-03	3	22	3	2020-07-20 06:37:36.220299	2020-07-20 08:56:50.877102	重慶段		揚富開發有限公司		108司執助字第3566號\t/放棄/3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1	108司執字第25440號\t	四川路一段286巷5號	2020-05-21	2020-06-18	\N	\N	2110000	1710000	0	0	\N	98	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	2020-06-03	2020-06-03	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10905/22110827662.000.pdf	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E5%9B%9B%E5%B7%9D%E8%B7%AF%E4%B8%80%E6%AE%B5286%E5%B7%B75%E8%99%9F/@25.0008838,121.4561369,17z/data=!3m1!4b1!4m5!3m4!1s0x346802a59fd70f73:0x3a11c8c24ef49976!8m2!3d25.000879!4d121.458331	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%9b%9b%e5%b7%9d%e8%b7%af%e4%b8%80%e6%ae%b5286%e5%b7%b75%e8%99%9f	\N	\N		f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-06-03	3	22	3	2020-07-20 06:25:06.146563	2020-07-20 06:34:55.216811	忠孝段		揚富開發有限公司		108司執字第25440號\t//3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	108司執字第160537號\t	民治街134巷36號五樓	2020-06-09	\N	\N	\N	2400000	0	0	0	58	\N	\N	\N	0	\N	\N	\N	480000	\N	\N	\N	\N	2020-05-27	2020-06-03	\N	http://aomp.judicial.gov.tw/abbs/wkw/WHD2A03.jsp?pageTotal=6&pageSize=15&rowStart=16&saletypeX=1&proptypeX=C52&courtX=PCD&order=odposition&query_typeX=session&saleno=&hsimun=all&ctmd=all&sec=all&crmyy=&crmid=&crmno=&dpt=&saledate1=&saledate2=&minprice1=&minprice2=&sumprice1=&sumprice2=&area1=&area2=&registeno=&checkyn=all&emptyyn=all&order=odposition&owner1=&landkd=&rrange=%B3%A1%A5%F7&comm_yn=&stopitem=&courtNoLimit=&pageNow=3&276C0AD28D2C934E54AD3B15520FB7CB=CED37994E7A82127D21EFF34589430AF	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%B0%91%E6%B2%BB%E8%A1%97134%E5%B7%B736%E8%99%9F/@25.0314553,121.4767923,3a,75y,339.55h,122.63t/data=!3m7!1e1!3m5!1sKHditjmmNCFtKQTcqfDM8Q!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DKHditjmmNCFtKQTcqfDM8Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D293.60614%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442a8442ef31307:0x75494a6cce6bba24!8m2!3d25.0315099!4d121.4766431	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/134%e5%b7%b736%e8%99%9f	\N	\N	4拍進場	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-06-03	3	22	3	2020-07-20 08:04:52.267795	2020-07-20 08:57:26.637471	江子翠段	第三崁小段	揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	109雄金職申15\t	武德街140巷28號	\N	\N	2020-05-27	\N	0	0	491000	0	\N	\N	69	\N	\N	\N	1	\N	\N	\N	99000	\N	\N	\N	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/10905_06172206.109	\N	https://www.google.com.tw/maps/place/806%E9%AB%98%E9%9B%84%E5%B8%82%E5%89%8D%E9%8E%AE%E5%8D%80%E6%AD%A6%E5%BE%B7%E8%A1%97140%E5%B7%B728%E8%99%9F/@22.6082776,120.3265989,3a,75y,62.62h,89.43t/data=!3m6!1e1!3m4!1syZ0q1b-1QyxP7Fuo2WJc3g!2e0!7i13312!8i6656!4m5!3m4!1s0x346e0358d6a43f7f:0x80e34ac9cf89931b!8m2!3d22.6082991!4d120.3266215?hl=zh-TW	\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	f	t	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2020-05-22	18	264	4	2020-07-20 06:51:10.236781	2020-07-20 08:56:56.361278			揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	108年度南金職字第751號	安通路四段119巷27弄1號	2020-02-19	2020-03-11	2020-04-08	\N	2650000	2120000	1696000	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2020-02-08	2020-05-16	\N	https://tw.988house.com/Auction/AuctionDataShow.aspx?Caption=108%e5%8d%97%e9%87%91%e8%81%b7%e9%85%89751_99_2020-4-10.txt&Court=TNG	\N	https://maps.app.goo.gl/VmsqhKYHeagen52fA	\N		\N	\N	\N	\N	\N	https://實價登錄/	\N	\N	放棄	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-05-16	17	226	8	2020-07-20 07:55:42.552036	2020-07-20 08:57:17.644903	安西段		揚富開發有限公司		108年度南金職字第751號//3/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	109年度司執字第1330號\t	泰安路23之7號4 樓	2020-05-13	2020-06-10	\N	\N	810000	689000	0	0	134	134	\N	\N	0	0	\N	\N	162000	138000	\N	\N	\N	2020-06-05	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/kld/10905/14090025540.001.pdf	\N	http://aomp1.judicial.gov.tw/KPIC/query/QUERYPIC_01v2.jsp?pic=../pic/KLD/10903/06100204939.jpg&rot=Y	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e6%b3%b0%e5%ae%89%e8%b7%af23%e4%b9%8b7%e8%99%9f	\N	\N		f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-07-20	2	19	3	2020-07-20 08:06:33.921583	2020-07-20 09:19:31.972717	工建段		揚富開發有限公司		109年度司執字第1330號\t//3/2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	108司執字114619號\t	金華路二段21巷1之1號	2020-05-19	\N	\N	\N	1200000	0	0	0	74	\N	\N	\N	1	\N	\N	\N	240000	\N	\N	\N	\N	\N	2020-05-11	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10904/17163817083.016.pdf	\N	https://www.google.com.tw/maps/place/702%E5%8F%B0%E5%8D%97%E5%B8%82%E5%8D%97%E5%8D%80%E9%87%91%E8%8F%AF%E8%B7%AF%E4%BA%8C%E6%AE%B521%E5%B7%B71%E8%99%9F/@22.9764889,120.1908,3a,75y,133.85h,88.54t/data=!3m7!1e1!3m5!1s4j-n3T1ikngLcsByTx8Gyw!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3D4j-n3T1ikngLcsByTx8Gyw%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D147.41145%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e75da325b0aef:0x2f28bd5bed925d37!8m2!3d22.9763917!4d120.1908683?hl=zh-hant-tw	\N		\N	\N	\N	\N	\N		\N	\N	放棄	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-07-17	17	223	6	2020-07-20 06:56:20.101289	2020-07-20 08:57:05.921239	鹽埕段		揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	108司執字43915\t	新生路52號	\N	\N	\N	2020-06-09	0	0	0	362000	\N	\N	\N	261	\N	\N	\N	1	\N	\N	\N	73000	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/10905/15144147850.017.pdf	\N	https://www.google.com.tw/maps/place/924%E5%B1%8F%E6%9D%B1%E7%B8%A3%E5%B4%81%E9%A0%82%E9%84%89%E6%96%B0%E7%94%9F%E8%B7%AF52%E8%99%9F/@22.5040189,120.4812574,3a,85.9y,289.62h,105.78t/data=!3m7!1e1!3m5!1sTIgDcz2GNNOwWmYdj4dv5Q!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DTIgDcz2GNNOwWmYdj4dv5Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod%2Fmaps%2Flocal-details-getcard.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D326.12936%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e1e32af9a7489:0xf365959c38ff0447!8m2!3d22.5040427!4d120.4811859?hl=zh-TW	\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	t	t	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2020-06-05	22	327	4	2020-07-20 08:16:10.504775	2020-07-20 08:57:38.280836			揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
15	109年司執字027357號\t	中正路310之7號	2020-07-21	\N	\N	\N	920000	0	0	0	83	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	2020-07-05	\N	\N	https://tw.988house.com/auction/595032	\N		\N		\N	\N	\N	\N	\N		\N	\N		f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-07-09	17	229	6	2020-07-20 08:25:12.110731	2020-07-20 08:57:51.254759	新安段		揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
17	南院武109司執廉字第30199號\t	中正路169號	2020-07-21	\N	\N	\N	3300000	0	0	0	35	\N	\N	\N	0	\N	\N	\N	66000	\N	\N	\N	\N	2020-07-16	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10906/30083357741.016.pdf	\N	https://www.google.com/maps/place/732%E5%8F%B0%E5%8D%97%E5%B8%82%E7%99%BD%E6%B2%B3%E5%8D%80%E4%B8%AD%E6%AD%A3%E8%B7%AF169%E8%99%9F/@23.3493204,120.410796,3a,75y,167.24h,107.24t/data=!3m6!1e1!3m4!1s70y8IcaTa5_YuZcwltR6Zg!2e0!7i13312!8i6656!4m5!3m4!1s0x346e8e3e7642cc17:0x9f59a4d9cded87f1!8m2!3d23.3491735!4d120.4108379	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%8f%b0%e5%8d%97%e5%b8%82%e7%99%bd%e6%b2%b3%e5%8d%80%e6%b0%b8%e5%ae%89%e9%87%8c%e4%b8%ad%e6%ad%a3%e8%b7%af169%e8%99%9f	\N	\N		f	f	f	f	f	f	f	t	f	t	t	t	t	t	t	f	t	2020-07-17	17	247	6	2020-07-20 08:33:47.670383	2020-07-20 08:57:58.026229	永安段		揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	管理者文件測試		\N	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-07-31	\N	\N	2	2020-07-20 08:16:59.033355	2020-07-31 13:51:52.224328			揚富開發有限公司		管理者文件測試//2/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
16	109年度司執字第11399號\t	信義街44巷6號	2020-07-21	2020-08-11	\N	\N	640000	512000	0	0	48	93	\N	\N	0	0	\N	\N	128000	103000	\N	\N	\N	2020-06-20	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10906/22191052506.014.pdf	\N	https://www.google.com.tw/maps/place/710%E5%8F%B0%E5%8D%97%E5%B8%82%E6%B0%B8%E5%BA%B7%E5%8D%80%E4%BF%A1%E7%BE%A9%E8%A1%9744%E5%B7%B76%E8%99%9F/@23.0111958,120.2730646,3a,75y,96.48h,90t/data=!3m7!1e1!3m5!1sOGekGuyfub6_ZylqrIm31g!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DOGekGuyfub6_ZylqrIm31g%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D96.476234%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e70de3460a92b:0x7ee0d3503b9f2eab!8m2!3d23.0111357!4d120.2731418	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/44%e5%b7%b76%e8%99%9f	\N	\N		f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-08-04	17	227	6	2020-07-20 08:29:31.677281	2020-08-04 03:40:11.30748	大灣段		揚富開發有限公司		109年度司執字第11399號\t//6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	109司執字第30344號	健康路一段170巷3號之1	2020-08-18	\N	\N	\N	610000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	122000	\N	\N	\N	\N	2020-08-01	\N	\N	 http://aomp.judicial.gov.tw/abbs/sale/tnd/10907/27103531648.026.pdf	\N		\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/550661	\N	\N	4拍進場	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-08-06	17	221	6	2020-08-04 06:36:02.092934	2020-08-06 14:27:46.093851	郡王祠		揚富開發有限公司		109司執字第30344號/4拍進場/6/17	得標	2020-08-06	無人優購		2020-08-28	\N	拍賣	\N	\N	\N	\N	\N	\N	\N		2020-08-06	2020-08-14	45000		 	 	\N								\N							\N							\N					\N					\N					\N								\N	\N	6		陳俊銘		\N				台南市	中西區			健康路	1	170		3-1		1	6	1	96		64187207	\N				台中市	大里區			新仁路	3			49						\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
19	109年司執字030899號	復國二路16巷9號	2020-07-28	\N	\N	\N	2580000	0	0	0	97	\N	\N	\N	0	\N	\N	\N	516000	\N	\N	\N	\N	2020-08-01	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N		\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-08-04	17	227	6	2020-08-04 06:53:37.257817	2020-08-04 07:09:35.286702	永仁段		揚富開發有限公司	https://tw.988house.com/auction/595973	109年司執字030899號//6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	黃文山	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	109南金職午290號(108年度司執字第32797號)\t	安平路370巷3弄20號2樓	2020-07-08	2020-07-29	2020-08-19	\N	710000	568000	455000	0	43	68	102	\N	0	0	0	\N	142000	114000	91000	\N	\N	2020-07-04	\N	\N	https://tw.988house.com/auction/594927	\N	https://goo.gl/maps/psYVs2UkDkfvtdY96	\N	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%B9%B3%E5%8D%80?kw=%E5%AE%89%E5%B9%B3%E8%B7%AF	\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/370%e5%b7%b73%e5%bc%8420%e8%99%9f2%e6%a8%93	\N	\N		t	f	f	f	f	f	f	f	f	t	t	t	t	f	t	f	f	2020-08-06	17	225	6	2020-07-20 08:22:32.904963	2020-08-06 13:29:50.88679	新南段		揚富開發有限公司	https://tw.988house.com/auction/594927	109南金職午290號(108年度司執字第32797號)\t//6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
12	測試文件(以109年度南金職字第31號為例)	西門路1段702巷17號	2018-08-30	2018-08-30	2018-08-30	2018-08-30	300000	240000	200000	160000	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-07	2020-05-16	\N	https://tfasc.blob.core.windows.net/importbulletin/10904_29171637.107	\N	https://www.google.com.tw/maps/place/701%E5%8F%B0%E5%8D%97%E5%B8%82%E6%9D%B1%E5%8D%80%E5%89%8D%E9%8B%92%E8%B7%AF81%E8%99%9F/@22.9917642,120.2128888,3a,75y,258.04h,90t/data=!3m7!1e1!3m5!1snpwjvUSYXSPJX1GNMdRrSQ!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DnpwjvUSYXSPJX1GNMdRrSQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D258.0402%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5YmN6YuS6LevODHomZ8z5qiT!3m4!1s0x346e768ee428a9b9:0x5e64bc54631f7012!8m2!3d22.9917521!4d120.2128537	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%89%8d%e9%8b%92%e8%b7%af81%e8%99%9f	\N	\N	4拍進場	t	t	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	2020-08-07	17	221	8	2020-07-20 08:16:39.183775	2020-08-07 10:45:57.305733	南門段		鉅鈦開發有限公司		測試文件(以109年度南金職字第31號為例)/4拍進場/8/17	得標	2020-08-07	無人優購		2020-07-24	所有權移轉登記	拍賣	登記清冊	土地權狀	1	土地權狀2	1	土地權狀3	2		2020-07-25	2020-08-20	36200	8	郵寄	需要	2	無	一層	二層						磚造	磚造						57.75	12.83	9.25									\N					\N					\N	36200	4190	2020-07-01	地契	土地權狀	合約	申請書	2020-07-31	\N	8	8	李郭琴	A123456789	\N		123		臺南市	中西區	小西門里	19鄰	西門路	1	702		17		1	6	1	6		64187207	1990-11-20	04-24839038	456		臺中市	大里區			新仁路	3段			49		1	6	1	6	1	2	3	4	5	6	7	8	9	A	B
\.


--
-- Name: builds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.builds_id_seq', 25, true);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.countries_id_seq', 24, true);


--
-- Name: lands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.lands_id_seq', 21, true);


--
-- Name: objectbuilds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.objectbuilds_id_seq', 36, true);


--
-- Name: personnals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.personnals_id_seq', 17, true);


--
-- Name: plusrateas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.plusrateas_id_seq', 1, false);


--
-- Name: plusratebs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.plusratebs_id_seq', 1, false);


--
-- Name: subsigntrueas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.subsigntrueas_id_seq', 9, true);


--
-- Name: subsigntruebs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.subsigntruebs_id_seq', 1, false);


--
-- Name: subsigntruecs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.subsigntruecs_id_seq', 1, false);


--
-- Name: townships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.townships_id_seq', 371, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: yfcases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.yfcases_id_seq', 19, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: builds builds_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.builds
    ADD CONSTRAINT builds_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: lands lands_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.lands
    ADD CONSTRAINT lands_pkey PRIMARY KEY (id);


--
-- Name: objectbuilds objectbuilds_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.objectbuilds
    ADD CONSTRAINT objectbuilds_pkey PRIMARY KEY (id);


--
-- Name: personnals personnals_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.personnals
    ADD CONSTRAINT personnals_pkey PRIMARY KEY (id);


--
-- Name: plusrateas plusrateas_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.plusrateas
    ADD CONSTRAINT plusrateas_pkey PRIMARY KEY (id);


--
-- Name: plusratebs plusratebs_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.plusratebs
    ADD CONSTRAINT plusratebs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: subsigntrueas subsigntrueas_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntrueas
    ADD CONSTRAINT subsigntrueas_pkey PRIMARY KEY (id);


--
-- Name: subsigntruebs subsigntruebs_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntruebs
    ADD CONSTRAINT subsigntruebs_pkey PRIMARY KEY (id);


--
-- Name: subsigntruecs subsigntruecs_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.subsigntruecs
    ADD CONSTRAINT subsigntruecs_pkey PRIMARY KEY (id);


--
-- Name: townships townships_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.townships
    ADD CONSTRAINT townships_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: yfcases yfcases_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.yfcases
    ADD CONSTRAINT yfcases_pkey PRIMARY KEY (id);


--
-- Name: index_builds_on_yfcase_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_builds_on_yfcase_id ON public.builds USING btree (yfcase_id);


--
-- Name: index_lands_on_yfcase_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_lands_on_yfcase_id ON public.lands USING btree (yfcase_id);


--
-- Name: index_objectbuilds_on_yfcase_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_objectbuilds_on_yfcase_id ON public.objectbuilds USING btree (yfcase_id);


--
-- Name: index_personnals_on_yfcase_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_personnals_on_yfcase_id ON public.personnals USING btree (yfcase_id);


--
-- Name: index_plusrateas_on_objectbuild_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_plusrateas_on_objectbuild_id ON public.plusrateas USING btree (objectbuild_id);


--
-- Name: index_plusratebs_on_objectbuild_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_plusratebs_on_objectbuild_id ON public.plusratebs USING btree (objectbuild_id);


--
-- Name: index_subsigntrueas_on_yfcase_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_subsigntrueas_on_yfcase_id ON public.subsigntrueas USING btree (yfcase_id);


--
-- Name: index_subsigntruebs_on_yfcase_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_subsigntruebs_on_yfcase_id ON public.subsigntruebs USING btree (yfcase_id);


--
-- Name: index_subsigntruecs_on_yfcase_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_subsigntruecs_on_yfcase_id ON public.subsigntruecs USING btree (yfcase_id);


--
-- Name: index_townships_on_country_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_townships_on_country_id ON public.townships USING btree (country_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_yfcases_on_country_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_yfcases_on_country_id ON public.yfcases USING btree (country_id);


--
-- Name: index_yfcases_on_township_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_yfcases_on_township_id ON public.yfcases USING btree (township_id);


--
-- Name: index_yfcases_on_user_id; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX index_yfcases_on_user_id ON public.yfcases USING btree (user_id);


--
-- PostgreSQL database dump complete
--

