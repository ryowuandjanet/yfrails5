--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)

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
    "buildLandNumber" character varying,
    "mainBuildLevel1" character varying,
    "mainBuildLevel2" character varying,
    "mainBuildLevel3" character varying,
    "mainBuildLevel4" character varying,
    "mainBuildLevel5" character varying,
    "mainBuildConstruction1" character varying,
    "mainBuildConstruction2" character varying,
    "mainBuildConstruction3" character varying,
    "mainBuildConstruction4" character varying,
    "mainBuildConstruction5" character varying,
    "mainBuildArea1" character varying,
    "mainBuildArea2" character varying,
    "mainBuildArea3" character varying,
    "mainBuildArea4" character varying,
    "mainBuildArea5" character varying,
    "publicBuildNumber1" character varying,
    "publicBuildNumber2" character varying,
    "publicBuildNumber3" character varying,
    "publicBuildNumber4" character varying,
    "publicBuildArea1" character varying,
    "publicBuildArea2" character varying,
    "publicBuildArea3" character varying,
    "publicBuildArea4" character varying,
    "publicBuildHP1" character varying,
    "publicBuildHP2" character varying,
    "publicBuildHP3" character varying,
    "publicBuildHP4" character varying,
    "subBuildUse1" character varying,
    "subBuildUse2" character varying,
    "subBuildUse3" character varying,
    "subBuildArea1" character varying,
    "subBuildArea2" character varying,
    "subBuildArea3" character varying
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
    plusb_reason character varying,
    "objectBuildDealYear" character varying,
    "objectBuildDealMonth" character varying
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
    plusa_reason character varying,
    plusa2 numeric(4,2),
    plusa_reason2 character varying
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
    updated_at timestamp without time zone NOT NULL,
    signtruea_work_area character varying
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
    updated_at timestamp without time zone NOT NULL,
    signtrueb_work_area character varying
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
    updated_at timestamp without time zone NOT NULL,
    signtruec_work_area character varying
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
    "userPublicOrPrivate" character varying,
    "userFullName" character varying,
    "userWorkArea" character varying
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
    "houseTaxNumberHouseHold3" character varying,
    "newspaperAttached" character varying,
    now_or_before boolean
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

COPY public.builds (id, build_number, build_url, build_area, build_holding_point_personal, build_holding_point_all, build_type_use, use_partition, yfcase_id, created_at, updated_at, "buildCity", "buildTownship", "buildArea", "buildStreet", "buildRoad", "buildSegment", "buildLane", "buildDo", "buildNumber", "buildFloor", "buildBigSegment", "buildSmallSegment", "buildLot", "buildLevel1", "buildLevel2", "buildLevel3", "buildLevel4", "buildOther1", "buildOther2", "buildUse", "buildScopeOfArea", "buildScopeOfRights", "buildRemarks", "buildTotalArea", "buildLandNumber", "mainBuildLevel1", "mainBuildLevel2", "mainBuildLevel3", "mainBuildLevel4", "mainBuildLevel5", "mainBuildConstruction1", "mainBuildConstruction2", "mainBuildConstruction3", "mainBuildConstruction4", "mainBuildConstruction5", "mainBuildArea1", "mainBuildArea2", "mainBuildArea3", "mainBuildArea4", "mainBuildArea5", "publicBuildNumber1", "publicBuildNumber2", "publicBuildNumber3", "publicBuildNumber4", "publicBuildArea1", "publicBuildArea2", "publicBuildArea3", "publicBuildArea4", "publicBuildHP1", "publicBuildHP2", "publicBuildHP3", "publicBuildHP4", "subBuildUse1", "subBuildUse2", "subBuildUse3", "subBuildArea1", "subBuildArea2", "subBuildArea3") FROM stdin;
1	135		73.76	1	18	2透天厝	第一種住宅區	1	2020-07-20 06:31:02.762886	2020-07-20 06:31:02.762886	\N	\N	\N	\N		\N					\N	\N										\N			\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	3441		120.75	1	18	2透天厝	第一種住宅區	1	2020-07-20 06:31:02.769472	2020-07-20 06:31:02.769472	\N	\N	\N	\N		\N					\N	\N										\N			\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	188		65.60	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	2	2020-07-20 06:42:40.680946	2020-07-20 06:42:40.680946	\N	\N	\N	\N		\N					\N	\N										\N			\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	4245		46.41	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	2	2020-07-20 06:42:40.683137	2020-07-20 06:42:40.683137	\N	\N	\N	\N		\N					\N	\N										\N			\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	4664		76.48	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	4	2020-07-20 06:56:20.110244	2020-07-20 06:56:20.110244	\N	\N	\N	\N		\N					\N	\N										\N			\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	27371		151.96	1	5	2透天厝	第一種住宅區	7	2020-07-20 08:00:39.479306	2020-07-20 08:00:39.479306	\N	\N	\N	\N		\N					\N	\N										\N			\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	806		110.12	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	9	2020-07-20 08:08:41.523516	2020-07-20 08:08:41.523516	\N	\N	\N	\N		\N					\N	\N										\N			\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
23	2583	https://drive.google.com/drive/u/1/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	80.10	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	18	2020-08-04 06:36:02.121963	2020-08-08 08:14:02.600163	\N	\N	\N	\N							\N	\N										\N				\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
25	2590	https://drive.google.com/drive/u/0/folders/1jrs2PEF43gToupM1KtKNRNqRcTELhiSw	152.46	1	8	0公設	第一種住宅區	18	2020-08-06 12:33:13.651031	2020-08-08 08:14:02.6154	\N	\N	\N	\N							\N	\N										\N				\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
24	301	https://drive.google.com/drive/u/1/folders/101EycYhst6wW3xUD2OYxnsc2jhUufc-V	101.29	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	19	2020-08-04 06:53:37.27975	2020-08-08 08:44:40.391964	\N	\N	\N	\N							\N	\N										\N				\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
26	999		103.00	1	2	12增建(持分後坪數打對折)	第一種住宅區	19	2020-08-08 08:44:40.396705	2020-08-08 08:45:20.738106	\N	\N	\N	\N							\N	\N	\N									\N				\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
28	4220		71.75	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	21	2020-08-13 15:15:54.144194	2020-08-13 15:15:54.144194	\N	\N	\N	\N							\N	\N	\N									\N				\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
31	1066		123.26	1	7	2透天厝	第一種住宅區	23	2020-08-13 15:43:35.83582	2020-08-13 15:43:35.83582	\N	\N	\N	\N							\N	\N	\N									\N				\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
21	774	https://drive.google.com/drive/u/1/folders/1VhEp9cfB65HgsC-kFAt0mjU4wybrejiH	84.37	1	6	2透天厝	第一種住宅區	12	2020-07-20 10:20:05.912932	2020-08-31 01:26:02.435944	\N	\N	\N	\N	西門路	1	702	2	17		\N	\N	南門段	57.75	12.83						9.25	\N			18																																	
38	2295	https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	122.64	1	2	2透天厝	第一種住宅區	28	2020-08-21 07:49:16.266374	2020-08-31 11:34:18.931888	\N	\N	\N	\N							\N	\N	\N									\N																																				
37	增建陽台		2.45	1	2	12增建(持分後坪數打對折)	第一種住宅區	27	2020-08-21 07:04:06.074982	2020-08-31 16:53:46.657656	\N	\N	\N	\N							\N	\N	\N									\N																																				
36	470	https://drive.google.com/drive/u/0/folders/1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	94.54	1	2	3店面(店舖)	第一種住宅區	27	2020-08-21 07:04:06.07265	2020-08-31 16:53:46.666872	\N	\N	\N	\N							\N	\N	\N									\N																																				
18	98		88.60	1	3	2透天厝	第一種住宅區	15	2020-07-20 08:25:12.121018	2020-09-01 02:13:43.464107	\N	\N	\N	\N							\N	\N										\N																																				
20	242		144.90	4	6	2透天厝	第一種住宅區	17	2020-07-20 08:33:47.681012	2020-09-02 02:52:33.792906	\N	\N	\N	\N							\N	\N										\N																																				
44	721		109.16	1	2	2透天厝	第一種住宅區	33	2020-09-02 06:02:56.987102	2020-09-02 06:02:56.987102	\N	\N	\N	\N							\N	\N	\N									\N																																				
45	2761		119.71	1	2	12增建(持分後坪數打對折)	第一種住宅區	33	2020-09-02 06:06:25.058651	2020-09-02 06:06:25.058651	\N	\N	\N	\N							\N	\N	\N									\N																																				
17	984		100.99	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	14	2020-07-20 08:22:32.914319	2020-09-03 01:07:21.495444	\N	\N	\N	\N							\N	\N										\N																																				
33	1639		113.23	1	24	1公寓(5樓含以下無電梯)	第一種住宅區	25	2020-08-13 16:56:37.070632	2020-09-05 09:30:03.190754	\N	\N	\N	\N							\N	\N	\N									\N																																				
35	2036		86.42	1	3	1公寓(5樓含以下無電梯)	第三種住宅區	26	2020-08-13 17:19:54.238035	2020-09-05 09:40:26.685087	\N	\N	\N	\N							\N	\N	\N									\N																																				
32	1450		97.60	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	24	2020-08-13 16:14:06.1085	2020-09-05 09:47:02.521833	\N	\N	\N	\N							\N	\N	\N									\N																																				
19	6059	https://drive.google.com/drive/mobile/folders/12Xo0A7PsAihvHXFfcQla0nmsZ7O-VJD7	187.06	1	8	2透天厝	第一種住宅區	16	2020-07-20 08:29:31.684504	2020-09-10 02:53:57.277975	\N	\N	\N	\N							\N	\N										\N																																				
43	399		58.64	1	3	2透天厝	第一種住宅區	32	2020-09-02 03:09:11.317648	2020-09-12 00:41:46.214314	\N	\N	\N	\N							\N	\N	\N									\N																																				
12	5574		109.39	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	8	2020-07-20 08:04:52.276498	2020-10-07 09:15:21.331343	\N	\N	\N	\N							\N	\N										\N																																				
41	377	https://drive.google.com/drive/u/1/folders/1NxhO1EB6nIT2Lg1O5r_0S59ZSfpqDq48	91.20	1	2	2透天厝	第一種住宅區	31	2020-08-27 14:01:45.272841	2020-10-15 09:52:04.183733	\N	\N	\N	\N							\N	\N	\N									\N																																				
34	3784		32.20	1	24	12增建(持分後坪數打對折)	第一種住宅區	25	2020-08-13 16:56:37.073456	2020-09-05 09:30:03.206137	\N	\N	\N	\N							\N	\N	\N									\N																																				
46	38		168.84	1	4	10農舍	第一種住宅區	34	2020-09-07 09:09:58.946808	2020-09-07 09:11:44.216647	\N	\N	\N	\N	新生路				52		\N	\N	\N	84.99	83.85						3	\N			38	一層	二層				磚造	磚造				84.99	83.85																			3		
29	3160		76.60	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	22	2020-08-13 15:29:41.513687	2020-11-20 13:11:33.105814	\N	\N	\N	\N							\N	\N	\N									\N																																				
5	661		83.98	1	7	2透天厝	第一種住宅區	3	2020-07-20 06:51:10.248917	2021-03-14 13:01:53.520498	\N	\N	\N	\N							\N	\N										\N																																				
6	1788		70.61	1	7	2透天厝	第一種住宅區	3	2020-07-20 06:51:10.251994	2021-03-14 13:01:53.529081	\N	\N	\N	\N							\N	\N										\N																																				
16	38		168.84	1	4	2透天厝	第一種住宅區	11	2020-07-20 08:16:10.514703	2021-03-14 13:02:20.280125	\N	\N	\N	\N							\N	\N										\N																																				
39	205	https://drive.google.com/drive/u/0/folders/1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	81.94	1	2	2透天厝	第一種住宅區	29	2020-08-21 08:34:15.969125	2021-04-13 16:31:28.075252	\N	\N	\N	\N							\N	\N	\N									\N																																				
40	474		113.91	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	30	2020-08-25 10:34:58.539732	2021-04-13 17:06:26.364897	\N	\N	\N	\N							\N	\N	\N									\N																																				
10	906		97.28	1	3	2透天厝	第一種住宅區	6	2020-07-20 07:55:42.559185	2021-04-13 17:07:50.607781	\N	\N	\N	\N							\N	\N										\N																																				
8	1254		84.37	1	5	6華廈(10層含以下有電梯)	第一種住宅區	5	2020-07-20 07:49:29.128837	2021-04-13 17:11:19.505623	\N	\N	\N	\N							\N	\N										\N																																				
15	1635	https://drive.google.com/drive/folders/19qru68HgIO9M_wTfa5KeQyInRqu7GGr5	49.56	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	10	2020-07-20 08:12:54.696831	2021-04-14 04:38:27.762678	\N	\N	\N	\N							\N	\N										\N																																				
47	399增建		53.12	1	3	12增建(持分後坪數打對折)	第一種住宅區	32	2020-09-12 00:42:56.417578	2020-09-12 00:42:56.417578	\N	\N	\N	\N							\N	\N	\N									\N																																				
48	370		66.98	4	6	2透天厝	第一種住宅區	36	2020-09-14 02:45:56.317252	2020-09-14 02:45:56.317252	\N	\N	\N	\N	瑞興街		102		18		\N	\N	\N	33.49	33.49							\N				一層	二層				磚造	磚造				33.49	33.49																					
49	82		438.03	1	4	2透天厝	農業區	37	2020-09-21 08:06:29.562371	2020-09-21 08:06:29.562371	\N	\N	\N	\N							\N	\N	\N	154.93	141.55	141.55 						\N				一層																																
50	439		102.13	1	3	2透天厝	第一種住宅區	38	2020-09-21 08:32:07.238375	2020-09-21 08:32:07.238375	\N	\N	\N	\N							\N	\N	\N	46.34	46.34	9.45						\N																																				
51	205		110.63	1	7	2透天厝	第一種住宅區	39	2020-09-21 08:42:39.82023	2020-09-21 08:42:39.82023	\N	\N	\N	\N							\N	\N	\N	52.40 	52.40 					屋頂突出物	5.83	\N		110.63																																		
52	164		91.50	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	40	2020-09-22 06:22:21.074786	2020-09-22 06:22:21.074786	\N	\N	\N	\N							\N	\N	\N	40.33	40.33					陽台	10.84	\N		91.5																																		
53	983		144.86	1	3	3店面(店舖)	第一種住宅區	41	2020-09-25 23:35:57.533501	2020-09-25 23:35:57.533501	\N	\N	\N	\N							\N	\N	\N									\N																																				
55	131		97.54	1	4	3店面(店舖)	第一種住宅區	43	2020-09-28 06:43:42.919694	2020-09-28 06:43:42.919694	\N	\N	\N	\N							\N	\N	\N	34.14	51.4					騎樓	12	\N		97.54																																		
56	764 		104.08	1	4	2透天厝	第一種住宅區	44	2020-09-28 06:51:48.324016	2020-09-28 06:51:48.324016	\N	\N	\N	\N							\N	\N	\N									\N																																				
57	316		47.97	1	2	2透天厝	第一種住宅區	45	2020-09-28 07:45:19.783742	2020-09-28 07:45:19.783742	\N	\N	\N	\N							\N	\N	\N									\N																																				
58	141		120.14	1	5	2透天厝	第一種住宅區	46	2020-09-28 08:04:21.472097	2020-09-28 08:04:21.472097	\N	\N	\N	\N							\N	\N	\N									\N																																				
59	354		88.67	1	1	1公寓(5樓含以下無電梯)	第一種住宅區	47	2020-09-28 08:20:01.399104	2020-09-28 08:20:01.399104	\N	\N	\N	\N							\N	\N	\N									\N																																				
61	301頂增		50.12	1	4	12增建(持分後坪數打對折)	第一種住宅區	42	2020-09-30 23:08:53.470705	2020-09-30 23:08:53.470705	\N	\N	\N	\N							\N	\N	\N									\N																																				
62	 880 		102.30	1	2	2透天厝	第一種住宅區	35	2020-10-02 04:19:43.304449	2020-10-02 04:19:43.304449	\N	\N	\N	\N							\N	\N	\N									\N																																				
63	23		194.49	1	4	2透天厝	第一種住宅區	49	2020-10-02 12:09:30.591876	2020-10-02 12:09:30.591876	\N	\N	\N	\N							\N	\N	\N									\N																																				
64	28		98.15	1	10	1公寓(5樓含以下無電梯)	第一種住宅區	50	2020-10-02 12:46:32.949213	2020-10-02 12:46:32.949213	\N	\N	\N	\N							\N	\N	\N									\N																																				
65	346		131.97	1	3	2透天厝	第一種住宅區	51	2020-10-05 03:26:24.49294	2020-10-05 03:26:24.49294	\N	\N	\N	\N							\N	\N	\N									\N																																				
66	2405		89.18	33334	100000	2透天厝	第一種住宅區	52	2020-10-05 03:39:00.905087	2020-10-05 03:39:00.905087	\N	\N	\N	\N							\N	\N	\N									\N																																				
68	 7020		29.41	1	6	12增建(持分後坪數打對折)	第一種住宅區	53	2020-10-05 03:49:27.633946	2020-10-05 03:49:27.633946	\N	\N	\N	\N							\N	\N	\N									\N																																				
69	801		75.19	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	54	2020-10-05 05:54:11.820296	2020-10-05 05:54:11.820296	\N	\N	\N	\N	大武路				51-4		\N	\N	\N									\N				五層										75.19																						
70	 377 		91.20	1	2	2透天厝	第一種住宅區	55	2020-10-05 11:02:07.672822	2020-10-05 11:02:07.672822	\N	\N	\N	\N							\N	\N	\N									\N																																				
71	2147		150.40	1	2	12增建(持分後坪數打對折)	第一種住宅區	55	2020-10-05 11:05:29.359096	2020-10-05 11:05:29.359096	\N	\N	\N	\N							\N	\N	\N									\N																																				
13	10085		95.13	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	8	2020-07-20 08:04:52.279647	2020-10-07 09:15:21.36601	\N	\N	\N	\N							\N	\N										\N																																				
72	2879		75.18	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	56	2020-10-07 09:35:15.764922	2020-10-07 09:35:15.764922	\N	\N	\N	\N							\N	\N	\N									\N				四層					水泥																						陽台	花台		6.58	1.61	
60	518	https://drive.google.com/file/d/1LvPsC0sBA1laxPRTjmWuiNm4wMXmwJMu/view?usp=drivesdk	69.94	14200	100000	1公寓(5樓含以下無電梯)	第一種住宅區	48	2020-09-30 10:47:45.030782	2020-10-13 11:52:46.102994	\N	\N	\N	\N							\N	\N	\N									\N																																				
42	2147	https://drive.google.com/drive/u/1/folders/1NxhO1EB6nIT2Lg1O5r_0S59ZSfpqDq48	150.40	1	2	12增建(持分後坪數打對折)	第一種住宅區	31	2020-08-27 14:01:45.285307	2020-10-15 09:52:04.18675	\N	\N	\N	\N							\N	\N	\N									\N																																				
74	991		58.82	1	15	2透天厝	第一種住宅區	58	2020-10-16 14:58:20.240074	2020-10-16 14:58:20.240074	\N	\N	\N	\N							\N	\N	\N									\N																																				
77	2705		68.62	2	3	2透天厝	第一種住宅區	61	2020-10-30 01:19:16.405841	2020-10-30 01:19:16.405841	\N	\N	\N	\N							\N	\N	\N	34.31	34.31							\N																																				
78	 15107		37.66	2	3	12增建(持分後坪數打對折)	第一種住宅區	61	2020-10-30 01:21:22.313803	2020-10-30 01:21:22.313803	\N	\N	\N	\N							\N	\N	\N									\N			72																																	
80	2887		11043.67	725	100000	0公設	第一種住宅區	62	2020-10-30 02:04:13.238497	2020-10-30 02:04:13.238497	\N	\N	\N	\N							\N	\N	\N									\N																																				
81	3086		192.99	1	3	2透天厝	第一種住宅區	63	2020-10-30 13:44:09.946818	2020-10-30 13:44:09.946818	\N	\N	\N	\N	公園路		487巷		37號		\N	\N	\N									\N			74																																	
82	84		100.49	1	3	2透天厝	第一種住宅區	64	2020-11-05 20:18:47.231052	2020-11-05 20:28:58.861344	\N	\N	\N	\N	福德路				165		\N	\N	\N	100.49								\N			77	一層					磚造					100.49																						
83	256		115.60	1	3	2透天厝	第一種住宅區	64	2020-11-05 20:28:58.866522	2020-11-05 20:28:58.866522	\N	\N	\N	\N	福德路				165		\N	\N	\N		115.6							\N			77	二層					磚造					115.6																						
54	301	https://drive.google.com/file/d/1RyGR0Oshqw9ey34UYihd5mACO1Sz1Klh/view?usp=drivesdk	227.42	1	4	3店面(店舖)	第一種住宅區	42	2020-09-28 06:32:35.525667	2020-11-10 10:56:14.818918	\N	\N	\N	\N							\N	\N	\N	44.14	53.84	53.84		12.6	45.34	屋頂突出物	3.72	\N																																				
84	32		74.65	1	4	2透天厝	第一種住宅區	65	2020-11-12 14:08:04.309095	2020-11-12 14:08:04.309095	\N	\N	\N	\N							\N	\N	\N									\N																																				
79	2762	https://drive.google.com/file/d/1VlzAlXNPW0WyWPsjA0dE9PTiEI3boCuD/view?usp=sharing	127.57	1	6	5住宅大樓(11層含以上有電梯)	第一種住宅區	62	2020-10-30 01:46:06.643778	2020-11-20 10:04:17.702797	\N	\N	\N	\N							\N	\N	\N									\N																																				
76	 2375 	https://drive.google.com/file/d/1f7hjwFRcYl7lh7LXy_6CSe_hrQgujgUw/view?usp=sharing	79.28	1	3	2透天厝	第一種住宅區	60	2020-10-23 14:16:51.857403	2020-11-20 10:10:03.271119	\N	\N	\N	\N							\N	\N	\N	36.96	42.32							\N																																				
73	602	https://drive.google.com/file/d/1Ec0yHYLRxRt3IexhYfF-sDgX8V8L8WNM/view?usp=sharing	48.24	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	57	2020-10-14 14:28:31.665817	2020-12-19 02:23:33.728199	\N	\N	\N	\N							\N	\N	\N									\N																																				
156	162		85.26	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	95	2021-01-18 14:48:26.158684	2021-01-18 14:48:26.158684	\N	\N	\N	\N							\N	\N	\N									\N																																				
85	36		121.60	1	2	2透天厝	第一種住宅區	66	2020-11-13 05:02:28.759649	2020-11-13 05:12:06.513313	\N	\N	\N	\N	南溝路	二			71		\N	\N	\N	48	60.8			12.8				\N			79	一層	二層				磚造	磚造	磚造			48	60.8	12.8																				
86	1221		243.20	1	2	0公設	第一種住宅區	66	2020-11-13 05:12:06.516103	2020-11-13 05:12:06.516103	\N	\N	\N	\N	南溝路	二			71		\N	\N	\N									\N			79	一層	二層	三層	四層		磚造	磚造	磚造	磚造		36.8	36.8	84.8	84.8																			
87	775		10000.00	1	250	0公設	第一種住宅區	12	2020-11-20 06:11:06.841851	2020-11-20 06:11:06.841851	\N	\N	\N	\N							\N	\N	\N									\N																																				
67	91	https://drive.google.com/file/d/1_yFumddMlP6plZHBxTRD7NuugLeIq9hQ/view?usp=sharing	69.30	1	6	2透天厝	第一種住宅區	53	2020-10-05 03:47:08.798796	2020-11-20 08:33:58.00905	\N	\N	\N	\N							\N	\N	\N									\N																																				
88	436		44.44	1	6	2透天厝	第一種住宅區	67	2020-11-20 11:16:06.685536	2020-11-20 11:16:06.685536	\N	\N	\N	\N							\N	\N	\N									\N																																				
89	17		204.96	1	5	2透天厝	第一種住宅區	68	2020-11-20 13:04:25.343456	2020-11-20 13:04:25.343456	\N	\N	\N	\N							\N	\N	\N									\N																																				
27	1506		88.90	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	20	2020-08-13 14:53:40.451133	2020-11-20 13:07:48.474018	\N	\N	\N	\N							\N	\N	\N									\N																																				
30	10083		58.10	1	6	12增建(持分後坪數打對折)	第一種住宅區	22	2020-08-13 15:35:36.064573	2020-11-20 13:11:33.109214	\N	\N	\N	\N							\N	\N	\N									\N																																				
90	1256		36.40	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	69	2020-11-21 09:33:13.811912	2020-11-21 09:33:13.811912	\N	\N	\N	\N							\N	\N	\N									\N																																				
91	3868		111.55	1	2	12增建(持分後坪數打對折)	第一種住宅區	69	2020-11-21 09:40:07.328449	2020-11-21 09:40:07.328449	\N	\N	\N	\N							\N	\N	\N									\N																																				
92	170		102.60	1	5	2透天厝	第一種住宅區	70	2020-11-23 13:53:31.104053	2020-11-23 13:53:31.104053	\N	\N	\N	\N							\N	\N	\N									\N																																				
93	4612		111.21	1	2	3店面(店舖)	第一種住宅區	71	2020-11-23 14:13:29.263178	2020-11-23 14:13:29.263178	\N	\N	\N	\N							\N	\N	\N									\N			87																																	
94	5512		151.57	1	2	3店面(店舖)	第一種住宅區	71	2020-11-23 14:13:29.281319	2020-11-23 14:13:29.281319	\N	\N	\N	\N							\N	\N	\N									\N			87																																	
95	242 		89.32	1	3	2透天厝	第一種住宅區	72	2020-11-24 13:42:17.655218	2020-11-24 13:42:17.655218	\N	\N	\N	\N							\N	\N	\N									\N																																				
96	276		49.54	1	2	0公設	第一種住宅區	72	2020-11-24 13:44:05.535097	2020-11-24 13:44:05.535097	\N	\N	\N	\N							\N	\N	\N									\N																																				
97	1550		7.52	1	3	12增建(持分後坪數打對折)	第一種住宅區	72	2020-11-24 13:46:04.188481	2020-11-24 13:46:04.188481	\N	\N	\N	\N							\N	\N	\N									\N																																				
98	769		72.10	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	73	2020-11-25 00:35:45.702285	2020-11-25 00:35:45.702285	\N	\N	\N	\N							\N	\N	\N									\N																																				
99	76		88.28	1	2	2透天厝	第一種住宅區	74	2020-11-25 00:41:26.537243	2020-11-25 00:41:26.537243	\N	\N	\N	\N							\N	\N	\N									\N																																				
100	338		85.88	1	4	2透天厝	第一種住宅區	75	2020-11-25 00:47:58.111224	2020-11-25 00:47:58.111224	\N	\N	\N	\N							\N	\N	\N									\N																																				
101	52		107.70	2	5	2透天厝	第一種住宅區	76	2020-11-25 14:55:52.870712	2020-11-25 14:55:52.870712	\N	\N	\N	\N							\N	\N	\N									\N																																				
102	305		97.71	25000	100000	2透天厝	第一種住宅區	77	2020-11-27 05:57:29.825777	2020-11-27 05:57:29.825777	\N	\N	\N	\N							\N	\N	\N									\N																																				
103	29 		160.59	1	2	2透天厝	第一種住宅區	78	2020-11-27 11:46:39.027504	2020-11-27 11:46:39.027504	\N	\N	\N	\N							\N	\N	\N									\N																																				
106	000		36.00	1	6	12增建(持分後坪數打對折)	第一種住宅區	73	2020-11-27 23:48:40.720377	2020-11-27 23:48:40.720377	\N	\N	\N	\N							\N	\N	\N									\N																																				
107	000		42.32	1	3	12增建(持分後坪數打對折)	第一種住宅區	60	2020-11-28 00:06:48.712907	2020-11-28 00:06:48.712907	\N	\N	\N	\N							\N	\N	\N									\N																																				
108	 809		64.16	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	80	2020-12-01 05:19:27.865014	2020-12-01 05:19:27.865014	\N	\N	\N	\N							\N	\N	\N									\N																																				
109	4220		71.75	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	81	2020-12-01 11:23:12.751627	2020-12-01 11:23:12.751627	\N	\N	\N	\N							\N	\N	\N									\N																																				
111	693		72.00	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	83	2020-12-02 15:12:00.058526	2020-12-02 15:12:00.058526	\N	\N	\N	\N							\N	\N	\N									\N																																				
112	266		38.98	1	14	1公寓(5樓含以下無電梯)	第三種商業區	84	2020-12-02 15:41:15.21759	2020-12-02 15:41:15.21759	\N	\N	\N	\N							\N	\N	\N									\N																																				
113	267		38.98	1	14	1公寓(5樓含以下無電梯)	第三種商業區	84	2020-12-02 15:41:15.233467	2020-12-02 15:41:15.233467	\N	\N	\N	\N							\N	\N	\N									\N																																				
114	429 		41.25	1	14	1公寓(5樓含以下無電梯)	第三種商業區	84	2020-12-02 15:41:15.23666	2020-12-02 15:41:15.23666	\N	\N	\N	\N							\N	\N	\N									\N																																				
116	3197		46.90	1	14	12增建(持分後坪數打對折)	第三種商業區	84	2020-12-02 15:41:15.242849	2020-12-02 15:43:00.845474	\N	\N	\N	\N							\N	\N	\N									\N																																				
117	3198		5.34	1	14	12增建(持分後坪數打對折)	第三種商業區	84	2020-12-02 15:43:00.84782	2020-12-02 15:43:00.84782	\N	\N	\N	\N							\N	\N	\N									\N																																				
115	 430		38.98	1	14	1公寓(5樓含以下無電梯)	第三種商業區	84	2020-12-02 15:41:15.239736	2020-12-02 15:43:56.543987	\N	\N	\N	\N							\N	\N	\N									\N																																				
118	3199		47.26	1	14	12增建(持分後坪數打對折)	第三種商業區	84	2020-12-02 15:43:00.850773	2020-12-02 15:43:56.56076	\N	\N	\N	\N							\N	\N	\N									\N																																				
119	1447		96.64	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	85	2020-12-06 08:45:59.585443	2020-12-06 08:52:46.510396	\N	\N	\N	\N	樹德路		2			2	\N	\N	\N	96.64						陽台	8.47	\N			108	四層					水泥					96.64					1451				84.63				1/10				陽台			8.47		
120	3523		88.32	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	86	2020-12-06 09:00:37.51335	2020-12-06 09:04:52.472543	\N	\N	\N	\N	建國路	一	309		2-4		\N	\N	\N	88.32						陽台	13.49	\N			109	五層					水泥					88.32					3547				62.03				1/10				陽台			13.49		
121	121		152.84	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	87	2020-12-07 11:17:09.828758	2020-12-07 11:17:09.828758	\N	\N	\N	\N							\N	\N	\N									\N																																				
122	  233 		77.00	1	9	1公寓(5樓含以下無電梯)	第一種住宅區	88	2020-12-07 15:41:45.873235	2020-12-07 15:41:45.873235	\N	\N	\N	\N							\N	\N	\N									\N																																				
110	6113	https://drive.google.com/file/d/1ml8ePLI8BBp5NSwH1iA7fL3K7nxISaEg/view?usp=sharing	108.14	1	8	1公寓(5樓含以下無電梯)	第一種住宅區	82	2020-12-01 11:53:01.397527	2021-01-14 08:54:47.305394	\N	\N	\N	\N							\N	\N	\N									\N																																				
123	01511-000		61.22	1	9	12增建(持分後坪數打對折)	第一種住宅區	88	2020-12-07 15:41:45.876847	2020-12-07 15:43:35.690347	\N	\N	\N	\N							\N	\N	\N									\N																																				
124	11		50.70	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	89	2020-12-07 16:37:56.533642	2020-12-07 16:37:56.533642	\N	\N	\N	\N							\N	\N	\N									\N																																				
125	11		82.04	1	21	2透天厝	第一種住宅區	90	2020-12-10 23:10:46.310775	2020-12-10 23:10:46.310775	\N	\N	\N	\N							\N	\N	\N									\N																																				
127	340		83.50	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	92	2020-12-15 14:56:01.472738	2020-12-15 14:56:01.472738	\N	\N	\N	\N							\N	\N	\N									\N																																				
128	854		87.14	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	93	2020-12-17 12:42:38.702472	2020-12-17 12:42:38.702472	\N	\N	\N	\N							\N	\N	\N									\N																																				
129	手動增建		45.27	1	5	12增建(持分後坪數打對折)	第一種住宅區	59	2020-12-19 00:34:40.134327	2020-12-19 00:34:40.134327	\N	\N	\N	\N							\N	\N	\N									\N																																				
130	手動增建		32.32	1	4	12增建(持分後坪數打對折)	第一種住宅區	91	2020-12-19 01:00:08.459264	2020-12-19 01:00:08.459264	\N	\N	\N	\N							\N	\N	\N									\N																																				
126	393	https://drive.google.com/file/d/1F_3hIs6_jbQW45-ASrrR2Sdeo4sWwaac/view?usp=sharing	133.48	1	4	2透天厝	第一種住宅區	91	2020-12-10 23:18:53.92373	2020-12-19 02:15:59.724515	\N	\N	\N	\N							\N	\N	\N									\N																																				
104	827	https://drive.google.com/file/d/1mUfJ-1HDB2LgMfsOyH1XvtykZOrTy4Oj/view?usp=sharing	113.60	1	4	2透天厝	第一種住宅區	79	2020-11-27 14:02:27.953997	2020-12-19 02:18:06.600533	\N	\N	\N	\N							\N	\N	\N									\N																																				
105	5937	https://drive.google.com/file/d/1mUfJ-1HDB2LgMfsOyH1XvtykZOrTy4Oj/view?usp=sharing	65.49	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	79	2020-11-27 14:02:27.972229	2020-12-19 02:18:06.607986	\N	\N	\N	\N							\N	\N	\N									\N																																				
75	3568	https://drive.google.com/file/d/1rXL5nTo5JzaEdfXavX_iEI6oWs42CRi-/view?usp=sharing	131.72	1	5	2透天厝	第一種住宅區	59	2020-10-21 10:51:34.983453	2020-12-19 02:20:33.404822	\N	\N	\N	\N							\N	\N	\N									\N																																				
132	218-4		74.60	1	2	12增建(持分後坪數打對折)	第一種住宅區	99	2020-12-31 03:01:20.081486	2020-12-31 03:21:09.14705	\N	\N	\N	\N							\N	\N	\N									\N																																				
131	218		44.24	1	2	2透天厝	第一種住宅區	99	2020-12-31 03:00:23.06681	2020-12-31 03:21:59.106862	\N	\N	\N	\N							\N	\N	\N									\N																																				
145	54		115.20	1	4	2透天厝	第一種住宅區	107	2021-01-13 01:36:30.341389	2021-01-13 01:36:30.341389	\N	\N	\N	\N	山海路				60之4		\N	\N	\N	44.1	57.6					屋頂突出物	3.41	\N			137	一層	二層				磚造	磚造				44.1	57,6																屋頂突出物			3.41		
134	788		71.68	1	7	2透天厝	第一種住宅區	101	2021-01-05 09:56:28.667704	2021-01-05 09:58:19.134697	\N	\N	\N	\N	右昌忠義八巷				33		\N	\N	\N	35.84	35.84							\N			122	一層	二層				磚造	磚造				35.84	35.84																					
135	2435		182.42	1	7	2透天厝	第一種住宅區	101	2021-01-05 09:56:28.67171	2021-01-05 09:58:19.14763	\N	\N	\N	\N	右昌忠義八巷				33		\N	\N	\N	23.32	13.53	59.16	59.16			屋頂突出物	4.19	\N		27.25	122	一層	二層	三層	四層		磚造	磚造	磚造	磚造		23.32	13.53	59.16	59.16														屋頂突出物			4.19	23.06	
136	50716		91.75	2	5	1公寓(5樓含以下無電梯)	第一種住宅區	98	2021-01-08 07:56:11.839982	2021-01-08 07:56:11.839982	\N	\N	\N	\N							\N	\N	\N									\N																																				
137	頂樓未登記部分		72.94	2	5	12增建(持分後坪數打對折)	第一種住宅區	98	2021-01-08 07:56:11.843655	2021-01-08 08:03:01.9854	\N	\N	\N	\N							\N	\N	\N									\N																																				
138	 185 		77.00	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	94	2021-01-08 08:22:15.11959	2021-01-08 08:22:15.11959	\N	\N	\N	\N							\N	\N	\N									\N																																				
139	頂樓未登記部分 		57.12	1	3	0公設	第一種住宅區	94	2021-01-08 08:29:11.796514	2021-01-08 08:29:11.796514	\N	\N	\N	\N							\N	\N	\N									\N																																				
140	162		85.26	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	104	2021-01-12 14:50:38.292754	2021-01-12 14:50:38.292754	\N	\N	\N	\N							\N	\N	\N									\N																																				
141	 928		85.26	1	6	12增建(持分後坪數打對折)	第一種住宅區	104	2021-01-12 14:51:32.228744	2021-01-12 14:51:32.228744	\N	\N	\N	\N							\N	\N	\N									\N																																				
142	598		85.38	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	105	2021-01-12 15:12:34.790229	2021-01-12 15:12:34.790229	\N	\N	\N	\N							\N	\N	\N									\N																																				
143	1430		18.63	1	5	12增建(持分後坪數打對折)	第一種住宅區	105	2021-01-12 15:13:43.706988	2021-01-12 15:13:43.706988	\N	\N	\N	\N							\N	\N	\N									\N																																				
144	 1769		116.80	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	106	2021-01-12 16:40:14.439554	2021-01-12 16:40:14.439554	\N	\N	\N	\N							\N	\N	\N									\N																																				
146	783		91.26	2	6	2透天厝	第一種住宅區	108	2021-01-15 14:23:55.39807	2021-01-15 14:26:57.481783	\N	\N	\N	\N	蓬萊				163		\N	\N	\N	47.25	44.01							\N			138	一層	二層				水泥	水泥				47.25	44.01																					
147	982		111.61	2	6	2透天厝	第一種住宅區	108	2021-01-15 14:23:55.411303	2021-01-15 14:26:57.498026	\N	\N	\N	\N	蓬萊				 163		\N	\N	\N	23.06	31.25	56.70						\N			138	一層	二層	三層			水泥	水泥	水泥			23.06	31.25	56.70																				
148	57		89.00	1	5	3店面(店舖)	第一種住宅區	109	2021-01-15 14:37:58.829509	2021-01-15 14:38:16.00427	\N	\N	\N	\N	和誠街		96		8		\N	\N	\N	36.27	52.73							\N			139	一層	二層				磚造	磚造				36.27	52.73																					
149	1512		224.08	1	5	3店面(店舖)	第一種住宅區	109	2021-01-15 14:37:58.832947	2021-01-15 14:38:16.007514	\N	\N	\N	\N	和誠街		96		8		\N	\N	\N	18.86	34.66	86.80	83.76					\N			139	一層	二層	三層	四層							18.86	34.66	86.80	83.76														陽台	雨遮		6	60.75	
150	429		104.74	1	4	2透天厝	第一種住宅區	110	2021-01-18 08:45:37.493542	2021-01-18 08:46:45.023856	\N	\N	\N	\N	長榮街		14		12		\N	\N	\N	38.22	52.37					騎樓	14.15	\N			141	一層	二層				磚造	磚造				38.22	52.37																騎樓			14.15		
151	暫739		66.20	1	4	2透天厝	第一種住宅區	110	2021-01-18 08:45:37.506214	2021-01-18 08:46:45.026897	\N	\N	\N	\N	長榮街		14		12		\N	\N	\N	13.84	52.36							\N			141	一層	二層									13.84	52.36																					
152	暫158		168.09	50000	100000	2透天厝	第一種住宅區	111	2021-01-18 08:52:38.724668	2021-01-18 08:55:08.805742	\N	\N	\N	\N	中正路				30		\N	\N	\N	56.03	56.03	56.03						\N			142	一層	二層	三層			磚造	磚造	鐵皮屋			56.03	56.03	56.03																				
154	262		69.42	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	96	2021-01-18 14:18:06.006483	2021-01-18 14:18:06.006483	\N	\N	\N	\N							\N	\N	\N									\N																																				
155	8065		65.00	1	5	12增建(持分後坪數打對折)	第一種住宅區	96	2021-01-18 14:31:45.226435	2021-01-18 14:31:45.226435	\N	\N	\N	\N							\N	\N	\N									\N																																				
153	2344		101.76	1	4	2透天厝	第一種住宅區	112	2021-01-18 11:59:56.692612	2021-05-08 00:59:58.124574	\N	\N	\N	\N							\N	\N	\N									\N																																				
157	928		85.26	1	6	12增建(持分後坪數打對折)	第一種住宅區	95	2021-01-18 14:49:24.007768	2021-01-18 14:49:24.007768	\N	\N	\N	\N							\N	\N	\N									\N																																				
158	222		92.56	1	2	2透天厝	第一種住宅區	113	2021-01-27 21:31:24.936127	2021-01-27 21:31:24.936127	\N	\N	\N	\N							\N	\N	\N									\N																																				
181	816		95.10	1	4	6華廈(10層含以下有電梯)	第一種住宅區	133	2021-03-19 19:35:46.301308	2021-03-19 19:36:06.838115	\N	\N	\N	\N	中平九街				91	9	\N	\N	\N	95.4						陽台	9.55	\N		95.1	180						水泥					95.1																	陽台			9.55		
160	1394		169.52	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	116	2021-02-09 11:14:41.370526	2021-02-09 11:14:41.370526	\N	\N	\N	\N							\N	\N	\N									\N																																				
161	1000		88.64	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	114	2021-02-09 11:55:22.381452	2021-02-09 11:55:22.381452	\N	\N	\N	\N							\N	\N	\N									\N																																				
162	10446		68.85	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	117	2021-02-19 14:43:42.268115	2021-02-19 14:43:42.268115	\N	\N	\N	\N	九如一路				883	6之4	\N	\N	\N									\N									水泥					68.85																						
163	75		78.88	1	2	2透天厝	第一種住宅區	118	2021-02-19 14:51:43.288341	2021-02-19 14:51:43.288341	\N	\N	\N	\N	金潭		279	20	3		\N	\N	\N	39.44	39.44							\N				一層	二層				磚造	磚造				39.44	39.44																					
182	818		1694.10	94	10000	6華廈(10層含以下有電梯)	第一種住宅區	133	2021-03-19 19:35:46.303862	2021-03-19 19:36:06.841869	\N	\N	\N	\N	中平九街				91		\N	\N	\N									\N		1694.1												1694.1																						
164	304		\N	1	2	2透天厝	第一種住宅區	118	2021-02-19 14:51:43.296166	2021-02-19 14:53:06.623807	\N	\N	\N	\N	金潭		279	20	3		\N	\N	\N	25.6								\N		25.6	162	一層										25.6																						
166	1522		220.56	1	3	2透天厝	第一種住宅區	120	2021-03-03 00:50:30.028723	2021-03-03 00:50:30.028723	\N	\N	\N	\N							\N	\N	\N									\N																																				
167	1523		214.25	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	120	2021-03-03 00:50:30.031323	2021-03-03 00:50:30.031323	\N	\N	\N	\N							\N	\N	\N									\N																																				
170	474 		57.27	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	123	2021-03-05 15:16:12.667665	2021-03-05 15:16:12.667665	\N	\N	\N	\N							\N	\N	\N									\N																																				
171	6576		111.91	1	7	1公寓(5樓含以下無電梯)	第一種住宅區	124	2021-03-05 15:51:18.48769	2021-03-05 15:51:18.48769	\N	\N	\N	\N							\N	\N	\N									\N																																				
183	3700		118.56	1	2	2透天厝	第一種住宅區	128	2021-03-26 09:20:36.021673	2021-03-26 09:20:36.021673	\N	\N	\N	\N							\N	\N	\N									\N																																				
168	31	https://drive.google.com/file/d/1q4A2u67BAesmiLWe1diRoFfoAXuf3D72/view?usp=sharing	252.13	1	3	2透天厝	第一種住宅區	121	2021-03-03 01:12:29.344443	2021-03-08 00:19:23.512113	\N	\N	\N	\N							\N	\N	\N									\N																																				
159	479	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	203.54	1	2	2透天厝	第一種住宅區	115	2021-02-07 14:49:01.298722	2021-03-13 03:50:18.437404	\N	\N	\N	\N							\N	\N	\N									\N																																				
169	350	https://drive.google.com/file/d/1MrKIW3hKgYmBnojOwkzLCCSHO5Gg0wMe/view?usp=sharing	107.00	1	3	2透天厝	第一種住宅區	122	2021-03-05 14:56:20.530095	2021-03-13 04:13:16.574188	\N	\N	\N	\N							\N	\N	\N									\N																																				
172	737		104.25	40	100	2透天厝	第一種住宅區	125	2021-03-18 09:48:10.420709	2021-03-18 09:48:25.874106	\N	\N	\N	\N	安樂三街		76		8		\N	\N	\N	37.7	53.17					騎樓	13.38	\N		104.25	170	一層	二層				水泥	水泥				37.7	53.17																騎樓			13.38		
173	1539		142.18	40	100	2透天厝	第一種住宅區	125	2021-03-18 09:48:10.429559	2021-03-18 09:48:25.876828	\N	\N	\N	\N	安樂三街		76		8		\N	\N	\N									\N		142.18	170											142.18																						
174	 1110		158.23	2	3	3店面(店舖)	第一種住宅區	126	2021-03-18 13:58:11.835068	2021-03-18 13:58:11.835068	\N	\N	\N	\N							\N	\N	\N									\N																																				
175	273		48.64	1	5	2透天厝	第一種住宅區	127	2021-03-18 14:11:48.930193	2021-03-18 14:11:48.930193	\N	\N	\N	\N							\N	\N	\N									\N																																				
176	2878		82.08	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	129	2021-03-18 14:50:14.067692	2021-03-18 14:50:14.067692	\N	\N	\N	\N							\N	\N	\N									\N																																				
178	3		93.91	1	3	2透天厝	第一種住宅區	130	2021-03-19 14:33:57.581366	2021-03-19 14:33:57.581366	\N	\N	\N	\N							\N	\N	\N									\N																																				
180	953		115.19	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	132	2021-03-19 15:14:50.574957	2021-03-19 15:14:50.574957	\N	\N	\N	\N							\N	\N	\N									\N																																				
186	752		100.15	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	97	2021-03-26 13:56:40.761734	2021-03-26 13:56:40.761734	\N	\N	\N	\N							\N	\N	\N									\N																																				
187	30517		71.49	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	137	2021-03-26 14:39:44.606782	2021-03-26 14:39:44.606782	\N	\N	\N	\N							\N	\N	\N									\N																																				
188	未登記部分		60.75	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	137	2021-03-26 14:39:44.615619	2021-03-26 14:39:44.615619	\N	\N	\N	\N							\N	\N	\N									\N																																				
189	4359		96.68	1	2	5住宅大樓(11層含以上有電梯)	第一種住宅區	138	2021-03-26 14:50:03.391183	2021-03-26 14:50:03.391183	\N	\N	\N	\N							\N	\N	\N									\N																																				
190	612		316.68	1	8	1公寓(5樓含以下無電梯)	第一種住宅區	139	2021-03-26 14:52:56.144412	2021-03-26 14:52:56.144412	\N	\N	\N	\N							\N	\N	\N									\N																																				
191	未登記部分		136.07	1	8	1公寓(5樓含以下無電梯)	第一種住宅區	139	2021-03-26 14:52:56.149465	2021-03-26 14:52:56.149465	\N	\N	\N	\N							\N	\N	\N									\N																																				
184	4686	https://drive.google.com/drive/folders/1K6kQL__YlnjX5yfw4lH0x3ew_Hmnh7bY?usp=sharing	75.67	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	135	2021-03-26 10:06:28.780737	2021-03-28 12:22:39.914237	\N	\N	\N	\N							\N	\N	\N									\N																																				
192	2878		82.08	1	2	1公寓(5樓含以下無電梯)	第一種住宅區	140	2021-03-28 13:18:33.809004	2021-03-28 13:18:33.809004	\N	\N	\N	\N							\N	\N	\N									\N																																				
193	2930(待修)		21.00	1	1	0公設	第一種住宅區	140	2021-03-28 13:19:40.998946	2021-03-28 13:23:40.06403	\N	\N	\N	\N							\N	\N	\N									\N																																				
194	30517		71.49	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	142	2021-04-13 14:56:44.616033	2021-04-13 14:56:44.616033	\N	\N	\N	\N							\N	\N	\N									\N																																				
195	未登記部分		60.75	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	142	2021-04-13 14:56:44.622319	2021-04-13 14:56:44.622319	\N	\N	\N	\N							\N	\N	\N									\N																																				
9	1287		1231.00	1	42	0公設	第一種住宅區	5	2020-07-20 07:49:29.131071	2021-04-13 17:11:19.512896	\N	\N	\N	\N							\N	\N										\N																																				
185	384（ 未辦保存登記）		248.60	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	136	2021-03-26 10:21:51.321103	2021-05-08 06:31:22.479235	\N	\N	\N	\N							\N	\N	\N									\N																																				
179	154		124.60	1	4	2透天厝	第一種住宅區	131	2021-03-19 14:55:01.155353	2021-06-14 02:08:06.575922	\N	\N	\N	\N							\N	\N	\N									\N																																				
196	4980		78.00	1	6	1公寓(5樓含以下無電梯)	第一種住宅區	143	2021-04-18 13:56:42.482867	2021-04-18 13:56:42.482867	\N	\N	\N	\N							\N	\N	\N									\N																																				
197	4220		71.75	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	144	2021-04-18 15:02:03.757294	2021-04-18 15:02:03.757294	\N	\N	\N	\N							\N	\N	\N									\N																																				
198	4359		33.00	1	1	0公設	第一種住宅區	138	2021-04-21 01:34:04.747632	2021-04-21 01:35:07.346262	\N	\N	\N	\N							\N	\N	\N									\N																																				
199	40598 		123.71	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	145	2021-04-21 15:04:48.982893	2021-04-21 15:04:48.982893	\N	\N	\N	\N							\N	\N	\N									\N																																				
200	154		124.60	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	146	2021-04-22 14:41:20.691259	2021-04-22 14:41:20.691259	\N	\N	\N	\N							\N	\N	\N									\N																																				
201	889		44.09	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	147	2021-04-22 15:54:06.954178	2021-04-22 15:54:06.954178	\N	\N	\N	\N							\N	\N	\N									\N																																				
202	907		535.41	168	10000	0公設	第一種住宅區	147	2021-04-22 15:55:41.284588	2021-04-22 15:55:41.284588	\N	\N	\N	\N							\N	\N	\N									\N																																				
205	486		62.11	1	5	12增建(持分後坪數打對折)	第一種住宅區	149	2021-04-28 03:47:01.914318	2021-04-28 03:47:01.914318	\N	\N	\N	\N							\N	\N	\N									\N																																				
206	270		99.16	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	150	2021-04-30 15:31:59.065744	2021-04-30 15:31:59.065744	\N	\N	\N	\N							\N	\N	\N									\N																																				
133	184	https://drive.google.com/file/d/1NCuCcZRuucFjXFOkHLlKOQqz8PPWrIov/view?usp=sharing	86.40	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	100	2021-01-01 09:59:40.15626	2021-05-01 03:15:38.297779	\N	\N	\N	\N							\N	\N	\N									\N																																				
207	844		103.29	2	3	2透天厝	第一種住宅區	151	2021-05-02 13:12:20.151326	2021-05-02 13:12:20.151326	\N	\N	\N	\N	中芸二路		2		35		\N	\N	\N	103.29								\N				一層					磚造					103.29																						
208	1188		108.30	2	3	2透天厝	第一種住宅區	151	2021-05-02 13:12:20.153631	2021-05-02 13:12:20.153631	\N	\N	\N	\N	中芸二路		2		35		\N	\N	\N	24.12	84.18					雨遮	9.1	\N		108.3		一層	二層									24.12	84.18																雨遮			9.1		
165	2283	https://drive.google.com/file/d/1EqekJab5UGzEUoiJ0u5hu5hnOWH7JxDx/view?usp=drivesdk	112.92	1	4	1公寓(5樓含以下無電梯)	第一種住宅區	119	2021-02-27 00:24:44.224396	2021-05-04 11:14:01.103828	\N	\N	\N	\N							\N	\N	\N									\N																																				
209	592		126.09	1	24	1公寓(5樓含以下無電梯)	第一種住宅區	152	2021-05-04 14:17:00.345498	2021-05-04 14:17:00.345498	\N	\N	\N	\N							\N	\N	\N									\N																																				
210	2161		125.30	1	24	12增建(持分後坪數打對折)	第一種住宅區	152	2021-05-04 14:19:30.913057	2021-05-04 14:19:30.913057	\N	\N	\N	\N							\N	\N	\N									\N																																				
211	5680		128.64	1	4	5住宅大樓(11層含以上有電梯)	第一種住宅區	153	2021-05-04 14:44:03.154113	2021-05-04 14:44:03.154113	\N	\N	\N	\N							\N	\N	\N									\N																																				
212	6062		33891.21	211	100000	0公設	第一種住宅區	153	2021-05-04 14:45:34.736481	2021-05-04 14:45:34.736481	\N	\N	\N	\N							\N	\N	\N									\N																																				
213	8136		216.26	1	3	2透天厝	第一種住宅區	154	2021-05-04 16:49:20.750401	2021-05-04 16:49:20.750401	\N	\N	\N	\N	保泰路				255-1		\N	\N	\N	34.69	49.88	49.88	49.88	16.74		騎樓	15.19	\N	地下層	216.26		一層	二層	三層	四層		水泥	水泥	水泥	水泥	水泥	34.69	49.88	49.88	49.88	16.74													騎樓			15.19		
214	8898		140.79	1	3	2透天厝	第一種住宅區	154	2021-05-04 16:49:20.757818	2021-05-04 16:49:20.757818	\N	\N	\N	\N	保泰路				255-1		\N	\N	\N	12.36	12.36	12.36	12.36	47.72	43.63	陽台	33.12	\N	六樓			一層	二層	三層	四層	五層						12.36	12.36	12.36	12.36	47.72													陽台			33.12		
216	1405		2014.72	166	10000	0公設	第一種住宅區	155	2021-05-12 13:52:16.791724	2021-05-12 13:52:16.791724	\N	\N	\N	\N							\N	\N	\N									\N																																				
215	1373		82.66	1	2	6華廈(10層含以下有電梯)	第一種住宅區	155	2021-05-12 13:51:18.865311	2021-05-12 13:53:09.317567	\N	\N	\N	\N							\N	\N	\N									\N																																				
217	454		263.37	1	5	2透天厝	第一種住宅區	162	2021-05-20 14:40:40.47109	2021-05-20 14:40:40.47109	\N	\N	\N	\N							\N	\N	\N									\N																																				
218	3467		93.48	1	3	2透天厝	第一種住宅區	161	2021-05-20 14:47:09.389777	2021-05-20 14:47:09.389777	\N	\N	\N	\N							\N	\N	\N									\N																																				
219	13815		86.13	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	160	2021-05-20 14:59:10.865803	2021-05-20 14:59:10.865803	\N	\N	\N	\N							\N	\N	\N									\N																																				
220	1373		82.66	1	2	6華廈(10層含以下有電梯)	第一種住宅區	163	2021-06-03 09:27:08.316667	2021-06-03 09:27:08.316667	\N	\N	\N	\N							\N	\N	\N									\N																																				
221	1405	https://drive.google.com/drive/folders/1ih2wHD7x9KZPV66Y4uDi_CAEGM3BX_2u?usp=sharing	2014.72	166	10000	0公設	第一種住宅區	163	2021-06-03 09:33:19.19748	2021-06-05 03:42:04.924791	\N	\N	\N	\N							\N	\N	\N									\N																																				
203	20	https://drive.google.com/drive/folders/1Rc8obK800UwtGjazq8scCwuE2F7jAXvx?usp=sharing	126.76	1	4	2透天厝	第一種住宅區	148	2021-04-28 03:37:32.053266	2021-06-05 03:44:11.322757	\N	\N	\N	\N							\N	\N	\N									\N																																				
204	24	https://drive.google.com/drive/folders/11ActuwABuQPo5XyXL7wnKy07NNjQsckD?usp=sharing	83.36	1	5	2透天厝	第一種住宅區	149	2021-04-28 03:46:14.27252	2021-06-05 03:45:35.858465	\N	\N	\N	\N							\N	\N	\N									\N																																				
222	增建		33.00	1	4	12增建(持分後坪數打對折)	第一種住宅區	131	2021-06-14 02:11:13.421401	2021-06-14 02:11:13.421401	\N	\N	\N	\N							\N	\N	\N									\N																																				
223	1875		91.29	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	166	2021-06-19 14:51:04.818999	2021-06-19 14:51:04.818999	\N	\N	\N	\N							\N	\N	\N									\N																																				
224	3606(未保存登記)		121.70	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	166	2021-06-19 14:51:04.822899	2021-06-19 14:51:04.822899	\N	\N	\N	\N							\N	\N	\N									\N																																				
225	1349		139.55	1	5	1公寓(5樓含以下無電梯)	第一種住宅區	167	2021-06-25 11:29:11.848536	2021-06-25 11:29:11.848536	\N	\N	\N	\N							\N	\N	\N									\N																																				
226	906		97.28	1	3	1公寓(5樓含以下無電梯)	第一種住宅區	168	2021-06-25 11:50:49.75136	2021-06-25 11:50:49.75136	\N	\N	\N	\N							\N	\N	\N									\N																																				
227	增建		45.00	1	5	12增建(持分後坪數打對折)	第一種住宅區	167	2021-06-26 00:36:09.368367	2021-06-26 00:36:09.368367	\N	\N	\N	\N							\N	\N	\N									\N																																				
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
22	385		134.74	1	25	20	2020-08-13 14:53:40.442566	2020-08-13 14:53:40.442566					
23	235-18		104.00	1	15	21	2020-08-13 15:15:54.14034	2020-08-13 15:15:54.14034					
24	288-0006		14.00	1	30	22	2020-08-13 15:29:41.504648	2020-08-13 15:29:41.504648					
25	292-14		77.00	1	30	22	2020-08-13 15:29:41.506701	2020-08-13 15:29:41.506701					
26	131-3		71.00	1	7	23	2020-08-13 15:43:35.817106	2020-08-13 15:43:35.817106					
27	98		135.83	1	8	24	2020-08-13 16:14:06.100606	2020-08-13 16:14:06.100606					
28	 321		154.00	1	120	25	2020-08-13 16:56:37.06783	2020-08-13 16:56:37.06783					
29	198-1		21.00	1	15	26	2020-08-13 17:19:54.233407	2020-08-13 17:19:54.233407					
30	199-4		101.00	1	15	26	2020-08-13 17:19:54.236195	2020-08-13 17:19:54.236195					
31	93	https://drive.google.com/drive/u/0/folders/1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	47.98	1	2	27	2020-08-21 07:04:06.070052	2020-08-21 08:38:46.840422					
33	1615	https://drive.google.com/drive/u/0/folders/1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	68.00	1	2	29	2020-08-21 08:34:15.965769	2020-08-21 09:34:52.285475					
32	 1687		77.38	1	2	28	2020-08-21 07:49:16.263646	2020-08-21 09:38:33.493998				https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	
34	714		101.19	1	4	30	2020-08-25 10:34:58.534717	2020-08-25 10:34:58.534717					
36	1577		48.00	1	3	32	2020-09-02 03:09:11.302	2020-09-02 03:09:11.302					
37	730-114		97.00	1	2	33	2020-09-02 06:02:56.983715	2020-09-02 06:02:56.983715					
38	277		195.92	1	4	34	2020-09-07 09:09:58.944168	2020-09-07 09:09:58.944168					
39	176		63.00	4	6	36	2020-09-14 02:45:56.314524	2020-09-14 02:45:56.314524					
40	879-16		1826.00	1	4	37	2020-09-21 08:06:29.559747	2020-09-21 08:06:29.559747					
41	541-5		83.00	1	3	38	2020-09-21 08:32:07.235741	2020-09-21 08:32:07.235741					
42	363		83.64	1	7	39	2020-09-21 08:42:39.817512	2020-09-21 08:42:39.817512					
43	539-37		65.00	1	2	40	2020-09-22 06:22:21.072226	2020-09-22 06:22:21.072226					
44	1		70.00	1	3	41	2020-09-25 23:35:57.530789	2020-09-25 23:35:57.530789					
46	246		90.16	1	4	43	2020-09-28 06:43:42.915863	2020-09-28 06:43:42.915863					
47	247		6.63	1	4	43	2020-09-28 06:43:42.918043	2020-09-28 06:43:42.918043					
48	922-4		100.00	1	4	44	2020-09-28 06:51:48.322119	2020-09-28 06:51:48.322119					
49	1997		83.00	1	2	45	2020-09-28 07:45:19.781606	2020-09-28 07:45:19.781606					
50	430		895.00	1	5	46	2020-09-28 08:04:21.468815	2020-09-28 08:04:21.468815					
51	1122		794.84	3610	79300	47	2020-09-28 08:20:01.396552	2020-09-28 08:20:01.396552					
53	 1581-7		48.00	1	2	35	2020-10-02 04:19:43.300415	2020-10-02 04:19:43.300415					
54	1584-8		31.00	1	2	35	2020-10-02 04:19:43.302729	2020-10-02 04:19:43.302729					
55	351-10		139.00	1	4	49	2020-10-02 12:09:30.589481	2020-10-02 12:09:30.589481					
56	17		266.71	1	10	50	2020-10-02 12:46:32.94543	2020-10-02 12:46:32.94543					
57	19		98.15	1	10	50	2020-10-02 12:46:32.947541	2020-10-02 12:46:32.947541					
58	562		100.57	1	3	51	2020-10-05 03:26:24.490016	2020-10-05 03:26:24.490016					
59	203-2		61.00	1	4	52	2020-10-05 03:39:00.88486	2020-10-05 03:39:00.88486					
60	202-6		68.00	7	624	52	2020-10-05 03:39:00.886898	2020-10-05 03:39:00.886898					
61	204-3		83.00	7	624	52	2020-10-05 03:39:00.903288	2020-10-05 03:39:00.903288					
63	1362		801.00	378	50000	54	2020-10-05 05:54:11.817649	2020-10-05 05:54:11.817649					
64	281		105.00	1	2	55	2020-10-05 11:02:07.67057	2020-10-05 11:02:07.67057					
65	610		6413.96	38	50000	56	2020-10-07 09:35:15.728964	2020-10-07 09:35:15.728964					
52	296	https://drive.google.com/file/d/1LvPsC0sBA1laxPRTjmWuiNm4wMXmwJMu/view?usp=drivesdk	36.74	1	15	48	2020-09-30 10:47:45.028131	2020-10-13 11:52:46.096944					
35	281	https://drive.google.com/drive/u/1/folders/1NxhO1EB6nIT2Lg1O5r_0S59ZSfpqDq48	105.00	1	2	31	2020-08-27 14:01:45.264712	2020-10-15 09:52:04.158066					
68	513		38.99	1	15	58	2020-10-16 14:58:20.23737	2020-10-16 14:58:20.23737					
72	93-31		56.00	2	3	61	2020-10-30 01:19:16.402866	2020-10-30 01:19:16.402866					
74	944		96.00	1	4	63	2020-10-30 13:18:38.99966	2020-10-30 13:18:38.99966					
75	944-1		21.00	1	4	63	2020-10-30 13:18:39.002186	2020-10-30 13:18:39.002186					
76	944-2		4.00	1	4	63	2020-10-30 13:18:39.003993	2020-10-30 13:18:39.003993					
77	502		150.45	1	3	64	2020-11-05 20:18:47.228465	2020-11-05 20:18:47.228465					
45	827	https://drive.google.com/file/d/1RyGR0Oshqw9ey34UYihd5mACO1Sz1Klh/view?usp=drivesdk	97.45	1	4	42	2020-09-28 06:32:35.523426	2020-11-10 10:54:12.112681					
78	867		39.00	1	4	65	2020-11-12 14:08:04.300058	2020-11-12 14:08:04.300058					
79	1208		104.75	1	2	66	2020-11-13 05:02:28.757036	2020-11-13 05:02:28.757036		25000	104.75		
73	31	https://drive.google.com/file/d/1VlzAlXNPW0WyWPsjA0dE9PTiEI3boCuD/view?usp=sharing	4906.00	723	600000	62	2020-10-30 01:46:06.641583	2020-11-20 10:04:17.700578					
69	150-17	https://drive.google.com/file/d/1rXL5nTo5JzaEdfXavX_iEI6oWs42CRi-/view?usp=sharing	6.00	1	5	59	2020-10-21 10:51:34.979002	2020-12-19 02:20:33.38178					
66	 757	https://drive.google.com/file/d/1Ec0yHYLRxRt3IexhYfF-sDgX8V8L8WNM/view?usp=sharing	42.00	1	4	57	2020-10-14 14:28:31.646589	2020-12-19 02:23:33.715994					
164	1427		148.96	1	3	120	2021-03-03 00:50:30.026611	2021-03-03 00:50:30.026611					
62	426-21	https://drive.google.com/file/d/1_yFumddMlP6plZHBxTRD7NuugLeIq9hQ/view?usp=sharing	56.00	1	6	53	2020-10-05 03:47:08.794725	2020-11-20 08:33:57.988843					
71	1007	https://drive.google.com/file/d/1f7hjwFRcYl7lh7LXy_6CSe_hrQgujgUw/view?usp=sharing	59.00	1	3	60	2020-10-23 14:16:51.854792	2020-11-20 10:10:03.268842					
80	974		5.00	1	6	67	2020-11-20 11:16:06.665155	2020-11-20 11:16:06.665155					
81	974-1		12.00	1	6	67	2020-11-20 11:16:06.66916	2020-11-20 11:16:06.66916					
82	974-2		42.00	1	6	67	2020-11-20 11:16:06.671972	2020-11-20 11:16:06.671972					
83	66		9.77	1	5	68	2020-11-20 13:04:25.333449	2020-11-20 13:04:25.333449					
84	67		103.61	1	5	68	2020-11-20 13:04:25.340606	2020-11-20 13:04:25.340606					
85	855		100.10	1	10	69	2020-11-21 09:33:13.809389	2020-11-21 09:33:13.809389					
86	233		75.58	1	5	70	2020-11-23 13:53:31.101893	2020-11-23 13:53:31.101893					
87	415-42		55.00	1	2	71	2020-11-23 14:09:33.607868	2020-11-23 14:09:33.607868					
88	415-176		2.00	1	2	71	2020-11-23 14:09:33.610934	2020-11-23 14:09:33.610934					
89	244-4 		78.00	1	6	72	2020-11-24 13:41:19.891271	2020-11-24 13:41:19.891271					
90	244-4 		82.00	1	96	72	2020-11-24 13:41:19.894461	2020-11-24 13:41:19.894461					
91	244-4 		82.00	1	96	72	2020-11-24 13:41:19.896655	2020-11-24 13:41:19.896655					
92	2058		55.00	1	6	73	2020-11-25 00:35:45.700092	2020-11-25 00:35:45.700092					
93	517		279.00	1	2	74	2020-11-25 00:41:26.533925	2020-11-25 00:41:26.533925					
94	540		244.00	1	8	74	2020-11-25 00:41:26.535635	2020-11-25 00:41:26.535635					
95	 377-14		67.00	1	4	75	2020-11-25 00:47:58.108851	2020-11-25 00:47:58.108851					
96	68		78.39	2	5	76	2020-11-25 14:55:52.86816	2020-11-25 14:55:52.86816					
97	454		1219.00	1	4	77	2020-11-27 05:57:29.821692	2020-11-27 05:57:29.821692					
98	153		1998.60	1999	9600	78	2020-11-27 11:46:39.024881	2020-11-27 11:46:39.024881					
101	888-1		196.00	1	60	80	2020-12-01 05:12:11.590267	2020-12-01 05:12:11.590267					
102	888-4		2.00	1	60	80	2020-12-01 05:12:11.59335	2020-12-01 05:12:11.59335					
103	235-18		104.00	1	15	81	2020-12-01 11:23:12.747954	2020-12-01 11:23:12.747954					
105	461		117.59	1	15	83	2020-12-02 15:12:00.055845	2020-12-02 15:12:00.055845					
106	222		50.00	1	42	84	2020-12-02 15:41:15.213127	2020-12-02 15:41:15.213127					
107	 223		3.00	1	14	84	2020-12-02 15:41:15.215656	2020-12-02 15:41:15.215656					
108	910		2049.00	33	17560	85	2020-12-06 08:45:59.569106	2020-12-06 08:45:59.569106					
109	1290-1		303.00	197	10000	86	2020-12-06 09:00:37.509718	2020-12-06 09:00:37.509718					
110	839		79.33	1	2	87	2020-12-07 11:17:09.814934	2020-12-07 11:17:09.814934					
111	840		81.93	1	12	87	2020-12-07 11:17:09.817127	2020-12-07 11:17:09.817127					
112	410		101.00	1	36	88	2020-12-07 15:41:45.869001	2020-12-07 15:41:45.869001					
113	505-7		18.00	1	18	88	2020-12-07 15:41:45.871465	2020-12-07 15:41:45.871465					
114	450		79.00	1	15	89	2020-12-07 16:37:56.530921	2020-12-07 16:37:56.530921					
115	881		79.14	1	21	90	2020-12-10 23:10:46.308244	2020-12-10 23:10:46.308244					
117	420		133.00	1	8	92	2020-12-15 14:56:01.470691	2020-12-15 14:56:01.470691					
118	40		617.00	410	40000	93	2020-12-15 16:31:24.292135	2020-12-15 16:31:24.292135	00				
116	320	https://drive.google.com/file/d/1F_3hIs6_jbQW45-ASrrR2Sdeo4sWwaac/view?usp=sharing	72.69	1	4	91	2020-12-10 23:18:53.921798	2020-12-19 02:15:59.721234					
99	1306-23	https://drive.google.com/file/d/1mUfJ-1HDB2LgMfsOyH1XvtykZOrTy4Oj/view?usp=sharing	24.00	1	21	79	2020-11-27 13:59:05.13263	2020-12-19 02:18:06.589544					
100	1473-30	https://drive.google.com/file/d/1mUfJ-1HDB2LgMfsOyH1XvtykZOrTy4Oj/view?usp=sharing	61.00	1	4	79	2020-11-27 13:59:05.135225	2020-12-19 02:18:06.594967					
70	153-2	https://drive.google.com/file/d/1rXL5nTo5JzaEdfXavX_iEI6oWs42CRi-/view?usp=sharing	65.00	1	5	59	2020-10-21 10:51:34.98148	2020-12-19 02:20:33.395884					
67	 757-1	https://drive.google.com/file/d/1Ec0yHYLRxRt3IexhYfF-sDgX8V8L8WNM/view?usp=sharing	2.00	1	4	57	2020-10-14 14:28:31.663685	2020-12-19 02:23:33.72387					
120	896		84.00	1	2	99	2020-12-31 03:00:23.064757	2020-12-31 03:00:23.064757					
122	798		58.00	1	7	101	2021-01-05 09:56:28.649629	2021-01-05 09:56:28.649629					
123	 630		4.51	2	120	98	2021-01-08 07:56:11.805551	2021-01-08 07:56:11.805551					
124	631		2.21	2	120	98	2021-01-08 07:56:11.835677	2021-01-08 07:56:11.835677					
125	647		741.16	2	120	98	2021-01-08 07:56:11.838024	2021-01-08 07:56:11.838024					
126	361		21.00	588	7056	94	2021-01-08 08:22:15.114365	2021-01-08 08:22:15.114365					
127	362		108.00	588	7056	94	2021-01-08 08:22:15.117118	2021-01-08 08:22:15.117118					
128	483		212.90	43	12000	104	2021-01-12 14:48:05.444717	2021-01-12 14:48:05.444717					
129	 508		990.11	43	12000	104	2021-01-12 14:48:05.459036	2021-01-12 14:48:05.459036					
130	512		134.45	43	12000	104	2021-01-12 14:48:05.461475	2021-01-12 14:48:05.461475					
131	536		27.34	43	12000	104	2021-01-12 14:48:05.463064	2021-01-12 14:48:05.463064					
132	561		188.09	43	12000	104	2021-01-12 14:48:05.464769	2021-01-12 14:48:05.464769					
133	 561-1		4.66	43	12000	104	2021-01-12 14:48:05.466391	2021-01-12 14:48:05.466391					
134	 741		602.00	1	100	105	2021-01-12 15:12:34.78676	2021-01-12 15:12:34.78676					
135	120		3094.00	1	160	106	2021-01-12 16:40:14.421238	2021-01-12 16:40:14.421238					
136	120-20		587.00	1	160	106	2021-01-12 16:40:14.436685	2021-01-12 16:40:14.436685					
137	83-13		274.00	1	4	107	2021-01-13 01:31:09.257215	2021-01-13 01:31:09.257215					
104	1986	https://drive.google.com/file/d/1ml8ePLI8BBp5NSwH1iA7fL3K7nxISaEg/view?usp=sharing	4575.00	2	10000	82	2020-12-01 11:53:01.393083	2021-01-14 08:54:47.302211					
138	1396		126.75	2	6	108	2021-01-15 14:23:55.393447	2021-01-15 14:23:55.393447					
139	359 		32.04	1	5	109	2021-01-15 14:37:58.810484	2021-01-15 14:37:58.810484					
140	360		64.21	1	5	109	2021-01-15 14:37:58.827365	2021-01-15 14:37:58.827365					
141	724		78.16	1	4	110	2021-01-18 08:45:37.488828	2021-01-18 08:45:37.488828					
142	574		86.17	1	2	111	2021-01-18 08:52:38.721925	2021-01-18 08:52:38.721925					
143	613		77.97	1	4	112	2021-01-18 11:59:56.687965	2021-01-18 11:59:56.687965					
144	613-1		6.03	1	4	112	2021-01-18 11:59:56.690786	2021-01-18 11:59:56.690786					
145	374		99.00	1	10	96	2021-01-18 14:18:05.990814	2021-01-18 14:18:05.990814					
146	483		212.90	43	12000	95	2021-01-18 14:48:26.116694	2021-01-18 14:48:26.116694					
147	508		990.11	43	12000	95	2021-01-18 14:48:26.130355	2021-01-18 14:48:26.130355					
148	512		134.45	43	12000	95	2021-01-18 14:48:26.133106	2021-01-18 14:48:26.133106					
149	536		27.34	43	12000	95	2021-01-18 14:48:26.141366	2021-01-18 14:48:26.141366					
150	561		188.09	43	12000	95	2021-01-18 14:48:26.144054	2021-01-18 14:48:26.144054					
151	561-1		4.66	43	12000	95	2021-01-18 14:48:26.155843	2021-01-18 14:48:26.155843					
152	134		70.00	1	2	113	2021-01-27 21:31:24.930342	2021-01-27 21:31:24.930342					
154	994-37		78.00	1	2	116	2021-02-09 11:14:41.367379	2021-02-09 11:14:41.367379					
155	1747		45.77	1	5	114	2021-02-09 11:55:22.372096	2021-02-09 11:55:22.372096					
156	1748		38.46	1	5	114	2021-02-09 11:55:22.377664	2021-02-09 11:55:22.377664					
157	3593		786.00	8	12188	117	2021-02-19 14:43:42.261215	2021-02-19 14:43:42.261215			786		
158	3601		716.00	8	12188	117	2021-02-19 14:43:42.263407	2021-02-19 14:43:42.263407			716		
159	3606		9444.00	8	12188	117	2021-02-19 14:43:42.264753	2021-02-19 14:43:42.264753			9444		
160	3610		800.00	8	12188	117	2021-02-19 14:43:42.265889	2021-02-19 14:43:42.265889			800		
161	3618		998.00	8	12188	117	2021-02-19 14:43:42.266987	2021-02-19 14:43:42.266987			998		
162	281		67.02	1	2	118	2021-02-19 14:51:43.286349	2021-02-19 14:51:43.286349			67.02		
167	888-1		89.02	1	3	122	2021-03-05 14:56:20.522188	2021-03-05 14:56:20.522188					
168	417		354.11	1	40	123	2021-03-05 15:16:12.665603	2021-03-05 15:17:19.150127					
169	1169-8		11568.00	314	700000	124	2021-03-05 15:51:18.485631	2021-03-05 15:51:18.485631					
223	 1350		32.00	1	5	167	2021-06-25 11:29:11.846261	2021-06-25 11:29:11.846261					
224	 1588-2		75.55	1	3	168	2021-06-25 11:50:49.746738	2021-06-25 11:50:49.746738					
153	517 	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	109.87	1	2	115	2021-02-07 14:49:01.295717	2021-03-13 03:50:18.434546					
166	888	https://drive.google.com/file/d/1MrKIW3hKgYmBnojOwkzLCCSHO5Gg0wMe/view?usp=sharing	11.00	1	3	122	2021-03-05 14:56:20.519967	2021-03-13 04:13:16.570202					
170	577		69.00	40	100	125	2021-03-18 09:48:10.376215	2021-03-18 09:48:10.376215					
171	 3774-10		60.00	2	3	126	2021-03-18 13:58:11.83043	2021-03-18 13:58:11.83043					
172	429		39.00	1	5	127	2021-03-18 14:11:48.927863	2021-03-18 14:11:48.927863					
173	 675 		909.00	474	60000	129	2021-03-18 14:50:14.064445	2021-03-18 14:50:14.064445					
174	671 		330.00	474	60000	129	2021-03-18 14:50:14.066396	2021-03-18 14:50:14.066396					
175	585-2		309.00	1	3	130	2021-03-19 14:33:57.575927	2021-03-19 14:33:57.575927					
176	139		36.61	1	4	131	2021-03-19 14:55:01.146713	2021-03-19 14:55:01.146713					
177	140		29.79	1	4	131	2021-03-19 14:55:01.1485	2021-03-19 14:55:01.1485					
178	141		29.40	1	4	131	2021-03-19 14:55:01.153723	2021-03-19 14:55:01.153723					
179	1096		671.43	1	96	132	2021-03-19 15:14:50.572821	2021-03-19 15:14:50.572821					
180	212		2389.00	99	40000	133	2021-03-19 19:35:46.294728	2021-03-19 19:35:46.294728					
181	212-4		113.00	99	40000	133	2021-03-19 19:35:46.296715	2021-03-19 19:35:46.296715					
165	99	https://drive.google.com/drive/u/0/folders/1q8OkStMKGjKPx06JY22xUBB63E1G2XQ5	85.59	1	3	121	2021-03-03 01:12:29.34235	2021-03-24 01:32:22.964548					
182	 6984-1		87.00	1	2	128	2021-03-26 09:20:36.016616	2021-03-26 09:20:36.016616					
184	430 		73.12	1	3	136	2021-03-26 10:21:51.319041	2021-03-26 10:21:51.319041					
185	 858		103.73	1	16	97	2021-03-26 13:56:40.749917	2021-03-26 13:56:40.749917					
186	 858-1		0.24	1	16	97	2021-03-26 13:56:40.754302	2021-03-26 13:56:40.754302					
187	858-2		7.03	1	16	97	2021-03-26 13:56:40.758299	2021-03-26 13:56:40.758299					
188	347		92.00	1	8	137	2021-03-26 14:39:44.605174	2021-03-26 14:39:44.605174					
189	90		6319.00	96	60000	138	2021-03-26 14:50:03.389364	2021-03-26 14:50:03.389364					
190	503		96.00	1	8	139	2021-03-26 14:52:56.142877	2021-03-26 14:52:56.142877					
183	290-762 	https://drive.google.com/drive/folders/1K6kQL__YlnjX5yfw4lH0x3ew_Hmnh7bY?usp=sharing	156.00	1	12	135	2021-03-26 10:06:28.778698	2021-03-28 12:22:39.911327					
191	671		330.00	474	60000	140	2021-03-28 13:18:33.802842	2021-03-28 13:18:33.802842					
192	675		909.00	474	60000	140	2021-03-28 13:18:33.80475	2021-03-28 13:18:33.80475					
193	 242		2988.43	41	10000	141	2021-03-28 13:42:34.328148	2021-03-28 13:42:34.328148					
194	347		92.00	1	8	142	2021-04-13 14:56:44.614	2021-04-13 14:56:44.614					
195	1376-3		96.00	1	30	143	2021-04-18 13:56:42.477453	2021-04-18 13:56:42.477453					
196	235-18		104.00	1	15	144	2021-04-18 15:02:03.755192	2021-04-18 15:02:03.755192					
197	178		184.00	1	20	145	2021-04-21 15:04:48.978291	2021-04-21 15:04:48.978291					
199	 140		29.79	1	4	146	2021-04-22 14:41:20.68587	2021-04-22 14:41:20.68587					
200	141		29.40	1	4	146	2021-04-22 14:41:20.690063	2021-04-22 14:41:20.690063					
198	139		36.61	1	4	146	2021-04-22 14:41:20.68419	2021-04-22 14:43:06.28416					
201	 619地號 ，面積m2，持分 		879.00	1477	263700	147	2021-04-22 15:54:06.95236	2021-04-22 15:54:06.95236					
204	893		117.42	1	3	150	2021-04-30 15:31:59.062067	2021-04-30 15:31:59.062067					
121	233 	https://drive.google.com/file/d/1NCuCcZRuucFjXFOkHLlKOQqz8PPWrIov/view?usp=sharing	62.00	1	5	100	2021-01-01 09:59:40.154001	2021-05-01 03:15:38.294615					
205	1121-4		76.00	2	3	151	2021-05-02 13:12:20.146574	2021-05-02 13:12:20.146574					
206	1121-11		28.00	2	3	151	2021-05-02 13:12:20.14872	2021-05-02 13:12:20.14872					
207	1122-4		22.00	2	3	151	2021-05-02 13:12:20.150151	2021-05-02 13:12:20.150151					
163	1677	https://drive.google.com/file/d/1XHndLkaAOmpYlVQYNsLQcmxGdbjQLWxZ/view?usp=drivesdk	204.44	1	20	119	2021-02-27 00:24:44.222522	2021-05-04 11:14:01.099784					
208	197 		104.00	1	24	152	2021-05-04 14:17:00.339384	2021-05-04 14:17:00.339384					
209	 302 		23422.00	211	400000	153	2021-05-04 14:44:03.151938	2021-05-04 14:44:03.151938					
210	1622-4		92.00	1424	30000	154	2021-05-04 16:49:20.741169	2021-05-04 16:49:20.741169					
211	1622-9		51.00	1	3	154	2021-05-04 16:49:20.743093	2021-05-04 16:49:20.743093					
212	1622-10		7.00	1	3	154	2021-05-04 16:49:20.748231	2021-05-04 16:49:20.748231					
213	400 		1151.00	83	10000	155	2021-05-12 13:51:18.858542	2021-05-12 13:51:18.858542					
214	無		\N	\N	\N	159	2021-05-20 14:36:58.844599	2021-05-20 14:36:58.844599					
215	 939		35.00	1	5	162	2021-05-20 14:40:40.450339	2021-05-20 14:40:40.450339					
216	939-1		145.00	11	750	162	2021-05-20 14:40:40.456061	2021-05-20 14:40:40.456061					
217	174-38		92.00	1	3	161	2021-05-20 14:47:09.384785	2021-05-20 14:47:09.384785					
218	3099-33		897.00	1	100	160	2021-05-20 14:59:10.856829	2021-05-20 14:59:10.856829					
219	3102-58		424.00	136	5000000	160	2021-05-20 14:59:10.861669	2021-05-20 14:59:10.861669					
220	400	https://drive.google.com/drive/folders/1ih2wHD7x9KZPV66Y4uDi_CAEGM3BX_2u?usp=sharing	1151.00	83	10000	163	2021-06-03 09:27:08.314461	2021-06-05 03:42:04.921675					
202	296	https://drive.google.com/drive/folders/1Rc8obK800UwtGjazq8scCwuE2F7jAXvx?usp=sharing	95.00	1	4	148	2021-04-28 03:37:32.048462	2021-06-05 03:44:11.321137					
203	185	https://drive.google.com/drive/folders/11ActuwABuQPo5XyXL7wnKy07NNjQsckD?usp=sharing	50.00	1	5	149	2021-04-28 03:46:14.267864	2021-06-05 03:45:35.852372					
221	1703		50.42	1	5	166	2021-06-19 14:51:04.810712	2021-06-19 14:51:04.810712					
222	1704		41.79	1	5	166	2021-06-19 14:51:04.812722	2021-06-19 14:51:04.812722					
\.


--
-- Data for Name: objectbuilds; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.objectbuilds (id, address, total_price, build_area, house_age, floor_height, objectbuild_url, surveyora, surveyorb, plusa, plusb, yfcase_id, created_at, updated_at, objectbuild_status, plusa_reason, plusb_reason, "objectBuildDealYear", "objectBuildDealMonth") FROM stdin;
1	板橋區四川路一段241~270號	9000000	17.79	49.00	3		\N	\N	\N	\N	1	2020-07-20 06:31:02.772971	2020-07-20 06:31:02.772971	自訂	\N	\N	\N	\N
18	七堵區泰安路2巷1~30號	3500000	25.21	\N	2/4		張浩文	\N	0.80	\N	9	2020-07-20 08:08:41.527304	2020-07-20 09:19:57.839929	自訂		\N	\N	\N
17	七堵區泰和街61~90號	3350000	28.36	29.00	3/4		\N	\N	\N	\N	9	2020-07-20 08:08:41.525758	2020-07-20 08:08:41.525758	自訂	\N	\N	\N	\N
14	南區國華街一段91~120號(108/07)	4500000	29.09	47.90	2	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	劉家彰	曾友和	0.30	0.35	7	2020-07-20 08:00:39.484563	2020-07-20 09:33:42.522096	自訂	更近市區	0.7 無尾巷、0.5 未辦保存登記	\N	\N
13	南區國華街一段61~90號(108/11)	4880000	30.65	48.70	2	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	劉家彰	曾友和	0.35	0.35	7	2020-07-20 08:00:39.482371	2020-07-20 09:34:08.331432	自訂	無尾巷2m巷寬未辦保存登記	0.7 無尾巷、0.5 未辦保存登記	\N	\N
5	金華路二段15巷1~30號	3000000	23.14	41.20	2/4		曾友和	劉家彰	1.10	1.10	4	2020-07-20 06:56:20.124651	2020-07-20 09:42:58.63967	自訂			\N	\N
6	金華路二段15巷1~30號	3000000	22.89	41.50	3/4	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	劉家彰	0.90	0.50	4	2020-07-20 06:56:20.127084	2020-07-20 09:43:13.514786	自訂			\N	\N
7	金華路二段21巷1~30號	2350000	22.89	41.00	4/4		曾友和	劉家彰	1.10	1.00	4	2020-07-20 06:56:20.129237	2020-07-20 09:43:19.939417	自訂			\N	\N
2	板橋區忠孝路132巷1~30號	6850000	21.18	47.20	2/3		張浩文	曾友和	0.80	0.75	2	2020-07-20 06:42:40.685418	2020-07-20 09:49:34.451475	自訂			\N	\N
3	板橋區忠孝路154巷31~60號	7000000	24.58	44.70	2/4		張浩文	曾友和	0.75	0.70	2	2020-07-20 06:42:40.687013	2020-07-20 09:49:40.087807	自訂			\N	\N
32	中西區健康路一段151~180號 (109/06公寓)	3880000	37.57	36.10	3/5		劉家彰	曾友和	0.98	1.10	18	2020-08-04 06:44:00.224959	2020-08-06 14:08:27.906687	自訂	頂樓加價		\N	\N
31	中西區健康路一段150巷1~30號 (108/09公寓)	4380000	40.55	34.10	5/5		劉家彰	曾友和	1.05	1.10	18	2020-08-04 06:44:00.223098	2020-08-06 14:07:52.078874	自訂	去年價錢		\N	\N
35	健康路一段170巷1~30號(107/05)	3300000	30.00	38.00	3/4		劉家彰	曾友和	1.15	1.10	18	2020-08-06 12:47:17.523576	2020-08-06 14:08:56.265151	自訂	漲價		\N	\N
33	 復國二路16巷1~30號(108/05)	6500000	39.72	31.00	2/2	https://lvr.land.moi.gov.tw/	劉家彰	曾友志	0.80	1.00	19	2020-08-04 07:04:24.309088	2020-08-08 08:48:14.500646	自訂	拍賣物含未辦保存登記面積32.27坪，實價登錄未含。	0.8	\N	\N
34	復國二路16巷1~30號(106/6)	5600000	39.30	29.00	2/2	https://lvr.land.moi.gov.tw/	劉家彰	曾友志	0.80	1.00	19	2020-08-04 07:09:35.291878	2020-08-08 08:48:34.525733	自訂	拍賣物含未辦保存登記面積32.27坪，實價登錄未含。	0.8	\N	\N
36	 健康一段170巷1~30號(107/02)	3950000	30.00	37.00	4/4		劉家彰	曾友和	1.10	0.95	18	2020-08-06 12:49:02.201571	2020-08-06 14:09:16.530942	自訂	漲價頂樓		\N	\N
25	白河區中正路121~150號	5180000	62.35	13.60	1/4		\N	\N	\N	\N	17	2020-07-20 08:33:47.68414	2020-09-02 02:52:33.811939	自訂	\N	\N		
26	白河區中正路121~150號	5500000	62.57	14.10	1/4		\N	\N	\N	\N	17	2020-07-20 08:33:47.686365	2020-09-02 02:52:33.814364	自訂	\N	\N		
22	安平區安平路370巷3弄1~30號	3400000	28.52	44.70	2/4	https://goo.gl/maps/psYVs2UkDkfvtdY96	劉家彰	曾友志	1.00	1.00	14	2020-07-20 08:22:32.917347	2020-09-03 01:07:21.512315	自訂	相類似物件 同在二樓無需加成	相類似物件		
29	信義街44巷1~30號(106/12)	5200000	58.44	24.00	全/4		劉家彰	曾友志	1.10	1.00	16	2020-08-04 03:46:00.399067	2020-09-10 02:53:57.29361	自訂	參考106年到100年間 房地產增值	1.1		
16	板橋區懷德街66巷1~30號	12360000	32.45	48.30	2/5		張浩文	曾友和	0.60	0.60	8	2020-07-20 08:04:52.28515	2020-10-07 09:15:21.370024	自訂				
15	板橋區仁化街64巷1~30號	8350000	23.55	46.30	2/3		張浩文	曾友和	0.65	0.60	8	2020-07-20 08:04:52.282747	2020-10-07 09:15:21.37201	自訂				
4	武德街135巷1~30號	4250000	22.14	48.00	2		\N	\N	\N	\N	3	2020-07-20 06:51:10.255065	2021-03-14 13:01:53.531676	自訂	\N	\N		
21	復興路1~30號	2680000	49.67	26.00	4		曾昱銓	\N	1.10	\N	11	2020-07-20 08:16:10.517844	2021-03-14 13:02:20.288169	自訂	實際坪數約80坪\t	\N		
51	大安里大安街241~270號\t(242號)	6300000	32.51	38.00	全/2(108/12)		\N	\N	\N	\N	30	2020-08-25 10:34:58.549831	2021-04-13 17:06:26.37252	自訂	\N	\N		
53	 -大安街257巷1~30號(4號) \t \t\t \t	3500000	26.17	38.00	全/2		\N	\N	\N	\N	30	2020-08-25 10:41:41.157634	2021-04-13 17:06:26.377473	自訂	\N	\N		
10	安南區安通路四段119巷27弄1~30號	6600000	34.66	38.00	透天	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%8D%97%E5%8D%80?kw=%E5%AE%89%E9%80%9A%E8%B7%AF%E5%9B%9B%E6%AE%B5	曾友和	曾昱銓	1.00	1.10	6	2020-07-20 07:55:42.562236	2021-04-13 17:07:50.61698	自訂				
12	安通路四段119巷27弄1號（**仲介））	7000000	29.43	38.00	透天		曾友和	曾昱銓	0.90	1.00	6	2020-07-20 07:56:50.531189	2021-04-13 17:07:50.618614	仲介				
8	東區前鋒路61~90號	4500000	32.00	37.00	6	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	曾昱銓	0.90	0.90	5	2020-07-20 07:51:48.207215	2021-04-13 17:11:19.520405	自訂				
9	東區前鋒路61~90號	3200000	32.00	37.00	3	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	曾友和	曾昱銓	1.15	1.10	5	2020-07-20 07:51:48.209019	2021-04-13 17:11:19.521905	自訂				
19	板橋區懷德街78巷1~30號	6450000	19.46	45.00	4/4	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%87%B7%E5%BE%B7%E8%A1%9778%E5%B7%B71%E8%99%9F/@25.0315844,121.4782618,3a,75y,169.14h,89.6t/data=!3m7!1e1!3m5!1sXpaKTjjfXSQKPgCUvzx77A!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DXpaKTjjfXSQKPgCUvzx77A%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D182.28134%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5p2_5qmL5Y2A5oe35b636KGXNzjlt7cxfjMw6Jmf!3m4!1s0x3442a845c3183079:0x7c82dda16d74a051!8m2!3d25.0314992!4d121.4782531	\N	\N	\N	\N	10	2020-07-20 08:12:54.69991	2021-04-14 04:38:27.770409	自訂	\N	\N		
46	慶中街121~150號(128號)	8000000	34.64	44.00	2	https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	曾友和	劉家彰	1.20	1.23	28	2020-08-21 08:04:46.342904	2020-08-31 11:34:18.965242	自訂	(路寛+0.1、屋況+0、其他+0.1非無尾巷)	5米巷+0.08、非無尾巷+0.1、近南門健康路+0.05		
45	南門路241~270號	14200000	54.84	48.50	1/3	https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	曾友和	劉家彰	0.80	0.88	28	2020-08-21 08:00:43.82247	2020-08-31 11:34:18.968713	自訂	\t(路寛-0.1、屋況+0、店面-0.1非無尾巷)	巷小-0.05、店面小巷-0.05、屋況差不多-0.02		
57	北興街400巷8號	3200000	33.06	39.00	2/2		\N	\N	\N	\N	33	2020-09-02 06:48:45.618276	2020-09-02 06:48:45.618276	自訂	\N	\N	2020	4
58	北興街411巷13弄10號	3254700	35.19	31.00	2/2		\N	\N	\N	\N	33	2020-09-02 06:48:45.620682	2020-09-02 06:48:45.620682	自訂	\N	\N	2019	8
44	安南區怡安路一段481~510號	8580000	66.47	32.20	1/3	https://drive.google.com/folderview?id=1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	曾友和	劉家彰	0.98	0.97	27	2020-08-21 07:42:19.279061	2020-08-31 16:53:46.703645	自訂	臨路條件相同 比較物件 附近雖較為熱鬧 但目標物件店面效益較佳	離黃昏市場較遠店面價值(-0.3)、路寬同、離台1-9主幹線較近(+0.1)、屋況舊一點點(-0.1)		
43	安南區修安街66巷1~30號	7000000	49.02	21.30	1/4	https://drive.google.com/folderview?id=1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	曾友和	劉家彰	1.10	1.20	27	2020-08-21 07:42:19.272174	2020-08-31 16:53:46.706032	自訂	比較物件是社區不具店面效益	店面價值>住宅(+0.5)、屋況舊(-0.3)		
49	新化區中正路341巷1~30號(108/09)	3900000	38.54	34.90	1/3		\N	\N	\N	\N	15	2020-08-21 08:52:34.39236	2020-09-01 02:13:43.481837	自訂	\N	\N		
50	大同街31~60號(36) 109/4	5400000	57.05	36.00	3		\N	\N	\N	\N	15	2020-08-21 08:52:34.394354	2020-09-01 02:13:43.484137	自訂	\N	\N		
23	安平區安平路370巷3弄1~30號\t	3600000	28.17	\N		https://goo.gl/maps/psYVs2UkDkfvtdY96	劉家彰	曾友志	0.95	1.00	14	2020-07-20 08:22:32.91947	2020-09-03 01:07:21.51478	自訂	比較物件有頂樓增建	有頂樓		
40	中正區臨沂街19巷1~10號	25430000	29.36	49.10	2/4		張浩文	曾友和	1.10	1.20	25	2020-08-13 16:59:59.574712	2020-09-05 09:30:03.212081	自訂	目標物件在一樓較值錢	目標物件在一樓可做商業使用		
39	中正區臨沂街19巷11~20號	29800000	30.18	45.50	1/4	https://drive.google.com/folderview?id=1ET_sQNuBW8kNr9uPZZvx3VCqCm0LFM0M	張浩文	曾友和	0.96	0.98	25	2020-08-13 16:59:59.57209	2020-09-05 09:30:03.214061	自訂	目標物件感覺稍舊	目標物件看起來比較舊可能需要整修		
41	萬華區環河南路二段125巷15弄1~10號	8000000	24.66	33.10	4/5		張浩文	曾友和	1.20	1.15	26	2020-08-13 17:27:28.661838	2020-09-05 09:40:26.700933	自訂	目標物件感覺舊，環境差	目標物件 環境 清幽 比較物件 有廟宇存在		
42	萬華區雙園街152巷1~10號	6500000	20.26	43.90	3/4	https://drive.google.com/folderview?id=1ENmvh6RyXJmD-WNxJVzKRvVugsH6C3AW	張浩文	曾友和	1.00	1.15	26	2020-08-13 17:27:28.664158	2020-09-05 09:40:26.703136	自訂		比較物件 較為老舊 臨路寬度 相近		
38	新莊區建中街16巷31~60號	10250000	32.27	43.30	2/4		張浩文	曾友和	1.00	0.98	24	2020-08-13 16:20:55.412287	2020-09-05 09:47:02.547876	自訂		目標物件 在同一社區中 稍嫌老舊		
37	新莊區建中街1~30號	9500000	30.53	42.60	2/4	https://drive.google.com/folderview?id=1EQfSK5voJht9Pzoju8NEwKpHxkflYjgq	張浩文	曾友和	0.97	1.00	24	2020-08-13 16:20:55.405429	2020-09-05 09:47:02.550115	自訂	目標物件感覺稍舊，在巷內	比價屋物件 是 馬路邊的公寓， 目標是 巷口的物件		
59	文賢路313巷12弄1~30號	8000000	61.75	30.00	2	https://drive.google.com/file/d/1GYUxIIkxCCAcLvX_wcyOBLFHUNPtwGle/view?usp=drivesdk	劉家彰	曾友和	0.78	0.58	32	2020-09-11 09:33:32.764024	2020-09-12 00:47:46.812334	自訂	屋況-0.05、增建-0.10、臨路-0.05\t、聯外-0.02	屋況0.8、臨路0.85、連外0.85	2020	3
66	文賢路520巷33號	6000000	22.06	47.00	2	地30.97坪，建坪22.06坪？(地籍56坪)	\N	\N	\N	\N	32	2020-09-18 13:12:00.646594	2020-09-18 13:16:18.410801	自訂	\N	\N	2019	6
67	光和31~60號	6200000	232.83	22.00	4		\N	\N	\N	\N	37	2020-09-22 04:15:17.736887	2020-09-22 04:15:17.736887	自訂	\N	\N	2020	5
68	中正里172號	740000	28.95	39.00	3		\N	\N	\N	\N	37	2020-09-22 04:18:19.300808	2020-09-22 04:18:19.300808	自訂	\N	\N	2020	1
63	文賢路242巷9弄61~90號	6320000	32.83	45.00	2	https://drive.google.com/file/d/1hLACQIAHO3QMhGu-MXdQLj6dCmKSvk8p/view?usp=drivesdk	劉家彰	曾友和	0.75	0.65	32	2020-09-11 09:39:11.377655	2020-09-12 00:51:11.184623	自訂	屋況-0.1、增建-0.05、臨路-0.05 、聯外-0.05	屋況0.8、臨路0.9、連外0.9	2020	5
64	瑞興街91~120號2F	7650000	26.05	47.00	2		曾昱銓	曾友志	1.20	1.00	36	2020-09-14 02:45:56.320666	2020-09-15 13:33:59.802022	自訂	增建9坪	如初勘意見	2018	11
55	嘉義市民生南路576巷31~60號	4060000	30.40	40.70	1/2	https://drive.google.com/file/d/1O4o-q0KU9wptxDgd0EevYlBNoRTsFsAk/view?usp=drivesdk	曾友和	劉家彰	1.33	1.21	31	2020-08-27 14:10:42.531239	2020-09-13 23:03:21.701359	自訂	0.1、0.10.15	心就加乘0.1林路加乘0.1主要道路一樣		
65	文賢路520巷6號	5500000	45.77	42.00	2		\N	\N	\N	\N	32	2020-09-18 13:12:00.644301	2020-09-18 13:12:00.644301	自訂	\N	\N	2019	1
69	海佃路二段700巷23弄2號	8000000	61.54	12.00	4		\N	\N	\N	\N	39	2020-09-22 04:49:40.927743	2020-09-22 04:49:40.927743	自訂	\N	\N	2020	5
70	海佃路二段700巷2弄20號	12600000	66.68	12.00	4		\N	\N	\N	\N	39	2020-09-22 04:49:40.934316	2020-09-22 04:50:27.746136	自訂	\N	\N	2019	10
72	臺南市新巿區中山路104號	6800000	29.53	41.00	2		\N	\N	\N	\N	38	2020-09-22 05:23:59.573804	2020-09-22 05:23:59.573804	自訂	\N	\N	2019	9
74	拔林220-6號	2300000	24.96	40.00	2		\N	\N	\N	\N	40	2020-09-22 06:22:21.078054	2020-09-22 06:22:21.078054	自訂	\N	\N	2020	5
75	拔林211~240號	2500000	24.24	39.00	2		\N	\N	\N	\N	40	2020-09-22 06:22:21.079975	2020-09-22 06:22:21.079975	自訂	\N	\N	2020	6
96	嘉義市圓福街118巷48弄5號	2200000	20.96	47.00	2	https://drive.google.com/file/d/1rayAH7rkVLnn0zQ0ibt1PUT7476v7pNq/view	劉家彰	曾友和	0.95	0.90	53	2020-10-06 06:39:46.988067	2020-10-06 10:08:25.068745	自訂	屋況1.0、增建0.95、臨路 1.0、路寬1.0	屋況-0.1、臨路0、連況幹道0	2020	3
97	嘉義市圓福街118巷48弄36號	2000000	21.09	47.00	2	https://drive.google.com/file/d/1rayAH7rkVLnn0zQ0ibt1PUT7476v7pNq/view	劉家彰	曾友和	0.95	1.00	53	2020-10-06 08:42:44.295418	2020-10-06 10:09:15.430679	自訂	屋況1.0、增建0.95、臨路 1.0、路寬1.0	\t屋況0、臨路0、連況幹道0	2020	1
73	臺南市新巿區中山路112號	4450000	28.84	41.00	2		\N	\N	\N	\N	38	2020-09-22 05:27:29.980272	2020-11-13 10:33:26.585285	自訂	\N	\N	2019	8
71	臺南市新巿區中山路138-1號	7200000	68.12	24.00	4		\N	\N	\N	\N	38	2020-09-22 05:23:59.545886	2020-11-13 10:36:09.102094	自訂	\N	\N	2019	2
122	新化區民生路314巷81號	3430000	28.99	41.10		https://drive.google.com/file/d/1PlsNqIej4id6A1fqrHjZkmTRHBX_fFfL/view?usp=sharing	\N	\N	\N	\N	70	2020-11-23 13:53:31.121161	2020-11-27 13:14:19.78002	自訂	\N	\N	2020	1
77	中華南路二段300巷30弄33號	6200000	44.27	33.00	3	https://drive.google.com/file/d/1hwikfVS9lSoNAlidmoiyc3Le4LgJ6ERt/view?usp=drivesdk	劉家彰	曾友和	0.85	0.86	42	2020-09-30 09:58:03.033622	2020-10-01 01:11:40.884602	自訂	0.85 增建3F～3.5F、臨路1.0、屋況1.0	增建還原0.86、新舊1.0、臨路寬1.0、連接幹到1.0	2019	12
76	金華路一段29巷8弄2號	5000000	46.88	33.00	3	https://drive.google.com/file/d/1vYpO_sE5fYuWxMTio4Z1NbjAh2jJPbGI/view?usp=drivesdk	劉家彰	曾友和	0.98	0.86	42	2020-09-30 09:58:03.024508	2020-10-01 01:14:27.837847	自訂	0.89增建、屋況1.0、臨路1.1	增建還原0.86、新舊1.0、臨路寬0.95、連接幹到1.05	2019	9
81	仁愛五街38-1號	6500000	51.30	25.00	4		\N	\N	\N	\N	35	2020-10-02 04:13:16.981778	2020-10-02 04:13:16.981778	自訂	\N	\N	2019	8
82	公明路204號	15679000	100.51	30.00	全/5		\N	\N	\N	\N	41	2020-10-02 11:37:53.259066	2020-10-02 11:37:53.259066	自訂	\N	\N	2019	9
83	公明路301~330號	23700000	130.57	50.00	全/4		\N	\N	\N	\N	41	2020-10-02 11:37:53.270437	2020-10-02 11:37:53.270437	自訂	\N	\N	2019	8
101	 仁和路109巷53號	6880000	21.33	47.00	全/2	https://drive.google.com/file/d/1Sr11OzS5M2tbJeYId4Wl-vZMFiD-13Vh/view?usp=drivesdk	曾友和	劉家彰	0.75	0.72	57	2020-10-14 14:38:13.499619	2020-10-17 02:22:52.515853	自訂	新舊屋況-0.25、臨路寬0、交通0	新舊0.8、臨路1.0、停車0.9、增建1.0	2020	4
85	旺萊路581巷14號(二等親)	3200000	47.52	40.00	2		\N	\N	\N	\N	49	2020-10-02 12:21:11.102373	2020-10-02 12:28:22.73029	自訂	\N	\N	2019	12
86	北花里中正路113巷21號	4500000	68.59	30.00	3		\N	\N	\N	\N	49	2020-10-02 12:28:22.736228	2020-10-02 12:28:22.736228	自訂	\N	\N	2020	6
87	朝琴路126號	7800000	100.88	50.00	全/2		\N	\N	\N	\N	50	2020-10-02 12:44:59.432149	2020-10-02 12:46:58.221765	自訂	\N	\N	2019	5
88	新市區崙頂75-15號	5000000	47.88	25.00	3		\N	\N	\N	\N	38	2020-10-02 13:04:42.965992	2020-10-02 13:04:42.965992	自訂	\N	\N	2017	7
89	崙頂46-2號	4600000	59.03	24.00	3		\N	\N	\N	\N	38	2020-10-02 13:19:19.16935	2020-10-02 13:19:19.16935	自訂	\N	\N	2017	5
98	海安路二段302巷31~60號	5870000	11.76	0.00	1	https://drive.google.com/file/d/1Zs04njhen2kaiOKuIUUDGB96DXVjUJRt/view?usp=drivesdk	\N	\N	\N	\N	48	2020-10-08 14:50:51.087871	2020-10-08 23:30:44.52691	自訂	\N	\N	2020	4
100	 仁和路107巷74號	4610000	21.33	47.00	全/2	https://drive.google.com/file/d/1Suvi8GNBw6WDwl5cZkJTvdMtnkt-Qyvm/view?usp=drivesdk	曾友和	劉家彰	0.90	1.00	57	2020-10-14 14:38:13.497785	2020-10-17 02:22:52.51778	自訂	新舊屋況-0.9、臨路寬0、交通0	新舊1.0、臨路1.0、增建1.0	2020	6
80	海安路二段296巷11號	7750000	12.28	0.00	1	https://drive.google.com/file/d/1nBFMvMSmtcykodD774IA9FrHRmIhx11Z/view?usp=drivesdk	劉家彰	曾友和	0.76	0.70	48	2020-09-30 15:56:17.000283	2020-10-08 23:44:19.930295	自訂	屋況0.8、路寬1.0、臨路0.95	屋況-0.3、臨路0、、交通0	2020	7
84	社內28-31	5700000	29.51	40.00	全/2	https://drive.google.com/file/d/1xd7lHOrZh8UDoKIWclzxLuAZ2tBkUjV_/view?usp=drivesdk	劉家彰	曾友和	1.00	1.00	43	2020-10-02 12:09:53.039324	2020-10-05 02:03:12.587969	自訂	屋況1.0、臨路1.0、增建1.0	各細項狀況類似 故 不再分相加成	2019	9
91	社內22-6	5200000	29.04	36.00	2	https://drive.google.com/file/d/1xd7lHOrZh8UDoKIWclzxLuAZ2tBkUjV_/view?usp=drivesdk	劉家彰	曾友和	1.00	1.00	43	2020-10-02 14:04:56.631061	2020-10-05 02:03:12.593385	自訂	屋況臨路增建1.0		2017	2
92	大武路1~30號	3330000	21.80	37.00	2		\N	曾友志	\N	1.00	54	2020-10-05 05:55:26.079076	2020-10-05 07:22:48.301634	自訂	\N	照底標不加價	2019	11
93	民生南路576巷82號	4300000	33.03	43.00	2		\N	\N	\N	\N	55	2020-10-05 11:34:34.661038	2020-10-05 11:34:34.661038	自訂	\N	\N	2019	12
94	民生南路576巷8號	7380000	32.20	47.00	2		\N	\N	\N	\N	55	2020-10-05 11:44:46.625273	2020-10-05 11:44:46.625273	自訂	\N	\N	2019	12
95	民生南路590巷1號	4900000	30.50	45.00	2		\N	\N	\N	\N	55	2020-10-05 11:44:46.633076	2020-10-05 11:45:11.708508	自訂	\N	\N	2020	5
56	民生南路545巷17弄1~30號(21) \t  \t\t 透天厝\t\t	7700000	63.33	26.00	全/4	https://drive.google.com/file/d/1O1kOMQWiotKHknjkdG8tNMs650JjS8v_/view?usp=drivesdk	曾友和	劉家彰	1.32	1.26	31	2020-08-27 14:32:54.298926	2020-10-06 06:20:52.078841	自訂	星座不加成臨路寬度假存1.15聯外道路加成1.15	屋況 1.0、臨路 1.2 、路寬1.05		
102	光華街119巷20號	640000	4.85	60.00	2		\N	\N	\N	\N	58	2020-10-16 15:15:09.141958	2020-10-16 15:15:09.141958	自訂	\N	\N	2020	3
112	福德路91~120號	290	40.21	25.00	3		曾昱銓	曾友志	1.20	1.00	64	2020-11-05 20:24:44.667993	2020-11-05 23:58:10.561747	自訂		依專案負責人所評	2018	3
106	芳安路17巷181~210號	1800000	20.53	44.00	2		\N	\N	\N	\N	61	2020-10-30 01:36:18.272682	2020-10-30 01:36:18.272682	自訂	\N	\N	2018	11
107	芳安路17巷181~210號	3280000	20.53	45.00	2		\N	\N	\N	\N	61	2020-10-30 01:36:18.279848	2020-10-30 01:36:18.279848	自訂	\N	\N	2020	3
108	新榮路35巷1~30號	8000000	64.73	16.00	6/14		\N	\N	\N	\N	62	2020-10-30 02:04:13.263341	2020-10-30 02:04:13.263341	自訂	\N	\N	2020	5
109	新榮路35巷1~30號	7300000	64.73	16.00	5/14		\N	\N	\N	\N	62	2020-10-30 02:04:13.267267	2020-10-30 02:04:13.267267	自訂	\N	\N	2020	5
114	信義路86巷20號	4760000	54.45	29.00	3		\N	\N	\N	\N	45	2020-11-13 10:23:20.019734	2020-11-13 10:23:20.019734	自訂	\N	\N	2020	6
113	仕豐路神農巷21弄1~30號	5600000	37.70	38.00	2		曾昱銓	曾友志	1.00	1.00	66	2020-11-13 05:12:06.519605	2020-11-13 10:53:00.596922	自訂		依原定	2019	9
111	公園路487巷35號	7100000	48.48	36.00	全/3		曾友和	劉家彰	1.00	1.20	63	2020-10-30 13:49:25.995464	2020-10-30 22:29:27.568081	自訂		新舊+0.2	2020	5
110	和緯路二段71巷11弄22號	3600000	25.89	50.00	全/2		曾友和	劉家彰	1.00	1.00	63	2020-10-30 13:49:25.992057	2020-10-30 22:29:49.116819	自訂			2020	4
121	 三重區長安街24號 	8050000	21.56	30.90	5/5		\N	\N	\N	\N	69	2020-11-21 09:48:17.496758	2020-11-21 10:00:08.801537	自訂	\N	\N	2020	7
115	開元路148巷101弄6號	6000000	23.50	50.00	2		劉家彰	曾友和	1.20	1.00	67	2020-11-20 12:08:04.021419	2020-11-20 23:46:11.654352	自訂	增建+0.2	屋況1.0、臨路1.0、交通動線1.0	2020	5
120	三重區中央北路71號轉長元街巷內第二間	9050000	25.85	45.00	4/4		\N	\N	\N	\N	69	2020-11-21 09:48:17.494507	2020-11-21 10:13:44.79256	自訂	\N	\N	2020	6
118	永二街300號	8200000	35.31	31.00	2	https://drive.google.com/file/d/1gPPCIePqBHPuNZpBAUHp3ywN1su7ZXxZ/view?usp=sharing	曾友和	張浩文	0.72	0.70	68	2020-11-20 13:15:29.737354	2020-11-21 09:09:30.682506	自訂	屋況-0.2增加（2變三）、新舊-0.1，、臨路+0、交通0	比較標的的三樓有增建 房屋較新	2020	7
123	民生路314巷117號 	5800000	32.56	41.00	1/2		\N	\N	\N	\N	70	2020-11-23 13:53:31.123583	2020-11-23 13:55:00.40714	自訂	\N	\N	2020	3
124	友忠路805號	14000000	61.59	12.00	1/4		\N	\N	\N	\N	71	2020-11-23 14:30:24.417915	2020-11-23 14:30:24.417915	自訂	\N	\N	2020	2
125	友忠路762-1號	26600000	91.68	1.00	全/5		\N	\N	\N	\N	71	2020-11-23 14:30:24.425449	2020-11-23 14:30:24.425449	自訂	\N	\N	2020	9
128	麻豆區復興街1~30號 	3200000	38.96	39.40	1/3		\N	\N	\N	\N	76	2020-11-25 15:12:49.974265	2020-11-25 15:12:49.974265	自訂	\N	\N	2020	2
129	麻豆區興中路55巷1~30號	3600000	38.38	36.20	1/3		\N	\N	\N	\N	76	2020-11-25 15:12:49.988127	2020-11-25 15:12:49.988127	自訂	\N	\N	2019	2
133	北港鎮文明路100巷1~30號 	2750000	30.18	45.90	1/2		\N	\N	\N	\N	79	2020-11-27 14:05:17.812419	2020-11-27 14:05:17.812419	自訂	\N	\N	2019	2
132	大勇街139號	5600000	12.60	56.00	2		劉家彰	曾友和	0.70	0.70	73	2020-11-27 13:03:34.884938	2020-11-27 23:51:24.941768	自訂	參件坪數增建-0.2、屋況-0.05、路寬0、臨路-0.05	屋況增建還原0.7、臨路1、聯外1	2019	11
131	大勇街149號	3500000	19.70	58.00	2		劉家彰	曾友和	1.25	1.30	73	2020-11-27 12:44:21.206566	2020-11-27 23:44:03.003838	自訂	屋況+0.3、路寬0、臨路-0.05	屋況+0.30、臨路+0、聯外+0	2020	7
154	-海佃路三段48巷42弄24號 	3650000	24.74	42.00	全/2		\N	\N	\N	\N	90	2020-12-12 15:03:58.619776	2020-12-12 15:03:58.619776	自訂	\N	\N	2019	11
155	海佃路三段48巷42弄1~30號	3100000	25.14	43.00	全/2		\N	\N	\N	\N	90	2020-12-12 15:05:54.405831	2020-12-12 15:05:54.405831	自訂	\N	\N	2020	4
103	林森路二段192巷131號	6750000	28.00	48.00	2	https://drive.google.com/file/d/1bFPlCVDF_a6uCBc4YBWDt3CXhyuIKZtu/view?usp=sharing	劉家彰	曾友和	0.80	0.80	60	2020-10-23 14:16:51.860758	2020-11-28 00:11:43.531719	自訂	增建-0.2	屋況0.8,臨路1,聯外1	2020	1
134	東區東寧路296巷9號	7900000	28.93	46.90	1/2		劉家彰	曾友和	0.80	0.77	60	2020-11-27 14:26:19.76514	2020-11-28 00:14:18.409468	自訂	增建-0.2、屋況-0.05、臨路0、路寬+0.05	屋況0.7、臨路1.1、聯外1.0	2019	9
158	樹林區大安路241~270號 	7200000	25.58	42.00	2/4		\N	\N	\N	\N	92	2020-12-15 14:56:01.476503	2020-12-15 14:56:01.476503	自訂	\N	\N	2020	7
138	板橋區中山路一段206巷61~90號 	9120000	23.93	41.40	2/4		\N	\N	\N	\N	81	2020-12-02 14:00:50.342256	2020-12-02 14:00:50.342256	自訂	\N	\N	2019	12
139	板橋區中山路一段206巷91~120號	11000000	28.88	38.80	4/5		\N	\N	\N	\N	81	2020-12-02 14:00:50.345484	2020-12-02 14:00:50.345484	自訂	\N	\N	2019	9
159	樹林區樹德街136巷31~60號	7200000	20.12	43.80	2/4		\N	\N	\N	\N	92	2020-12-15 14:56:01.478849	2020-12-15 14:56:01.478849	自訂	\N	\N	2020	7
160	萬華區環河南路一段155巷1~5號	8850000	28.29	36.80	5/5		\N	\N	\N	\N	93	2020-12-15 16:36:46.500724	2020-12-15 16:36:46.500724	自訂	\N	\N	2020	2
161	萬華區西園路一段34巷21~25號 	8980000	29.94	40.50	5/5		\N	\N	\N	\N	93	2020-12-15 16:36:46.502833	2020-12-15 16:36:46.502833	自訂	\N	\N	2019	4
126	大林鎮平林里32鄰信義街31~60號	2400000	30.64	27.60	4/5	https://drive.google.com/file/d/1o_t-c8JEhatA6kuPO9ATOCH94GssExNg/view?usp=sharing	曾友和	劉家彰	0.80	0.90	72	2020-11-24 13:58:46.656203	2020-12-23 14:38:33.865488	自訂	屋況1.0、臨路0.8、聯外交通1	增建1.0、路寬1.0、臨路雙邊活巷-0.9	2020	9
127	大林鎮信義街61~90號	3650000	40.64	27.30	4/5	https://drive.google.com/file/d/14INv53iwhmueBLcMrMy636AXRUZfCMFo/view?usp=sharing	曾友和	劉家彰	0.72	0.79	72	2020-11-24 13:58:46.658399	2020-12-23 14:38:33.869594	自訂	屋況0.90、臨路0.8、聯外交通1	新舊0.9、增建1.0、路寬1.0、臨路雙邊活巷停車欸-0.88	2020	6
141	蘆洲區正和街96巷31~60號 	8150000	28.51	38.40	2/5	https://drive.google.com/file/d/1ojtLObQ-BzW7ude-6ZtAEYatWI4_RqL2/view?usp=sharing	曾友和	張浩文	0.85	0.80	83	2020-12-02 15:15:31.558945	2020-12-13 14:56:35.292793	自訂	屋況0.95、臨路0.95、聯外交通0.95	標的物位於無尾小巷內樓下宮廟出入口.巷道狹小	2019	9
142	蘆洲區正和街96巷31~60號 	7250000	27.50	35.00	2/5	https://drive.google.com/file/d/1ojtLObQ-BzW7ude-6ZtAEYatWI4_RqL2/view?usp=sharing	曾友和	張浩文	0.85	0.80	83	2020-12-02 15:17:32.849796	2020-12-13 14:57:08.303787	自訂	屋況0.95、臨路0.95、聯外交通0.95	標的物位於無尾小巷內樓下宮廟出入口.巷道狹小	2019	10
153	板橋區漢生西路89巷2弄1~30號	8500000	24.93	48.80	2/3	https://drive.google.com/file/d/1orMa68QV9l2DjyvQywD3pxJzfsnWqi4v/view?usp=sharing	曾友和	張浩文	1.03	1.05	82	2020-12-11 15:09:53.193212	2020-12-13 15:08:23.701725	自訂	屋況1.0、臨路0.9、聯外交通1.15	交通動線較相對比較標的物佳.屋況相當	2020	9
152	板橋區漢生西路89巷3弄1~30號	8100000	19.97	48.60	2/3	https://drive.google.com/file/d/1orMa68QV9l2DjyvQywD3pxJzfsnWqi4v/view?usp=sharing	曾友和	張浩文	1.03	1.04	82	2020-12-11 15:06:52.630125	2020-12-13 15:08:54.353827	自訂	屋況1.0、臨路0.9、聯外交通1.15	交通動線較相對比較標的物佳.屋況相當	2020	7
150	裕農路288巷96弄25號\t\t	7300000	22.82	46.00	全/2	https://drive.google.com/file/d/1E2WhR9bdqGGvWa8p59SxLg6DoXMwB3Al/view?usp=sharing	曾友和	劉家彰	0.68	0.72	91	2020-12-11 14:24:08.530374	2020-12-19 01:07:26.139209	自訂	屋況增建*2/2.5、臨路寬度0.85、聯外交通1.0	增建*2/2.5、路寬0.9、臨路1	2020	7
136	開元路148巷42或44號	3300000	22.50	36.00	2/4	https://drive.google.com/file/d/1h0CbSRmTdjjvxQDYqtP0elGROFZSpf9K/view?usp=sharing	曾友和	劉家彰	0.90	0.90	80	2020-12-01 05:26:46.000947	2020-12-06 09:27:19.149105	自訂	屋況樓層0.9、臨路1、聯外1	屋況-0.05、路寬0、樓層-0.05	2020	3
143	康定路150巷1弄1~30號	3200000	29.02	35.00	2		曾昱銓	曾友志	1.40	1.00	85	2020-12-06 08:50:49.490753	2020-12-06 10:25:49.626341	自訂	陽台及公設	不加成	2020	3
144	建國路一段299巷1~30號	2700000	28.59	33.00	5		曾昱銓	曾友志	1.45	1.00	86	2020-12-06 09:04:52.475385	2020-12-06 10:27:02.060539	自訂	陽台及公設	不加成	2020	4
145	甲南里忠孝街15鄰109巷1號	3000000	51.16	29.00	全/3		\N	\N	\N	\N	87	2020-12-07 14:44:26.936861	2020-12-07 14:44:26.936861	自訂	\N	\N	2020	3
146	中正區中華路二段376~380號	13500000	27.32	49.40	4/5		\N	\N	\N	\N	88	2020-12-07 15:50:42.39501	2020-12-07 15:50:42.39501	自訂	\N	\N	2019	8
147	萬華區中華路二段336~340號	4200000	7.91	51.90	4/5		\N	\N	\N	\N	88	2020-12-07 15:50:42.397271	2020-12-07 15:50:42.397271	自訂	\N	\N	2020	6
148	文山區景福街121~125號	15150000	34.50	38.60	2/5		\N	\N	\N	\N	89	2020-12-07 16:40:33.721999	2020-12-07 16:40:33.721999	自訂	\N	\N	2019	4
149	文山區景福街131~140號	12200000	30.02	38.90	3/5		\N	\N	\N	\N	89	2020-12-07 16:42:40.971927	2020-12-07 16:42:40.971927	自訂	\N	\N	2019	8
156	健康路一段391巷4號\t	7100000	48.48	39.00	全/4	https://drive.google.com/file/d/1feZMrWYynQ1EYalg2MuRCo4amnxz55jt/view?usp=sharing	劉家彰	曾友和	0.98	0.98	59	2020-12-15 14:31:31.905588	2020-12-19 00:40:52.149196	自訂	增建*4/4.5、路寬1.1、聯外交通1	屋況增建*0.4/0.45、臨路寬度1.1、聯外交通1.0	2019	4
151	裕農路288巷70弄37號\t	7100000	24.42	44.00	全/2	https://drive.google.com/file/d/1QaqRxO73yNOD_-PXSk9_IyhF5fTkzQCz/view?usp=sharing	曾友和	劉家彰	0.68	0.74	91	2020-12-11 14:28:44.949042	2020-12-19 01:10:51.060337	自訂	屋況增建*2/2.5、臨路寬度0.85、聯外交通1.0	增建*2/2.5、路寬單邊內縮可停0.92、臨路1.0	2020	7
162	竹子腳1-7號	2400000	55.08	24.00	3		\N	\N	\N	\N	78	2020-12-22 00:54:07.327768	2020-12-22 00:54:07.327768	自訂	\N	\N	2020	6
163	竹子腳95-10號	8390000	41.11	40.00	1		\N	\N	\N	\N	78	2020-12-22 00:57:28.840727	2020-12-22 00:57:28.840727	自訂	\N	\N	2019	5
157	健康路二段53巷4號	6660000	26.11	50.00	全/2	https://drive.google.com/file/d/1BF_N4-XWxP8-1Yt6HJnx1RarUu5GihMK/view?usp=sharing	劉家彰	曾友和	0.97	0.88	59	2020-12-15 14:31:31.920065	2020-12-19 00:47:43.233641	自訂	增建*2/2.5、路寬單邊停車1.1、臨路單一出入巷1.1	屋況增建*2/2.5、臨路寬度1.1、聯外交通1.0	2020	4
164	保安路57巷1~30號 109/7\t  \t\t 透天厝\t\t	7200000	17.34	\N	全/1		\N	\N	\N	\N	12	2020-12-25 14:17:30.647928	2020-12-25 14:17:30.647928	自訂	\N	\N	2020	7
165	西門路一段761巷1~30號	4000000	14.15	108.00	全/1		\N	\N	\N	\N	12	2020-12-25 14:17:30.665596	2020-12-25 14:17:30.665596	自訂	\N	\N	2019	3
166	大德街105號	8400000	18.30	57.00	全/1		\N	\N	\N	\N	12	2020-12-25 14:21:08.908866	2020-12-25 14:21:08.908866	自訂	\N	\N	2020	10
167	新港鄉宮後村22鄰中正路152-7號	2700000	38.68	39.00	3		\N	\N	\N	\N	99	2020-12-31 03:21:09.153599	2020-12-31 03:21:09.153599	自訂	\N	\N	2020	2
168	古民村古民137-1號	1600000	39.90	45.00	2		\N	\N	\N	\N	99	2020-12-31 03:24:39.010091	2020-12-31 03:24:39.010091	自訂	\N	\N	2020	6
171	長勝北街170~178號 \t	6110000	23.47	51.00	全/2		曾友和	劉家彰	0.64	0.65	100	2021-01-01 10:18:15.00906	2021-01-02 01:19:26.855666	自訂	屋況0.8（2.5/2： 兩層樓增建為3層）、臨路0.9（ 無法同行汽車）、聯外交通0.9	增建0.8、路寬無法停汽車0.9、臨路無尾巷0.9	2020	9
169	長榮路五段175巷7號(或9號)\t	4000000	20.41	48.00	全/2	https://drive.google.com/file/d/1NYbNcyVcqHAfu4HNHwZN5ObzA7fCwGfQ/view?usp=sharing	曾友和	劉家彰	1.20	1.19	100	2021-01-01 10:10:09.822631	2021-01-02 01:26:31.627856	自訂	屋況1、臨路1、聯外交通1、 1.2南鐵確定東一工程開工	屋況增建0.9、路寬1.0、臨路無尾巷1.1、增值空間南鐵東移1.2	2019	10
170	長榮路五段102巷1號 (或3號)\t	4350000	24.84	48.00	全/2		曾友和	劉家彰	1.20	1.15	100	2021-01-01 10:15:22.879275	2021-01-02 01:31:46.29339	自訂	屋況1、臨路1、聯外交通1、 1.2南鐵確定東移工程開工	屋況增建0.95、路寬1.0、臨路1.0、增值空間1.2	2019	9
192	建中街4鄰72巷13號	3980000	23.81	48.00	全/2		\N	\N	\N	\N	116	2021-02-09 11:24:12.958456	2021-02-09 11:24:35.74733	自訂	\N	\N	2020	3
172	忠義八巷31~60號	6500000	21.52	41.00	2		曾昱銓	曾友志	0.70	1.00	101	2021-01-05 09:56:28.67481	2021-01-05 11:25:09.12763	自訂		依分區專案評估	2020	5
173	北投區中央北路四段456巷5弄1~5號 	9500000	30.13	38.50	3/4		\N	\N	\N	\N	98	2021-01-08 08:03:01.996497	2021-01-08 08:03:01.996497	自訂	\N	\N	2019	10
174	北投區中央北路四段456巷1~5號 	7900000	22.88	32.40	3/5		\N	\N	\N	\N	98	2021-01-08 08:03:02.000398	2021-01-08 08:03:02.000398	自訂	\N	\N	2020	7
175	  松山區寶清街101~105號 	11380000	23.82	41.90	5/5		\N	\N	\N	\N	94	2021-01-08 08:29:11.813137	2021-01-08 08:29:11.813137	自訂	\N	\N	2019	3
176	 松山區南京東路五段389巷5弄11~15號	9310000	21.47	37.50	5/5		\N	\N	\N	\N	94	2021-01-08 08:29:11.815985	2021-01-08 08:29:11.815985	自訂	\N	\N	2019	6
177	 南京東路五段389巷11弄6號	11800000	20.08	27.00	4/5		\N	\N	\N	\N	94	2021-01-08 09:01:53.723307	2021-01-08 09:01:53.723307	自訂	\N	\N	2020	4
178	汐止區大同路二段312巷16弄31~60號 	8800000	29.42	32.80	4/5		\N	\N	\N	\N	104	2021-01-12 14:55:26.049651	2021-01-12 14:55:26.049651	自訂	\N	\N	2020	10
179	汐止區大同路二段312巷16弄31~60號	8700000	32.46	31.50	4/5		\N	\N	\N	\N	104	2021-01-12 14:55:26.052458	2021-01-12 14:55:26.052458	自訂	\N	\N	2019	7
180	南港區興華路76巷1~10號	15800000	32.30	40.60	3/4		\N	\N	\N	\N	106	2021-01-12 16:36:54.562628	2021-01-12 16:36:54.562628	自訂	\N	\N	2020	7
181	南港區東明街78巷1~5號	14000000	27.34	50.00	3/4		\N	\N	\N	\N	106	2021-01-12 16:36:54.580483	2021-01-12 16:36:54.580483	自訂	\N	\N	2019	9
193	建中街68號	3900000	35.17	39.00	全/3		\N	\N	\N	\N	116	2021-02-09 11:24:12.963831	2021-04-20 06:12:50.681216	自訂	\N	\N	2020	6
205	宮後街13號	14020000	57.41	\N	2	https://drive.google.com/file/d/14I2VTi0Uu-fe3EyIU685HP3kBvBgcbZ3/view?usp=sharing	劉家彰	曾友和	0.95	1.10	121	2021-03-05 15:37:11.110059	2021-03-08 12:41:43.333794	自訂	屋況0.95、路寬1.0、聯外交通1.0	屋況+0、臨路+0、聯外交通+0.1	2020	8
199	五妃街203-2號	6000000	40.94	38.00	3/5		劉家彰	曾友和	1.20	1.20	119	2021-02-27 00:27:10.153364	2021-02-27 00:36:59.751393	自訂	屋況1.0、臨路1.0、路寬1.0、漲勢1.2	屋況1.0、路寬1.0、 聯外交通1.0、其他1.2（1年內區域升值）		
200	府緯街67號	15000000	52.16	33.00	2		\N	\N	\N	\N	120	2021-03-03 01:01:58.790707	2021-03-03 01:01:58.790707	自訂	\N	\N	2020	4
195	信義街75號	5200000	27.11	51.00	全/2		曾友和	劉家彰	1.01	0.88	114	2021-02-09 11:55:22.392271	2021-02-10 01:09:32.798915	自訂	0.7增建屋況、1.2臨路、聯外1.2	屋況增建0.8、路寬1.0、臨路1.1	2019	5
201	西門路一段438號	25250000	45.47	52.20	2		\N	\N	\N	\N	120	2021-03-03 01:01:58.794688	2021-03-03 01:01:58.794688	自訂	\N	\N	2020	9
196	臨安路一段212巷23號\t\t	4270000	36.40	50.00	全/2		曾友和	劉家彰	1.08	1.19	114	2021-02-09 12:00:24.802872	2021-02-10 01:12:37.002887	自訂	0.7增建屋況、1.4臨路、聯外1.1	屋況增建0.9、路寬1.1、臨路1.2	2019	3
183	和誠街61~90號	5200000	26.90	47.00	2		曾昱銓	曾友志	0.42	1.00	109	2021-01-15 14:37:58.836374	2021-01-15 15:10:39.225927	自訂		依專案負責人評估不加成	2019	9
182	蓬萊121~150號	5300000	36.43	38.00	2		曾昱銓	曾友志	0.62	1.00	108	2021-01-15 14:26:57.502575	2021-01-15 15:11:50.037103	自訂		依專案負責人評估不加成	2020	4
185	鹽埔鄉中正路1~30號	1000000	36.94	47.00	2		曾昱銓	\N	3.00	\N	111	2021-01-18 08:52:38.728202	2021-01-18 08:56:14.391679	自訂		\N	2019	4
186	安中路一段189巷63弄20號	3500000	24.78	43.00	2		\N	\N	\N	\N	112	2021-01-18 12:02:42.727073	2021-01-18 12:02:42.727073	自訂	\N	\N	2020	2
187	汐止區忠孝東路241~270號	7200000	25.55	33.90	2/5		\N	\N	\N	\N	96	2021-01-18 14:34:47.931014	2021-01-18 14:34:47.931014	自訂	\N	\N	2019	4
188	汐止區忠孝東路258巷1~30號 	7600000	26.26	45.90	2/3		\N	\N	\N	\N	96	2021-01-18 14:34:47.934997	2021-01-18 14:34:47.934997	自訂	\N	\N	2019	11
189	汐止區大同路二段312巷16弄31~60號	8800000	29.42	32.80	4/5		\N	\N	\N	\N	95	2021-01-18 14:54:19.214806	2021-01-18 14:54:19.214806	自訂	\N	\N	2020	10
190	汐止區大同路二段312巷16弄1~30號	9000000	32.66	31.60	3/5		\N	\N	\N	\N	95	2021-01-18 14:54:19.217781	2021-01-18 14:54:19.217781	自訂	\N	\N	2019	8
184	長榮街14巷1~30號	2000000	31.46	51.00	2		曾昱銓	曾友志	1.20	1.00	110	2021-01-18 08:45:37.510181	2021-01-28 12:49:09.350446	自訂		依評估不加成	2019	12
202	大同路一段70巷15號4F	2780000	25.56	39.00	4/5		\N	\N	\N	\N	123	2021-03-05 15:16:12.68293	2021-03-05 15:16:12.68293	自訂	\N	\N	2020	11
203	大同路一段70巷13號3F	3360000	30.41	35.00	3/5		\N	\N	\N	\N	123	2021-03-05 15:16:12.684863	2021-03-05 15:16:12.684863	自訂	\N	\N	2020	6
197	九如一路871~900號	3000000	20.83	41.00	5		曾昱銓	曾友志	1.00	1.00	117	2021-02-19 14:43:42.270427	2021-02-20 02:29:15.572981	自訂		依專案人員評估	2020	3
198	金潭路279巷11弄1~30號	2800000	24.56	39.00	2		曾昱銓	曾友志	0.90	1.00	118	2021-02-19 14:51:43.298533	2021-02-20 02:31:48.597306	自訂		依專案人員評估	2020	10
206	北門路二段576巷9號4樓	6680000	49.67	17.00	4/10		\N	\N	\N	\N	124	2021-03-05 16:00:52.703724	2021-03-05 16:00:52.703724	自訂	\N	\N	2020	6
207	北門路二段576巷9號8樓	6800000	40.64	17.00	8/11		\N	\N	\N	\N	124	2021-03-05 16:00:52.708736	2021-03-05 16:00:52.708736	自訂	\N	\N	2020	8
204	西門路二段300巷1號	17500000	73.50	0.00	4	https://drive.google.com/file/d/1VZwfsxTlmv-0QOX-5Zrr2ztNYqxokK4Y/view?usp=sharing	劉家彰	曾友和	0.93	1.00	121	2021-03-05 15:32:59.462153	2021-03-08 12:41:43.336493	自訂	屋況0.95、路寬1.0、聯外交通0.98	屋況+0、臨路+0、聯外交通+0	2020	11
191	仁德區德善一街27巷18號	5500000	32.46	35.20	1/2	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	劉家彰	曾友和	0.90	0.85	115	2021-02-07 14:54:24.680569	2021-03-13 03:50:18.440636	自訂	屋況1.0、增建1.0、路寬1.0、臨路0.9	屋況0.8（2增3）再加0.1、臨路1、臨外交通0.95	2019	5
208	安南區郡安路三段250巷2弄20號	6380000	29.34	39.70	1/2	https://drive.google.com/file/d/1X6v3H4TedS6VX5B0zB6uALgeSB0rIiCA/view?usp=drivesdk	劉家彰	曾友和	0.85	0.72	122	2021-03-09 13:57:37.996244	2021-03-15 10:51:32.987797	自訂	\t屋況0.85、、路寬1.0、臨路1.0	屋況0.8、臨路0.9、聯外交通1	2020	10
194	後壁里民安路二段138巷9號	7380000	55.12	27.00	全/4	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	劉家彰	曾友和	1.05	1.10	115	2021-02-09 11:39:34.616514	2021-03-13 03:50:18.445118	自訂	屋況0.95、增建1.0、路寬1.0、臨路1.1（無尾巷）	屋況1、臨路1、臨外交通1.1	2020	1
227	護安街73號	8200000	72.39	43.00	全/3		\N	\N	\N	\N	136	2021-03-26 10:21:51.323499	2021-03-26 10:21:51.323499	自訂	\N	\N	2020	5
209	安南區郡安路三段236巷17弄13號	6300000	31.28	40.00	1/2	https://drive.google.com/file/d/1WPqk2k0tBY59kAk2T-_ljANAWdyjgXHM/view?usp=drivesdk	劉家彰	曾友和	0.88	0.72	122	2021-03-09 13:57:38.000473	2021-03-15 10:51:32.98476	自訂	\t屋況0.8、、增建1.1、路寬1.0、臨路1.0	屋況0.85、臨路0.85、聯外交通1	2020	2
228	建國街51號 108/7\t 	4500000	32.30	34.00	全/2		\N	\N	\N	\N	136	2021-03-26 10:21:51.324896	2021-03-26 10:21:51.324896	自訂	\N	\N	2019	7
229	大同區重慶北路三段9巷31~35號 	12300000	25.36	47.40	2/4		\N	\N	\N	\N	97	2021-03-26 13:56:40.766178	2021-03-26 13:56:40.766178	自訂	\N	\N	2019	11
230	大同區重慶北路三段9巷16~20號 總價：	11000000	24.20	36.50	4/5		\N	\N	\N	\N	97	2021-03-26 13:56:40.780699	2021-03-26 13:56:40.780699	自訂	\N	\N	2020	4
211	七甲里南潭二街99巷38弄7號	8600000	48.68	9.00	全/3		\N	\N	\N	\N	126	2021-03-18 13:58:11.852712	2021-03-18 13:58:40.640304	自訂	\N	\N	2020	7
214	光華街217號	6250000	45.25	40.00	全/3		\N	\N	\N	\N	127	2021-03-18 14:17:26.853465	2021-03-18 14:17:26.853465	自訂	\N	\N	2020	9
215	光華街102號\t	2500000	16.97	49.00	全/2		\N	\N	\N	\N	127	2021-03-18 14:17:26.857704	2021-03-18 14:17:26.857704	自訂	\N	\N	2020	9
216	中正路161巷1弄5號 	7000000	25.93	39.00	4/5		\N	\N	\N	\N	129	2021-03-18 14:50:14.071908	2021-03-18 14:50:14.071908	自訂	\N	\N	2020	10
217	中正路232號	7200000	32.74	37.00	3/5		\N	\N	\N	\N	129	2021-03-18 14:50:14.073362	2021-03-18 14:50:14.073362	自訂	\N	\N	2020	6
210	安樂三街40巷1~30號	3500000	31.88	40.00	2		曾昱銓	曾友志	0.97	1.00	125	2021-03-18 09:49:05.207331	2021-03-19 03:24:23.46248	自訂		不加成	2020	4
218	北花里中正路113巷27號	4500000	68.59	30.00	3		\N	\N	\N	\N	130	2021-03-19 14:33:57.584341	2021-03-19 14:33:57.584341	自訂	\N	\N	2020	6
219	北花里中正路73巷38弄15號	3000000	44.34	24.00	3		\N	\N	\N	\N	130	2021-03-19 14:39:21.791339	2021-03-19 14:39:21.791339	自訂	\N	\N	2019	5
236	中正路99巷12號3F	9850000	31.22	20.00	3/8		\N	\N	\N	\N	140	2021-03-28 13:29:41.990701	2021-03-28 13:29:41.990701	自訂	\N	\N	2019	5
224	南門路48巷16號 108/10\t 	5280000	40.52	37.00	3/4	https://drive.google.com/file/d/1-o50T3cgXgLQZF3WOsrEHzivUTohGmAv/view?usp=drivesdk	劉家彰	曾友和	1.16	0.99	132	2021-03-26 09:40:08.190164	2021-03-27 08:17:46.125715	自訂	屋況1.0、路寬1.0、臨路1.0、樓層1.05、增值1.1	屋況0.9、 樓層臨路1.1、聯外交通1	2019	10
220	中平九街91~120號6/9F	5380000	39.86	29.00	9		曾昱銓	\N	0.85	\N	133	2021-03-19 19:35:46.311399	2021-03-19 19:36:28.647115	自訂		\N	2020	9
212	南潭二街99巷16弄10號	8300000	48.68	9.00	全/3		曾友和	劉家彰	0.80	1.08	126	2021-03-18 13:58:11.854952	2021-03-19 23:43:19.287158	自訂	屋況0.8、臨路1、聯外交通1	屋況0.9、路寬1.0、臨路1.2	2020	5
52	 大安街211~240號(230號)	6300000	32.59	39.00	全/2(109/4)		\N	\N	\N	\N	30	2020-08-25 10:34:58.553391	2021-04-13 17:06:26.378987	自訂	\N	\N		
231	美崙街86巷8號	13200000	14.31	53.00	2/2		\N	\N	\N	\N	137	2021-03-26 14:39:44.617905	2021-03-26 14:45:10.398398	自訂	\N	\N	2019	9
233	南京西路185巷26號 108/12\t 	10500000	12.06	0.00	全/1		\N	\N	\N	\N	139	2021-03-26 15:07:47.722383	2021-03-26 15:07:47.722383	自訂	\N	\N	2019	12
235	西寧北路69-1號 109/1\t 	69000000	85.67	0.00	全/4		\N	\N	\N	\N	139	2021-03-26 15:07:47.730503	2021-03-26 15:07:47.730503	自訂	\N	\N	2020	1
11	安南區安通路四段119巷27弄1~30號	7000000	34.66	38.00	透天	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%8D%97%E5%8D%80?kw=%E5%AE%89%E9%80%9A%E8%B7%AF%E5%9B%9B%E6%AE%B5	曾友和	曾昱銓	1.00	1.00	6	2020-07-20 07:55:42.564402	2021-04-13 17:07:50.619889	自訂				
238	南門路44巷10之1號	4520000	34.84	37.00		https://www.houseplus.tw/m/estimation	\N	\N	\N	\N	132	2021-04-12 10:48:48.45066	2021-04-12 10:51:45.418456	仲介	\N	\N		
213	中正北路二段150號	7580000	52.28	27.00	全/4		曾友和	劉家彰	0.98	0.94	126	2021-03-18 14:02:37.441715	2021-03-19 23:55:34.015242	自訂	屋況1.0、臨路0.9、聯外0.9、似親友價1.2	屋況1.0、估價1.1、路寬0.9、臨路0.95	2020	12
221	西灣里大灣路942巷591號	8500000	43.13	30.00	全/2		\N	\N	\N	\N	128	2021-03-26 09:26:00.96278	2021-03-26 09:26:00.96278	自訂	\N	\N	2020	3
222	永華路233巷37號 109/6\t 	12000000	69.50	29.00	全/4		\N	\N	\N	\N	128	2021-03-26 09:26:00.966845	2021-03-26 09:26:16.154688	自訂	\N	\N	2020	6
226	-金華路二段9巷5號	2600000	22.89	42.00	4/4	https://drive.google.com/file/d/1cnHHezkWkoArPGDNoLdke5etPo8yUxNn/view?usp=sharing	曾友和	劉家彰	0.93	1.05	135	2021-03-26 10:06:28.793232	2021-03-28 12:39:23.481733	自訂	屋況0.85、臨路1.1、聯外交通1	屋況1.0、路寬1.1、頂加0.95、臨路1.0	2020	7
225	-金華路二段21巷7號	2830000	23.14	42.00	4/4	https://drive.google.com/file/d/1H30G7VTLW2UrPcJwqD3Kut0SXi7eziJx/view?usp=sharing	曾友和	劉家彰	0.93	0.94	135	2021-03-26 10:06:28.791421	2021-03-28 12:39:23.484737	自訂	屋況0.85、臨路1.1、聯外交通1\t	屋況0.9、路寬1.1、頂加0.95、臨路1.0	2020	8
223	南門路44巷15號 109/7\t 	5350000	38.86	37.00	3/4	https://drive.google.com/file/d/1ePp9keyUmVypLIKVW9qY-S2eAb5G62-s/view?usp=sharing	劉家彰	曾友和	1.05	0.99	132	2021-03-26 09:36:10.438617	2021-03-28 12:48:20.336336	自訂	屋況1.0、路寬1.0、臨路1.0、樓層1.05	屋況0.9、 樓層臨路1.1、聯外交通1\t	2020	7
239	好時價	3970000	34.16	\N			\N	\N	\N	\N	119	2021-04-13 10:43:31.747094	2021-04-13 10:44:01.557059	仲介	\N	\N		
237	好時價	2500000	22.89	42.00			\N	\N	\N	\N	135	2021-04-12 10:21:11.371891	2021-04-13 10:49:15.542117	自訂	\N	\N		
232	文林路587巷1~30號	11600000	26.96	50.00	2/3		\N	\N	\N	\N	137	2021-03-26 14:44:18.577441	2021-04-13 15:01:29.331693	自訂	\N	\N	2020	4
242	好時價	11190000	21.63	50.00			\N	\N	\N	\N	142	2021-04-13 15:01:47.400639	2021-04-13 15:01:47.400639	仲介	\N	\N		
243	好時價	11190000	21.63	\N			\N	\N	\N	\N	137	2021-04-13 15:02:47.507491	2021-04-13 15:03:13.007056	仲介	\N	\N		
244	好時價	10660000	23.29	50.00			\N	\N	\N	\N	88	2021-04-13 15:24:54.277687	2021-04-13 15:24:54.277687	仲介	\N	\N		
47	成功路600巷39弄1~30號(1號)105年3月	3000000	23.48	44.00	2	https://drive.google.com/folderview?id=1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	曾友和	劉家彰	1.05	0.97	29	2020-08-21 08:34:15.973235	2021-04-13 16:31:28.082534	自訂	無尾巷 巷尾 有空間 可利用	屋況舊(-0.02)、無尾巷尾(-0.01)		
48	文賢路218巷10弄1~30號 (6號)109/2	4330000	24.24	47.00	2	https://drive.google.com/folderview?id=1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	曾友和	劉家彰	0.75	0.95	29	2020-08-21 08:34:15.976584	2021-04-13 16:31:28.084161	自訂	臨路寬度 比較	進出位置較麻煩(-0.05)、屋況差不多(0)		
20	板橋區懷德街91~120號	9500000	25.62	46.60	3/4	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%87%B7%E5%BE%B7%E8%A1%9791%E8%99%9F/@25.0316992,121.4781761,3a,75y,344.67h,93.72t/data=!3m7!1e1!3m5!1sGGy9DCFqu95RE2EokApw0A!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3DGGy9DCFqu95RE2EokApw0A%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D17.913296%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442a845c13b7cd9:0xb352895716a9a73a!8m2!3d25.0318411!4d121.4782099	\N	\N	\N	\N	10	2020-07-20 08:12:54.702649	2021-04-14 04:38:27.771925	自訂	\N	\N		
245	好時價	10680000	32.71	\N			\N	\N	\N	\N	82	2021-04-14 15:02:40.417481	2021-04-14 15:02:40.417481	仲介	\N	\N		
246	好時價	4640000	26.14	\N			\N	\N	\N	\N	100	2021-04-14 15:08:48.020431	2021-04-14 15:08:48.020431	仲介	\N	\N		
247	好時價	5900000	21.00	\N			\N	\N	\N	\N	96	2021-04-14 15:24:15.744084	2021-04-14 15:25:34.087127	仲介	\N	\N		
249	新北市三重區自強路四段31巷30號5樓	6160000	22.00	40.00	5/5		\N	\N	\N	\N	143	2021-04-18 14:14:59.947156	2021-04-18 14:14:59.947156	仲介	\N	\N		
248	三重區自強路四段31巷2號	8000000	25.71	39.20	4/5		\N	\N	\N	\N	143	2021-04-18 14:14:59.941451	2021-04-18 14:32:25.222395	自訂	\N	\N	2020	11
250	-自強路四段31巷10號\t	7100000	23.60	39.00	5/5		\N	\N	\N	\N	143	2021-04-18 14:32:25.226998	2021-04-18 14:32:25.226998	自訂	\N	\N	2020	8
253	中山路一段206巷117號2樓	8110000	21.70	\N			\N	\N	\N	\N	144	2021-04-19 08:31:44.876633	2021-04-19 08:31:44.876633	仲介	\N	\N		
277	嘉義市溪興街231巷22弄28號	5300000	38.37	35.50	1/2		劉家彰	曾友和	1.20	1.20	148	2021-05-04 14:06:48.833119	2021-06-14 01:33:40.127918	自訂	屋況1.0、漲幅1.2、臨路1.0、路寬1.0	屋況（1.2、 時間加成）臨路（1）對外交通（1	2019	10
289	西區國城三街18號4樓之2	3730000	35.00	27.00	8		\N	\N	\N	\N	163	2021-06-03 09:27:08.324435	2021-06-14 01:40:12.410522	仲介	\N	\N	2020	12
252	中山路一段206巷101號\t	11000000	28.88	39.00	4/5		張浩文	曾友和	1.10	1.05	144	2021-04-18 15:02:03.764969	2021-04-19 08:38:08.865347	自訂	目標物件在二樓較便利	屋況（採光-0.05、樓層+0.1）、臨路（+0）、聯外交通（+0）	2019	9
290	國城三街22號3樓	3750000	38.10	27.00	8	https://market.591.com.tw/3022253?regionId=12&sectionId=373	劉家彰	曾友和	1.00	1.00	163	2021-06-03 10:09:19.855711	2021-06-14 01:39:47.601871	自訂		屋況（1.0、 時間加成）臨路（1）對外交通（1	2020	9
251	中山路一段206巷105號	10700000	27.82	37.00	4/5		張浩文	曾友和	1.10	1.05	144	2021-04-18 15:02:03.763249	2021-04-19 08:38:56.759205	自訂	目標物件在二樓較便利	屋況（採光-0.05、樓層+0.1）、臨路（+0）、聯外交通（+0）	2019	7
254	好時偠	5350000	51.28	\N			\N	\N	\N	\N	116	2021-04-20 02:12:29.653256	2021-04-20 02:12:29.653256	仲介	\N	\N		
255	忠仁里10鄰忠仁街113巷3號  \t44.10	4700000	44.10	30.00	全/3		\N	\N	\N	\N	116	2021-04-20 06:21:25.603118	2021-04-20 06:21:25.603118	自訂	\N	\N	2020	10
256	建平七街677號三樓之16	4000000	29.00	26.00	3		\N	\N	\N	\N	138	2021-04-21 01:28:57.634166	2021-04-21 01:28:57.634166	仲介	\N	\N		
257	建平七街661-900號11樓	4800000	39.42	26.00	12		\N	\N	\N	\N	138	2021-04-21 01:28:57.638447	2021-04-21 01:28:57.638447	自訂	\N	\N	2020	7
258	建平七街661-900號4樓	5100000	40.06	26.00	12		\N	\N	\N	\N	138	2021-04-21 01:28:57.641922	2021-04-21 01:28:57.641922	自訂	\N	\N	2020	7
241	美崙街86巷8號	13200000	14.31	53.00	2/2	https://drive.google.com/file/d/1XxMsmrYoI4tGIkxE-NXVr1CjJ9KyiCPA/view?usp=sharing	\N	\N	\N	\N	142	2021-04-13 14:56:44.640892	2021-04-21 14:24:51.045702	自訂	\N	\N	2019	9
240	文林路587巷1~30號	11600000	26.96	50.00	2/3	https://drive.google.com/file/d/1XxMsmrYoI4tGIkxE-NXVr1CjJ9KyiCPA/view?usp=sharing	\N	\N	\N	\N	142	2021-04-13 14:56:44.638891	2021-04-21 14:37:02.927685	自訂	\N	\N	2020	4
259	士林區士東路46巷46~50號	14800000	27.17	36.70	2/5		\N	\N	\N	\N	145	2021-04-21 15:01:07.934565	2021-04-21 15:01:07.934565	自訂	\N	\N	2020	11
260	士林區忠誠路二段70巷13弄1~5號	21000000	39.29	39.70	3/5		\N	\N	\N	\N	145	2021-04-21 15:01:07.936394	2021-04-21 15:01:07.936394	自訂	\N	\N	2019	11
261	好時價	19010000	37.42	\N			\N	\N	\N	\N	145	2021-04-22 14:22:00.750533	2021-04-22 14:22:00.750533	仲介	\N	\N		
262	新營區新進路二段445巷1~30號	6380000	46.90	31.50	1/3		\N	\N	\N	\N	146	2021-04-22 14:41:20.69367	2021-04-22 14:41:20.69367	自訂	\N	\N	2019	8
264	好時價	3850000	37.69	42.00			\N	\N	\N	\N	146	2021-04-22 14:41:20.708236	2021-04-22 14:44:56.555241	仲介	\N	\N		
263	新營區新進路二段445巷1~30號	9380000	46.90	32.10	1/3		\N	\N	\N	\N	146	2021-04-22 14:41:20.706849	2021-04-22 14:44:56.558713	自訂	\N	\N	2020	3
265	109/02公寓  東區長榮路二段24巷48弄1~30號	2380000	29.16	32.90	5/5	＿	\N	\N	\N	\N	147	2021-04-22 16:03:40.904472	2021-04-22 16:07:19.721502	自訂	\N	\N	2020	2
283	保泰路181~210號	13000000	48.22	42.00	4		曾昱銓	\N	0.69	\N	154	2021-05-04 16:49:20.766128	2021-05-04 16:50:13.058192	自訂		\N	2019	11
266	好時價	2470000	22.44	42.00		22.44	\N	\N	\N	\N	147	2021-04-22 16:03:40.908617	2021-04-22 16:08:31.156743	仲介	\N	\N		
268	好時價	5480000	26.81	\N			\N	\N	\N	\N	114	2021-04-27 14:19:38.973534	2021-04-27 14:19:38.973534	仲介	\N	\N		
269	嘉義市溪興街231巷20弄9號	6480000	40.00	20.00	2		\N	\N	\N	\N	148	2021-04-28 03:40:23.085855	2021-04-28 03:40:23.085855	仲介	\N	\N		
273	好時價	3980000	30.00	\N			\N	\N	\N	\N	150	2021-04-30 15:35:22.06036	2021-04-30 15:35:22.06036	仲介	\N	\N		
274	中芸路61~90號	2500000	26.98	37.00	2		曾昱銓	曾友志	0.65	1.00	151	2021-05-02 13:12:20.155761	2021-05-04 17:16:17.190269	自訂		不加成	2019	7
270	嘉義市文化路694 巷29弄26號	4880000	31.00	42.00	3		\N	\N	\N	\N	149	2021-04-28 03:49:46.375697	2021-06-14 01:24:18.134321	仲介	\N	\N		
272	南區鯤鯓路232巷44號	2870000	23.35	40.20	1/2		曾友和	劉家彰	0.72	0.97	150	2021-04-30 15:35:22.055078	2021-05-01 00:53:25.361421	自訂	屋況0.9、臨路0.8、聯外交通1	屋況1.2、臨路0.9、路寬0.9、增建1.0	2020	10
271	南區鯤鯓路232巷40號	2650000	23.35	39.90	1/2		曾友和	劉家彰	0.72	0.97	150	2021-04-30 15:35:22.049733	2021-05-01 00:54:06.190316	自訂	屋況0.9、臨路0.8、聯外交通1	屋況1.2、臨路0.9、路寬0.9、增建1.0	2020	7
280	好時價	11500000	57.00	40.00	2/2		\N	\N	\N	\N	152	2021-05-04 14:29:57.782824	2021-06-14 01:51:22.536468	自訂	\N	\N		
288	西區國城三街18號6樓之2	4200000	35.12	27.00	8		劉家彰	曾友和	1.00	1.00	163	2021-06-03 09:27:08.322561	2021-06-14 01:42:35.376054	自訂		加成1.0）臨路（1）對外交通（1	2020	4
278	嘉義市溪興街231巷22弄30號	7000000	49.91	36.70	1/2		劉家彰	曾友和	1.10	1.10	148	2021-05-04 14:06:48.836941	2021-06-14 01:33:47.007786	自訂	屋況1.0、漲幅1.1、臨路1.0、路寬1.0	屋況（1.1、 時間加成）臨路（1）對外交通（1）	2020	12
281	好時價	6910000	60.50	\N			\N	\N	\N	\N	153	2021-05-04 14:47:33.107404	2021-05-04 14:47:33.107404	仲介	\N	\N		
284	嘉義市國城三街1~30號	3750000	38.11	26.40	3/8		\N	\N	\N	\N	155	2021-05-12 13:59:31.760747	2021-05-12 13:59:31.760747	自訂	\N	\N	2020	6
275	嘉義市文化路694巷13號	4250000	21.42	42.40	1/2	https://drive.google.com/file/d/1jEruEmEScrIo5TZPPhGJZfYTMrvPzG4t	劉家彰	曾友和	0.65	0.70	149	2021-05-04 13:55:20.132558	2021-06-14 01:20:40.083767	自訂	屋況增建*0.68、路寬1.0、臨路0.95	屋況（增建0.67）、臨路1、對外交通1	2020	10
285	好時價	4210000	35.00	\N			\N	\N	\N	\N	155	2021-05-12 13:59:31.765215	2021-05-12 13:59:31.765215	自訂	\N	\N		
286	新興路91巷14號	6240000	28.00	36.00	2		\N	\N	\N	\N	161	2021-05-20 14:54:12.719182	2021-05-20 14:54:12.719182	仲介	\N	\N	2020	12
287	臺南市南區新建路43巷13之1號	2780000	26.00	36.00	2		\N	\N	\N	\N	160	2021-05-20 15:05:53.082832	2021-05-20 15:05:53.082832	仲介	\N	\N	2020	12
282	嘉義市林森東路721~750號	5400000	52.97	16.30	6/13		曾友和	劉家彰	1.20	1.20	153	2021-05-04 14:50:29.598332	2021-06-14 01:55:38.221849	自訂	屋況（ 時間 加成1.2）臨路（1）對外交通（1	屋況1.0、漲幅1.2	2019	6
293	台南市中西區民生路2段215、217號	13360000	64.43	45.00	2		\N	\N	\N	\N	166	2021-06-19 15:02:56.37961	2021-06-19 15:02:56.37961	仲介	\N	\N		
291	台南市新營區新進路二段445巷6號	3380000	43.00	42.00	2		劉家彰	曾友和	1.40	1.40	131	2021-06-14 02:16:45.946418	2021-06-14 02:25:32.493486	自訂	屋況1.0、臨路1.0、漲幅1.4、路寬1.0	房屋現況 1.4、 臨路寬度 1.0、 對外聯絡	2017	12
292	台南市新營區新進路二段445巷4號	4730000	43.00	42.00	2		\N	\N	\N	\N	131	2021-06-14 02:16:45.950576	2021-06-14 02:20:34.403439	自訂	\N	\N		
295	民生路二段184號	26000000	134.84	50.70	1/3		\N	\N	\N	\N	166	2021-06-19 15:02:56.383025	2021-06-19 15:38:04.410611	自訂	\N	\N	2020	11
294	民生路二段234號	14000000	85.72	60.50	1/3		\N	\N	\N	\N	166	2021-06-19 15:02:56.381722	2021-06-19 15:38:04.413583	自訂	\N	\N	2020	8
296	河中街40號	11800000	102.75	54.00	3		\N	\N	\N	\N	166	2021-06-19 15:38:04.416261	2021-06-19 15:38:04.416261	自訂	\N	\N	2020	6
301	-安通一街19號	3750000	17.52	39.00	全/2		\N	\N	\N	\N	168	2021-06-25 11:56:51.779638	2021-06-25 11:56:51.779638	自訂	\N	\N	2020	6
300	安通路四段109巷2號	6000000	34.43	40.00	全/2		\N	\N	\N	\N	168	2021-06-25 11:56:51.775525	2021-06-25 12:00:36.68735	自訂	\N	\N	2020	10
302	台南市安南區安通路四段119巷27弄1號	5480000	29.43	40.00			\N	\N	\N	\N	168	2021-06-25 12:00:00.854532	2021-06-25 12:01:38.314416	自訂	\N	\N		
299	台南市東區青年路237號	8660000	50.00	40.00			曾友和	劉家彰	1.20	1.20	167	2021-06-25 11:42:46.424691	2021-06-26 00:44:35.96225	自訂	鐵路地下化增值	增值1.2		
298	前鋒路27號\t	12800000	50.47	44.00	全/3		曾友和	劉家彰	0.97	0.99	167	2021-06-25 11:38:03.181232	2021-06-26 00:46:57.043905	自訂	屋況0.8、臨路1.1、對外1.1	路寬1.1、臨路1.0、屋況0.9	2020	12
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
9	\N	\N	\N	\N	李碩冠 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	12	12	2020-08-05 10:46:18.236036	2020-08-05 10:46:18.236036	1	12	臺南市中西區開山路122巷38號
10	\N	\N	\N	\N	李信佑	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	12	12	2020-08-05 10:46:18.249166	2020-08-05 10:46:18.249166	1	12	新北市汐止區民權街2段28號3樓
11	\N	\N	\N	\N	李維倫 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	6	12	2020-08-05 10:46:18.251292	2020-08-05 10:46:18.251292	1	6	臺南市中西區民權路3段400巷32號3樓
13	\N	\N	\N	\N	陳俊一	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.545713	2020-08-06 14:23:36.545713	1	6	台南市東門路1號
14	\N	\N	\N	\N	陳俊二	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.555489	2020-08-06 14:23:36.555489	1	6	台南市東門路1號
15	\N	\N	\N	\N	陳俊三	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.557339	2020-08-06 14:23:36.557339	1	6	南市東門路1號
16	\N	\N	\N	\N	陳俊四	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.572467	2020-08-06 14:23:36.572467	1	6	南市東門路1號
17	\N	\N	\N	\N	陳俊五	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	96	18	2020-08-06 14:23:36.574968	2020-08-06 14:23:36.574968	1	6	南市東門路1號
6	t	f	t	t	李瑞鏗		\N														t	f	f	f	 	 	1	6	12	2020-07-20 10:20:05.907895	2020-09-05 04:15:14.830909	1	6	高雄市三民區自強一路207巷1-5號
12	\N	\N	\N	\N	李建賢	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	12	12	2020-08-05 10:46:18.270852	2021-01-04 07:32:58.39967	2	12	臺南市歸仁區文化十街10巷19弄16號
7	f	t	t	t	李焙棋即李壁鈞之繼承人	A123456789	2020-07-16 00:00:00	06-12345678	0921343456												f	f	f	f	 	 	1	6	12	2020-07-20 10:20:05.909592	2021-01-04 07:32:58.40206	1	6（公同共有）	新北市中和區景安路132巷15號
18	\N	\N	\N	\N	李建賢即李壁鈞之繼承人	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	36	12	2021-01-04 07:32:58.403846	2021-01-04 07:32:58.403846	1	36	臺南市歸仁區文化十街10巷19弄16號
\.


--
-- Data for Name: plusrateas; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.plusrateas (id, persona, plusa, objectbuild_id, created_at, updated_at, plusa_reason, plusa2, plusa_reason2) FROM stdin;
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
20200817053235
20200817065500
20200917010637
20201012032328
20201021030515
20201021052745
20201113120930
\.


--
-- Data for Name: subsigntrueas; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntrueas (id, signtruea, signtruea_first_name, signtruea_last_name, signtruea_date, yfcase_id, created_at, updated_at, signtruea_work_area) FROM stdin;
1	曾友志	曾	友志	2020-06-05	11	2020-07-20 09:00:10.462202	2020-07-20 09:03:18.762018	\N
2	曾友和	曾	友和	2020-06-03	2	2020-07-20 09:06:57.662559	2020-07-20 09:07:17.200448	\N
3	曾友和	曾	友和	2020-06-03	8	2020-07-20 09:08:08.542166	2020-07-20 09:08:35.432752	\N
4	曾友和	曾	友和	2020-06-05	7	2020-07-20 09:09:22.051265	2020-07-20 09:09:40.392684	\N
5	曾昱銓	曾	昱銓	2020-05-16	5	2020-07-20 09:10:37.296956	2020-07-20 09:10:54.955429	\N
6	曾昱銓	曾	昱銓	2020-05-16	6	2020-07-20 09:11:40.167975	2020-07-20 09:11:53.204311	\N
7	曾友和	曾	友和	2020-07-20	12	2020-07-20 10:24:10.500769	2020-07-20 10:24:10.500769	\N
8	曾友和	曾	友和	2020-07-31	13	2020-07-31 13:52:47.726296	2020-07-31 13:52:47.726296	\N
9	曾友和	曾	友和	2020-08-06	18	2020-08-06 14:09:57.240534	2020-08-06 14:09:57.240534	\N
11	曾友志	曾	友志	2020-08-08	19	2020-08-08 08:49:22.068145	2020-08-08 08:49:22.068145	\N
12	曾友志	曾	友志	2020-08-08	16	2020-08-08 09:09:02.325532	2020-08-08 09:09:02.325532	\N
13	曾友志	曾	友志	2020-08-09	14	2020-08-09 13:22:05.297582	2020-08-09 13:22:05.297582	\N
14	曾友和	曾	友和	2020-08-14	25	2020-08-14 04:24:16.889675	2020-08-14 04:24:16.889675	\N
15	曾友和	曾	友和	2020-08-14	26	2020-08-14 05:31:55.044147	2020-08-14 05:31:55.044147	\N
17	劉家彰	劉	家彰	2020-08-29	28	2020-08-29 00:04:05.666689	2020-08-29 00:04:05.666689	\N
18	劉家彰	劉	家彰	2020-09-01	27	2020-09-01 01:53:50.020635	2020-09-01 01:53:50.020635	\N
20	曾友志	曾	友志	2020-09-14	36	2020-09-14 03:52:49.474179	2020-09-14 03:52:49.474179	\N
22	曾友志	曾	友志	2020-10-05	54	2020-10-05 07:21:46.559595	2020-10-05 07:21:46.559595	\N
23	曾友和	曾	友和	2020-10-07	53	2020-10-07 03:45:58.428125	2020-10-07 03:45:58.428125	\N
24	曾友和	曾	友和	2020-10-07	53	2020-10-07 12:29:42.733591	2020-10-07 12:29:42.733591	\N
28	曾友志	曾	友志	2020-10-21	31	2020-10-21 09:51:52.895563	2020-10-21 09:51:52.895563	中彰投
29	曾友志	曾	友志	2020-10-23	57	2020-10-23 04:44:56.889246	2020-10-23 04:44:56.889246	中彰投
30	張浩文	張	浩文	2020-10-26	48	2020-10-26 11:37:17.668337	2020-10-26 11:37:17.668337	雙北桃竹苗
31	曾友志	曾	友志	2020-11-05	64	2020-11-05 23:55:05.897503	2020-11-05 23:55:05.897503	中彰投
32	曾昱銓	曾	昱銓	2020-11-10	42	2020-11-10 12:33:58.192549	2020-11-10 12:33:58.192549	高屏
33	曾友志	曾	友志	2020-11-13	66	2020-11-13 10:53:12.775062	2020-11-13 10:53:12.775062	中彰投
34	張浩文	張	浩文	2020-11-21	68	2020-11-21 07:35:28.010716	2020-11-21 07:35:28.010716	雙北桃竹苗
35	曾友志	曾	友志	2020-12-06	85	2020-12-06 10:26:00.257801	2020-12-06 10:26:00.257801	中彰投
36	曾友志	曾	友志	2020-12-06	86	2020-12-06 10:27:09.965785	2020-12-06 10:27:09.965785	中彰投
37	張浩文	張	浩文	2020-12-13	83	2020-12-13 14:57:33.457465	2020-12-13 14:57:33.457465	雙北桃竹苗
38	張浩文	張	浩文	2020-12-13	82	2020-12-13 15:09:51.130083	2020-12-13 15:09:51.130083	雙北桃竹苗
39	曾昱銓	曾	昱銓	2020-12-19	59	2020-12-19 12:05:57.224974	2020-12-19 12:05:57.224974	高屏
40	曾昱銓	曾	昱銓	2020-12-20	91	2020-12-20 15:41:37.825805	2020-12-20 15:41:37.825805	高屏
41	曾友志	曾	友志	2021-01-05	101	2021-01-05 11:24:21.579343	2021-01-05 11:24:21.579343	中彰投
42	曾友志	曾	友志	2021-01-13	107	2021-01-13 03:22:14.05443	2021-01-13 03:22:14.05443	中彰投
43	曾友志	曾	友志	2021-01-15	109	2021-01-15 15:09:11.670909	2021-01-15 15:09:11.670909	中彰投
44	曾友志	曾	友志	2021-01-15	108	2021-01-15 15:11:56.531013	2021-01-15 15:11:56.531013	中彰投
45	曾友志	曾	友志	2021-01-28	110	2021-01-28 12:47:21.472711	2021-01-28 12:47:21.472711	中彰投
46	曾友志	曾	友志	2021-02-20	117	2021-02-20 02:28:25.346033	2021-02-20 02:28:25.346033	中彰投
47	曾友志	曾	友志	2021-02-20	118	2021-02-20 02:31:05.602501	2021-02-20 02:31:05.602501	中彰投
48	曾友志	曾	友志	2021-02-25	73	2021-02-25 12:36:25.615446	2021-02-25 12:36:25.615446	中彰投
49	曾昱銓	曾	昱銓	2021-03-08	121	2021-03-08 13:53:18.54879	2021-03-08 13:53:18.54879	高屏
50	曾昱銓	曾	昱銓	2021-03-17	100	2021-03-17 03:41:09.292566	2021-03-17 03:41:09.292566	高屏
51	曾友志	曾	友志	2021-03-19	125	2021-03-19 03:22:51.999223	2021-03-19 03:22:51.999223	中彰投
52	曾友志	曾	友志	2021-05-04	151	2021-05-04 17:15:53.822038	2021-05-04 17:15:53.822038	中彰投
\.


--
-- Data for Name: subsigntruebs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntruebs (id, signtrueb, signtrueb_first_name, signtrueb_last_name, signtrueb_date, yfcase_id, created_at, updated_at, signtrueb_work_area) FROM stdin;
1	張浩文	張	浩文	2020-09-05	27	2020-09-05 08:11:39.343327	2020-09-05 08:11:39.343327	\N
2	張浩文	張	浩文	2020-09-05	28	2020-09-05 08:13:12.715986	2020-09-05 08:13:12.715986	\N
3	曾友和	曾	友和	2020-09-15	36	2020-09-15 14:23:04.835357	2020-09-15 14:23:04.835357	\N
4	曾昱銓	曾	昱銓	2020-10-23	31	2020-10-23 09:59:39.169982	2020-10-23 09:59:39.169982	高屏
5	曾友志	曾	友志	2020-11-10	42	2020-11-10 13:11:07.326428	2020-11-10 13:11:07.326428	中彰投
6	曾友和	曾	友和	2020-11-14	66	2020-11-14 08:37:34.560406	2020-11-14 08:37:34.560406	嘉南
7	吳俊男	吳	俊男	2020-11-21	24	2020-11-21 03:40:59.104762	2020-11-21 03:40:59.104762	嘉南
8	曾友和	曾	友和	2020-12-06	86	2020-12-06 23:06:22.624747	2020-12-06 23:06:22.624747	嘉南
9	曾友志	曾	友志	2020-12-20	91	2020-12-20 16:09:16.541174	2020-12-20 16:09:16.541174	中彰投
10	曾友志	曾	友志	2021-03-08	121	2021-03-08 15:57:37.536821	2021-03-08 15:57:37.536821	中彰投
\.


--
-- Data for Name: subsigntruecs; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.subsigntruecs (id, signtruec, signtruec_first_name, signtruec_last_name, signtruec_date, yfcase_id, created_at, updated_at, signtruec_work_area) FROM stdin;
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

COPY public.users (id, first_name, last_name, role, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, full_name, "userIdentityCard", "userBirthday", "userLocalPhone", "userMobilePhone", "userCountry", "userTownship", "userVillage", "userNeighbor", "userStreet", "userSection", "userLane", "userAlley", "userNumber", "userFloor", "userPublicOrPrivate", "userFullName", "userWorkArea") FROM stdin;
13	揚富	開發有限公司	\N	yangfu@gmail.com	$2a$11$2zwbA6gLtjKckKTJndcnbeuK6u0/fYBTx.QSpX67K.uRrAkLPHIV.	\N	\N	\N	2020-08-07 02:21:46.292755	2020-08-07 03:06:46.699291	揚富開發有限公司	64187207	2018-01-23	\N	\N	臺中市	大里區	\N	\N	新仁路	三段	\N	\N	49號	1樓	\N	\N	\N
14	鉅鈦	開發有限公司	\N	jutai@gmail.com	$2a$11$iYiZf5Rwd7dqmN9c8pCM1e5TKnF4lBUyY38RmPfdT73OqRPXJXE5.	\N	\N	\N	2020-08-07 02:24:53.55161	2020-08-07 03:06:46.706335	鉅鈦開發有限公司	83554300	2020-03-11	\N	\N	臺中市	大里區	\N	\N	新仁路	三段	72巷	\N	3號	1樓	\N	\N	\N
1	管	理者	1	admin@gmail.com	$2a$11$biE6TLmajNwSYDy.R3kh3OxClPxGtgsF6yDId/mWh1JsE1Bkx7sWS	\N	\N	\N	2020-07-20 02:58:29.600414	2020-08-09 09:18:30.096659	管理者	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	曾	桂雄	0	brainsou@gmail.com	$2a$11$jq0SC4ft3qphEI6u8y.AXuddz3UPTdynUcfbYgkc3MbFMFBY1AJLC	\N	\N	\N	2020-07-20 02:58:30.231692	2020-10-21 09:44:58.946416	曾桂雄	L103230313	\N		0911987701	高雄市	鳳山區			建國路	一段	17巷		86號		私	曾桂雄	高屏
9	王	建斌	0	bahg2001@gmail.com	$2a$11$nZtmHpqlUQ/VhnUsMgd7O.Wa4nRPLUnwRCMDQENcbfF9QyMYSTkTe	\N	\N	\N	2020-07-20 02:58:30.870679	2020-10-21 09:48:28.936067	王建斌		\N		\N											私	王建斌	嘉南
12	曾	智翊	0	sunmarbo@gmail.com	$2a$11$35H0K1hN5FQrT5bMqH4nk.FXO53fzrPU19nUbAgW2ao4CMWd9Ml9a	\N	\N	\N	2020-08-07 02:19:11.481507	2020-10-21 09:50:12.526807	曾智翊		\N		0912676719											私	曾智翊	中彰投
4	曾	昱銓	0	acme6801@gmail.com	$2a$11$7lvUaYwllgo/dNXJUWiJqelg/8vNfp.pY6/V5XzDfWKOjJpoP/1P6	\N	\N	2020-11-05 20:07:00.991721	2020-07-20 02:58:30.074442	2020-11-05 20:07:00.994909	曾昱銓	L125051272	\N		0911987707	高雄市	鳳山區			建國路	一段	17巷		86號		私	曾昱銓	高屏
8	曾	友和	0	sosan600715@gmail.com	$2a$11$SDF.EEpeT8D1/ZUzX7kMoeLQU3B9Uwx41bHMXqa.3ZN05cNLR0CXe	\N	\N	\N	2020-07-20 02:58:30.710781	2021-05-18 15:20:10.315774	曾友和	L121924265	1971-07-15		0921765023	臺南市	東區			東平路				11號	5樓	私	曾友和	嘉南
3	張	浩文	0	waterhao0709@gmail.com	$2a$11$zoNOfDd3VtG/JVWjHGP4/.VgBpubJ18ijM0pL5MV1MhMQ1cnxnFVu	\N	\N	\N	2020-07-20 02:58:29.916249	2021-06-10 09:43:37.21375	張浩文		\N		0920005858	新北巿	中和區			圓通路		198巷		32號		私	張浩文	雙北桃竹苗
2	吳	俊男	0	ryowu0329@gmail.com	$2a$11$l.PDhoYpwtkHPb7ddxxkfu/PMpy5/lBMg0lcgvm26ZfRDKJJZCUHi	\N	\N	\N	2020-07-20 02:58:29.758236	2021-06-18 15:39:54.251765	吳俊男	R111111333	1976-03-29	06-7222333	0921526137	台南市	東區			德東街				222號	6樓6	私	吳俊男	嘉南
7	曾	友志	0	7531karl@gmail.com	$2a$11$Vh0Jblcu3dNI.3Nygm34fu35y8ZZarGqUzKr4hFNJSFWFGHuhbkru	\N	\N	2021-02-20 02:30:54.638262	2020-07-20 02:58:30.553441	2021-02-20 02:30:54.640403	曾友志	L121920838	\N		0935770043	臺中市	大里區			新仁路	三段			49號		私	曾友志	中彰投
6	劉	家彰	0	nealeliu@gmail.com	$2a$11$U35P79R9X2DHOYc76a6C9e8sKbH5XVKiT3ICF6osfHBEAyOtv7ZSi	\N	\N	\N	2020-07-20 02:58:30.394661	2021-05-01 03:14:03.775481	劉家彰	P122190873	\N		0918332707	臺南市	東區			東平路				11號	5樓	私	劉家彰	嘉南
\.


--
-- Data for Name: yfcases; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.yfcases (id, case_number, other_address, auction_day_1, auction_day_2, auction_day_3, auction_day_4, floor_price_1, floor_price_2, floor_price_3, floor_price_4, click_1, click_2, click_3, click_4, monitor_1, monitor_2, monitor_3, monitor_4, margin_1, margin_2, margin_3, margin_4, auction_notes, first_survey_day, other_survey_day, foreclosure_announcement_title, foreclosure_announcement_link, object_photo_title, object_photo_link, net_price_registration_market_price_title, net_price_registration_market_price_link, net_price_registration_map_title, net_price_registration_map_link, net_price_registration_photo_title, net_price_registration_photo_link, auction_record_title, auction_record_link, other_notes, survey_resolution, final_decision, co_owner, occupy, register, parking_space, management_fee, rent, leak, easy_parking, railway, vegetable_market, supermarket, school, park, post_office, main_road, water_and_power_failure, good_vision, final_decision_date, country_id, township_id, user_id, created_at, updated_at, big_section, small_section, company, foreclosure_announcement_988_link, adv_find_condition, active_result, active_result_date, priority_purchase_result, target_number, cause_data, application_for_registration, reason_for_registration, marking_and_application_rights, "attached_Document_Content_1", number_of_attached_quantity_1, "attached_Document_Content_2", number_of_attached_quantity_2, "attached_Document_Content_3", number_of_attached_quantity_3, registration_notes, "deedtaxDateOfDeed", "deedtaxDeclarationDate", "deedtaxTransferPrice", "deedtaxChargeDaffairesTaxDeclarant", "deedtaxDebtTaxPaymentReceiptMethod", "deedtaxClosedNewsletter", "deedtaxUnderreportedDays", "deedtaxRemark", "deedtaxBuildingTransferLevel1", "deedtaxBuildingTransferLevel2", "deedtaxBuildingTransferLevel3", "deedtaxBuildingTransferLevel4", "deedtaxBuildingTransferLevel5", "deedtaxBuildingTransferLevel6", "deedtaxBuildingTransferLevel7", "deedtaxBuildingTransferStructure1", "deedtaxBuildingTransferStructure2", "deedtaxBuildingTransferStructure3", "deedtaxBuildingTransferStructure4", "deedtaxBuildingTransferStructure5", "deedtaxBuildingTransferStructure6", "deedtaxBuildingTransferStructure7", "deedtaxBuildingTransferArea1", "deedtaxBuildingTransferArea2", "deedtaxBuildingTransferArea3", "deedtaxBuildingTransferArea4", "deedtaxBuildingTransferArea5", "deedtaxBuildingTransferArea6", "deedtaxBuildingTransferArea7", "deedtaxBuildingTransferPublicBuildingNumber1", "deedtaxBuildingTransferPublicBuildingNumber2", "deedtaxBuildingTransferPublicBuildingNumber3", "deedtaxBuildingTransferPublicBuildingNumber4", "deedtaxBuildingTransferPublicBuildingNumber5", "deedtaxBuildingTransferPublicArea1", "deedtaxBuildingTransferPublicArea2", "deedtaxBuildingTransferPublicArea3", "deedtaxBuildingTransferPublicArea4", "deedtaxBuildingTransferPublicArea5", "deedtaxBuildingTransferPublicHoldings1", "deedtaxBuildingTransferPublicHoldings2", "deedtaxBuildingTransferPublicHoldings3", "deedtaxBuildingTransferPublicHoldings4", "deedtaxBuildingTransferPublicHoldings5", "housingTax", "refereeFee", "agreementSplitUnsuccessfulDate", exhibit1, exhibit2, exhibit3, exhibit4, "tabulationDate", "isMobileOrDesktop", "realestateregistrationRealEstateAgent", "complaintLitigationAgent", "debtorName", "debtorIdentitycard", "debtorBirthday", "debtorLocallphone", "debtorMobilelphone", "debtorNotes", "debtorCountry", "debtorTownship", "debtorVillage", "debtorNeighbor", "debtorStreet", "debtorSection", "debtorLane", "debtorAlley", "debtorNumber", "debtorFloor", "debtorBuildholdingpointperson", "debtorBuildholdingpointall", "debtorLandholdingpointperson", "debtorLandholdingpointall", "creditorName", "creditorIdentitycard", "creditorBirthday", "creditorLocallphone", "creditorMobilelphone", "creditorNotes", "creditorCountry", "creditorTownship", "creditorVillage", "creditorNeighbor", "creditorStreet", "creditorSection", "creditorLane", "creditorAlley", "creditorNumber", "creditorFloor", "creditorBuildholdingpointperson", "creditorBuildholdingpointall", "creditorLandholdingpointperson", "creditorLandholdingpointall", "houseTaxNumberCountry1", "houseTaxNumberCountry2", "houseTaxNumberTownship1", "houseTaxNumberTownship2", "houseTaxNumberBuilding1", "houseTaxNumberBuilding2", "houseTaxNumberBuilding3", "houseTaxNumberBuilding4", "houseTaxNumberHouseHold1", "houseTaxNumberHouseHold2", "houseTaxNumberHouseHold3", "newspaperAttached", now_or_before) FROM stdin;
4	108司執字114619號\t	金華路二段21巷1之1號	2020-05-19	\N	\N	\N	1200000	0	0	0	74	\N	\N	\N	1	\N	\N	\N	240000	\N	\N	\N	\N	\N	2020-05-11	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10904/17163817083.016.pdf	\N	https://www.google.com.tw/maps/place/702%E5%8F%B0%E5%8D%97%E5%B8%82%E5%8D%97%E5%8D%80%E9%87%91%E8%8F%AF%E8%B7%AF%E4%BA%8C%E6%AE%B521%E5%B7%B71%E8%99%9F/@22.9764889,120.1908,3a,75y,133.85h,88.54t/data=!3m7!1e1!3m5!1s4j-n3T1ikngLcsByTx8Gyw!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3D4j-n3T1ikngLcsByTx8Gyw%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D147.41145%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e75da325b0aef:0x2f28bd5bed925d37!8m2!3d22.9763917!4d120.1908683?hl=zh-hant-tw	\N		\N	\N	\N	\N	\N		\N	\N	放棄	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-07-17	17	223	6	2020-07-20 06:56:20.101289	2020-11-13 15:52:22.834671	鹽埕段		揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
7	109南金職亥字第223號\t	國華街一段56巷9號	2020-06-10	\N	\N	\N	830000	0	0	0	22	\N	\N	\N	1	\N	\N	\N	166000	\N	\N	\N	\N	2020-06-03	2020-06-06	\N	https://tfasc.blob.core.windows.net/importbulletin/10905_15103251.112	\N	https://drive.google.com/drive/folders/1MwTRY7Xi_70scqVbzlS60sUdbLLecKzL	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%9c%8b%e8%8f%af%e8%a1%97%e4%b8%80%e6%ae%b556%e5%b7%b79%e8%99%9f	\N	\N	放棄	f	f	t	f	f	f	f	f	f	t	f	t	t	t	f	f	f	2020-06-05	17	223	6	2020-07-20 08:00:39.471964	2020-11-13 15:52:22.857328			揚富開發有限公司		//3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
9	109年度司執字第1330號\t	泰安路23之7號4 樓	2020-05-13	2020-06-10	\N	\N	810000	689000	0	0	134	134	\N	\N	0	0	\N	\N	162000	138000	\N	\N	\N	2020-06-05	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/kld/10905/14090025540.001.pdf	\N	http://aomp1.judicial.gov.tw/KPIC/query/QUERYPIC_01v2.jsp?pic=../pic/KLD/10903/06100204939.jpg&rot=Y	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e6%b3%b0%e5%ae%89%e8%b7%af23%e4%b9%8b7%e8%99%9f	\N	\N	未判定	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-07-20	2	19	3	2020-07-20 08:06:33.921583	2020-11-13 15:52:22.872302	工建段		揚富開發有限公司		109年度司執字第1330號\t//3/2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
18	109司執字第30344號	健康路一段170巷3號之1	2020-08-18	\N	\N	\N	610000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	122000	\N	\N	\N	\N	2020-08-01	2020-08-08	\N	 http://aomp.judicial.gov.tw/abbs/sale/tnd/10907/27103531648.026.pdf	\N		\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/550661	\N	\N	4拍進場	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-08-08	17	221	6	2020-08-04 06:36:02.092934	2020-11-13 15:52:22.940277	郡王祠		揚富開發有限公司		109司執字第30344號/4拍進場/6/17		2020-08-08	無人優購		2020-08-28	\N	拍賣	\N	\N	\N	\N	\N	\N	\N		2020-08-06	2020-08-14	45000		 	 	\N								\N							\N							\N					\N					\N					\N								\N	\N	6		陳俊銘		\N				台南市	中西區			健康路	1	170		3-1		1	6	1	96		64187207	\N				台中市	大里區			新仁路	3			49																	\N	f
19	109年司執字030899號	復國二路16巷9號	2020-07-28	\N	\N	\N	2580000	0	0	0	97	\N	\N	\N	0	\N	\N	\N	516000	\N	\N	\N	\N	2020-08-01	2020-08-08	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-08-08	17	227	6	2020-08-04 06:53:37.257817	2020-11-13 15:52:22.94755	永仁段		揚富開發有限公司	https://tw.988house.com/auction/595973	109年司執字030899號/3拍進場/6/17		2020-08-08	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	黃文山	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
21	108司執字第  20437號	中 山路一段206巷 117之1號	2020-08-20	\N	\N	\N	3820000	0	0	0	97	\N	\N	\N	1	\N	\N	\N	770000	\N	\N	\N	\N	2020-08-11	2020-08-14	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10907/06135733991.003.pdf	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E4%B8%AD%E5%B1%B1%E8%B7%AF%E4%B8%80%E6%AE%B5206%E5%B7%B7117%E8%99%9F/@25.0134026,121.4706239,17z/data=!3m1!4b1!4m5!3m4!1s0x3442a8239fe29b75:0x708ac710a06b578c!8m2!3d25.0133978!4d121.4728126	\N	https://evertrust.yungching.com.tw/map?q=&lat=22.6110190101813&lng=120.267889946231&d=0&t=&a=&c=	\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-08-13	3	22	3	2020-08-13 15:07:14.65267	2020-11-13 15:52:22.96168	中山		鉅鈦開發有限公司	https://tw.988house.com/auction/595928	108司執字第  20437號//3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	謝文閔	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
14	109南金職午290號(108年度司執字第32797號)\t	安平路370巷3弄20號2樓	2020-07-08	2020-07-29	2020-08-19	\N	710000	568000	455000	0	43	68	102	\N	0	0	0	\N	142000	114000	91000	\N	\N	2020-07-04	2020-08-08	\N	https://tw.988house.com/auction/594927	\N	https://goo.gl/maps/psYVs2UkDkfvtdY96	\N	https://evertrust.yungching.com.tw/region/%E5%8F%B0%E5%8D%97%E5%B8%82/%E5%AE%89%E5%B9%B3%E5%8D%80?kw=%E5%AE%89%E5%B9%B3%E8%B7%AF	\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/370%e5%b7%b73%e5%bc%8420%e8%99%9f2%e6%a8%93	\N	\N	3拍進場	t	f	f	f	f	f	f	f	f	t	t	t	t	f	t	f	f	2020-09-03	17	225	6	2020-07-20 08:22:32.904963	2020-11-13 15:52:22.910832	新南段		揚富開發有限公司	https://tw.988house.com/auction/594927	109南金職午290號(108年度司執字第32797號)\t/3拍進場/6/17	第三人搶標	2020-09-03	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	林艮伶	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
3	109雄金職申15\t	武德街140巷28號	\N	\N	2020-05-27	\N	0	0	491000	0	\N	\N	69	\N	\N	\N	1	\N	\N	\N	99000	\N	\N	\N	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/10905_06172206.109	\N	https://www.google.com.tw/maps/place/806%E9%AB%98%E9%9B%84%E5%B8%82%E5%89%8D%E9%8E%AE%E5%8D%80%E6%AD%A6%E5%BE%B7%E8%A1%97140%E5%B7%B728%E8%99%9F/@22.6082776,120.3265989,3a,75y,62.62h,89.43t/data=!3m6!1e1!3m4!1syZ0q1b-1QyxP7Fuo2WJc3g!2e0!7i13312!8i6656!4m5!3m4!1s0x346e0358d6a43f7f:0x80e34ac9cf89931b!8m2!3d22.6082991!4d120.3266215?hl=zh-TW	\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	f	t	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-03-14	18	264	4	2020-07-20 06:51:10.236781	2021-03-14 13:01:53.515585			揚富開發有限公司		109雄金職申15\t/3拍進場/4/18	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
6	108年度南金職字第751號	安通路四段119巷27弄1號	2020-02-19	2020-03-11	2020-04-08	\N	2650000	2120000	1696000	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2020-02-08	2020-05-16	\N	https://tw.988house.com/Auction/AuctionDataShow.aspx?Caption=108%e5%8d%97%e9%87%91%e8%81%b7%e9%85%89751_99_2020-4-10.txt&Court=TNG	\N	https://maps.app.goo.gl/VmsqhKYHeagen52fA	\N		\N	\N	\N	\N	\N	https://實價登錄/	\N	\N	放棄	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	226	8	2020-07-20 07:55:42.552036	2021-04-13 17:07:50.602966	安西段		揚富開發有限公司		108年度南金職字第751號/放棄/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
10	108年度司執字第47156號	懷德街121號3樓	2020-02-11	2020-03-10	\N	\N	1010000	810000	0	0	\N	301	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	2020-02-12	2020-02-15	\N	https://tw.988house.com/Auction/AuctionDataShow.aspx?Caption=108%e6%97%a547156_2_2020-2-12.pdf&Court=PCD	\N	https://www.google.com.tw/maps/@25.0310432,121.4787308,3a,75y,49.25h,121.04t/data=!3m6!1e1!3m4!1sclj4hqkdufKyBreyhTzLGg!2e0!7i16384!8i8192	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e6%87%b7%e5%be%b7%e8%a1%97121%e8%99%9f3%e6%a8%93	\N	\N	放棄	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-14	3	22	8	2020-07-20 08:12:54.689641	2021-04-14 04:38:27.757156	江子翠段		揚富開發有限公司		108年度司執字第47156號/放棄/8/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
56	109年度司執字第21251號	學府路一段75巷11號四樓	2020-10-23	\N	\N	\N	1200000	0	0	0	200	\N	\N	\N	1	\N	\N	\N	240000	\N	\N	\N	\N	2020-10-07	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-18	3	35	3	2020-10-07 09:35:15.717967	2021-04-18 14:41:44.010106	板院		鉅鈦開發有限公司		109年度司執字第21251號/未判定/3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	吳彥輝	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
15	109年司執字027357號\t	中正路310之7號	2020-07-21	2020-08-11	2020-09-01	\N	920000	736000	589000	0	83	\N	414	\N	0	\N	2	\N	\N	\N	118000	\N	\N	2020-07-05	2020-08-08	\N	https://tw.988house.com/Auction/AuctionDataShow.aspx?Caption=109%e7%95%b627357_3_2020-8-11.pdf&Court=TND	\N	https://tw.988house.com/Auction/AuctionPicture.ashx?ID=245995&Height=450&Width=600	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e4%b8%ad%e6%ad%a3%e8%b7%af310%e4%b9%8b7	\N	\N	4拍進場	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-09-03	17	229	6	2020-07-20 08:25:12.110731	2020-11-13 15:52:22.917919	新安段		揚富開發有限公司	https://tw.988house.com/auction/595032	109年司執字027357號\t/4拍進場/6/17	第三人搶標	2020-09-03	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
16	109年度司執字第11399號\t	信義街44巷6號	2020-07-21	2020-08-11	2020-09-08	\N	640000	512000	410000	0	48	93	139	\N	0	0	0	\N	128000	103000	82000	\N	\N	2020-06-20	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10908/11155044277.014.pdf	\N	https://www.google.com.tw/maps/place/710%E5%8F%B0%E5%8D%97%E5%B8%82%E6%B0%B8%E5%BA%B7%E5%8D%80%E4%BF%A1%E7%BE%A9%E8%A1%9744%E5%B7%B76%E8%99%9F/@23.0111958,120.2730646,3a,75y,96.48h,90t/data=!3m7!1e1!3m5!1sOGekGuyfub6_ZylqrIm31g!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DOGekGuyfub6_ZylqrIm31g%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D96.476234%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e70de3460a92b:0x7ee0d3503b9f2eab!8m2!3d23.0111357!4d120.2731418	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/44%e5%b7%b76%e8%99%9f	\N	\N	4拍進場	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-09-10	17	227	6	2020-07-20 08:29:31.677281	2020-11-13 15:52:22.925085	大灣段		揚富開發有限公司	https://tw.988house.com/auction/595012	109年度司執字第11399號\t/4拍進場/6/17	第三人搶標	2020-09-10	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
23	108年度司執字第52538號	吳 鳳路50巷42弄25 號	\N	\N	2020-09-14	\N	0	0	1536000	0	\N	\N	130	\N	\N	\N	2	\N	\N	\N	310000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-08-13	3	22	3	2020-08-13 15:39:20.751485	2020-11-13 15:52:22.975821	江子翠 	溪頭	鉅鈦開發有限公司		108年度司執字第52538號//3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	周真儀即周招悌	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
25	108司執助字第  10318號	臨沂街25巷13號	2020-08-14	\N	\N	\N	1532000	0	0	0	52	\N	\N	\N	1	\N	\N	\N	310000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tpd/10907/20112732247.033.pdf	\N	https://drive.google.com/folderview?id=1ET_sQNuBW8kNr9uPZZvx3VCqCm0LFM0M	\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-09-05	1	1	3	2020-08-13 16:56:37.05047	2020-11-13 15:52:22.989837	臨沂 	一	鉅鈦開發有限公司	https://m.988house.com/auction/596614	108司執助字第  10318號/4拍進場/3/1		2020-09-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	張禮真	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
35	南院武109司執如字第54533號	看東里成功六街16號	\N	2020-09-16	\N	\N	0	1280000	0	0	\N	59	\N	\N	\N	1	\N	\N	\N	256000	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/565333	\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-10-08	17	228	6	2020-09-11 10:14:39.920177	2020-11-13 15:52:23.083145	歸仁北段		揚富開發有限公司	https://tw.988house.com/auction/598839	南院武109司執如字第54533號/3拍進場/6/17	第三人搶標	2020-10-08	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	易繼漢	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
29	109年度司執字第35052號	成功路600巷39弄 4號	2020-08-26	\N	\N	\N	2010000	0	0	0	50	\N	\N	\N	4	\N	\N	\N	402000	\N	\N	\N	\N	\N	\N	\N		\N	https://drive.google.com/folderview?id=1fb_3B6YTM-B8Dmi8lvQD1SffqgCeWSKH	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	224	8	2020-08-21 08:34:15.95829	2021-04-13 16:31:28.070745	立人		揚富開發有限公司		109年度司執字第35052號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	曾永欽	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
30	109年度司執字第1129號	大安街229巷6號	2020-08-12	2020-09-09	\N	\N	690000	1080000	0	0	59	59	\N	\N	0	0	\N	\N	138000	216000	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/229%e5%b7%b76%e8%99%9f	\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	226	8	2020-08-25 10:34:58.494124	2021-04-13 17:06:26.36021	海東		揚富開發有限公司	https://tw.988house.com/auction/597746	109年度司執字第1129號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳懋隆	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
24	108年度司執字第101063號	建 中街16巷9之1號	2020-11-11	2020-11-11	\N	\N	4850000	4850000	0	0	207	207	\N	\N	2	2	\N	\N	970000	970000	\N	\N	\N	2020-08-14	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10907/22141011987.007.pdf	\N	https://drive.google.com/foldervihttps://tw.988house.com/auction/keyword/101063ew?id=1EQfSK5voJht9Pzoju8NEwKpHxkflYjgq	\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-02-20	3	40	3	2020-08-13 16:10:20.8454	2021-02-20 08:50:19.908822	全安		鉅鈦開發有限公司	https://tw.988house.com/auction/596977	108年度司執字第101063號/4拍進場/3/3		2020-09-05	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	周文郁	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
28	108年度司執字第115385號	南門路243之4號	2020-08-25	2020-09-22	\N	\N	4800000	3840000	0	0	93	120	\N	\N	3	3	\N	\N	960000	768000	\N	\N	\N	2020-08-22	2020-08-29	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10908/25155118463.028.pdf	\N	https://drive.google.com/drive/u/0/folders/1pjirqcgu2zxwIttOFt8L-hOALQpTEqdn	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%8d%97%e9%96%80%e8%b7%af243%e4%b9%8b4	\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	221	8	2020-08-21 07:49:16.246758	2021-04-13 17:07:06.459114	郡王祠		揚富開發有限公司	https://tw.988house.com/auction/597429	108年度司執字第115385號/4拍進場/8/17	第三人搶標	2021-04-13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	施明德	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
27	109年度司執字第59682號	怡安路一段237號	2020-09-08	\N	\N	\N	1170000	0	0	0	101	\N	\N	\N	2	\N	\N	\N	234000	\N	\N	\N	\N	2020-08-25	2020-08-25	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10908/14092025819.026.pdf	\N	https://drive.google.com/folderview?id=1QX6gi-7A1zXACyYmRTHEizUJIE_kJhXN	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e6%80%a1%e5%ae%89%e8%b7%af%e4%b8%80%e6%ae%b5237%e8%99%9f	\N	\N	1拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	226	8	2020-08-21 07:04:06.047464	2021-04-13 17:07:31.872754	安慶		揚富開發有限公司	https://tw.988house.com/auction/598710	109年度司執字第59682號/1拍進場/8/17	第三人搶標	2021-04-13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	唐士賢	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
49	109公8838 甲	北花里中正路567巷8弄6號	2020-10-06	\N	\N	\N	1100000	0	0	0	43	\N	\N	\N	0	\N	\N	\N	220000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	235	6	2020-10-02 12:09:30.572192	2021-05-08 00:20:42.302248	北花		揚富開發有限公司	https://tw.988house.com/auction/601075	109公8838 甲/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳琮霖	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
17	南院武109司執廉字第30199號\t	中正路169號	2020-07-21	2020-08-11	2020-09-01	\N	3300000	2640000	2113000	0	35	\N	119	\N	0	\N	0	\N	66000	528000	423000	\N	\N	2020-07-16	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10906/30083357741.016.pdf	\N	https://www.google.com/maps/place/732%E5%8F%B0%E5%8D%97%E5%B8%82%E7%99%BD%E6%B2%B3%E5%8D%80%E4%B8%AD%E6%AD%A3%E8%B7%AF169%E8%99%9F/@23.3493204,120.410796,3a,75y,167.24h,107.24t/data=!3m6!1e1!3m4!1s70y8IcaTa5_YuZcwltR6Zg!2e0!7i13312!8i6656!4m5!3m4!1s0x346e8e3e7642cc17:0x9f59a4d9cded87f1!8m2!3d23.3491735!4d120.4108379	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%8f%b0%e5%8d%97%e5%b8%82%e7%99%bd%e6%b2%b3%e5%8d%80%e6%b0%b8%e5%ae%89%e9%87%8c%e4%b8%ad%e6%ad%a3%e8%b7%af169%e8%99%9f	\N	\N	未判定	f	f	f	f	f	f	f	t	f	t	t	t	t	t	t	f	t	2021-05-08	17	247	6	2020-07-20 08:33:47.670383	2021-05-08 00:50:15.51411	永安段		揚富開發有限公司		南院武109司執廉字第30199號\t/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
34	108司執43915	屏東縣崁頂鄉新生路52	\N	\N	\N	2020-06-09	0	0	0	362000	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2020-06-04	2020-06-04	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/10905/15144147850.017.pdf	\N	https://www.google.com.tw/maps/place/924%E5%B1%8F%E6%9D%B1%E7%B8%A3%E5%B4%81%E9%A0%82%E9%84%89%E6%96%B0%E7%94%9F%E8%B7%AF52%E8%99%9F/@22.5040171,120.4812595,3a,85.9y,289.62h,105.78t/data=!3m7!1e1!3m5!1sTIgDcz2GNNOwWmYdj4dv5Q!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DTIgDcz2GNNOwWmYdj4dv5Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod%2Fmaps%2Flocal-details-getcard.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D326.12936%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e1e32af9a7489:0xf365959c38ff0447!8m2!3d22.5040427!4d120.4811859?hl=zh-TW	\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	t	t	t	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2020-09-09	22	327	4	2020-09-07 09:09:58.925952	2020-11-13 15:52:23.076608	越溪段		揚富開發有限公司		108司執43915/4拍進場/4/22	得標	2020-09-09	無人優購	PT007	2020-08-26	\N	拍賣	\N	\N	\N	\N	\N	\N	\N		2020-08-26	\N	198000	5	郵寄	需要	\N		一層	二層	屋頂突出物				\N	加強磚造	加強磚造					\N	84.99	83.85	3				\N					\N					\N					\N								\N	\N	4		洪蘇淑珍		\N																				\N																		1	8	0	7	0	2	5	2	0	0	0	\N	f
55	109宇6516 	民生南路608巷119號	2020-09-17	2020-10-15	\N	\N	3381000	2704800	0	0	\N	63	\N	\N	\N	0	\N	\N	677000	541000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10909/17085932082.005.pdf	\N	https://www.google.com.tw/maps/@23.4567777,120.4422318,3a,73.3y,345.19h,95.48t/data=!3m6!1e1!3m4!1srouu6yHojMmCd8k4N18vng!2e0!7i13312!8i6656	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-12-21	14	182	6	2020-10-05 11:02:07.666301	2020-12-21 10:38:06.370433	湖內		揚富開發有限公司	https://tw.988house.com/auction/599144	109宇6516 /未判定/6/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蔡明坤	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
62	109簡20594 	新榮路35巷15號5樓之1	2020-11-11	2020-12-02	\N	\N	1159000	928000	0	0	25	37	\N	\N	0	0	\N	\N	232000	186000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10910/15183940799.015.pdf	\N	https://www.google.com.tw/maps/@23.4698384,120.4448584,3a,90y,6.18h,122.76t/data=!3m7!1e1!3m5!1sCTO2sIS3e4HTUlVspPjXEA!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DCTO2sIS3e4HTUlVspPjXEA%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D291.1163%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-12-21	14	182	6	2020-10-30 01:46:06.637161	2020-12-21 10:37:16.846425	白川		揚富開發有限公司	https://tw.988house.com/auction/602587	109簡20594 /未判定/6/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	張雪梅	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
47	109南金職亥字第483號	中山路875巷107之4號	2020-10-07	\N	\N	\N	2835000	0	0	0	97	\N	\N	\N	1	\N	\N	\N	567000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	234	6	2020-09-28 08:20:01.380109	2021-05-08 00:21:42.562747	崁腳北段		揚富開發有限公司	https://tw.988house.com/auction/598165	109南金職亥字第483號/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
33	109年度司執字第9670號	遠東街28巷12號	2020-07-29	2020-09-02	\N	\N	3113000	2801700	0	0	\N	116	\N	\N	\N	0	\N	\N	\N	561000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10907/29162151989.015.pdf	\N		\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/嘉義市西區遠東街28巷12號	\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-21	14	182	8	2020-09-02 06:02:56.961385	2020-11-21 02:33:16.249057	北社尾段 		揚富開發有限公司	https://tw.988house.com/auction/595195	109年度司執字第9670號/放棄/8/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
53	109東14796 	圓福街118巷48弄46號	\N	2020-10-13	2020-11-03	2020-12-15	0	285000	230000	197000	\N	40	68	105	\N	0	0	0	\N	57000	46000	40000	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10909/22161326253.019.pdf	\N		\N	https://drive.google.com/file/d/1rayAH7rkVLnn0zQ0ibt1PUT7476v7pNq/view?usp=drivesdk	\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-12-21	14	181	6	2020-10-05 03:47:08.770129	2020-12-21 10:38:45.796614	盧厝		揚富開發有限公司	https://tw.988house.com/auction/598889	109東14796 /放棄/6/14		2020-12-02	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	鄧玉梅	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	遠東國際商業銀行股 份有限公司	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
36	109司執地10785	瑞興街102巷18號	\N	\N	2020-09-17	\N	0	0	2160000	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	404000	\N	\N	\N	2020-08-07	\N	http://aomp.judicial.gov.tw/abbs/sale/ksd/10908/27160900059.010.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-03-14	18	264	4	2020-09-14 02:45:56.294727	2021-03-14 13:02:56.47518	瑞隆段	1小段	揚富開發有限公司		109司執地10785/3拍進場/4/18	第三人搶標	2021-03-14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳豊榮	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
54	109宇4331	屏東市大武路51-4號	\N	\N	\N	2020-10-08	0	0	0	307200	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62000	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/10909/03171257609.011.pdf	\N	https://www.google.com.tw/maps/place/900%E5%B1%8F%E6%9D%B1%E7%B8%A3%E5%B1%8F%E6%9D%B1%E5%B8%82%E5%A4%A7%E6%AD%A6%E8%B7%AF51%E8%99%9F/@22.6565283,120.4777604,3a,87.1y,207.27h,114.51t/data=!3m6!1e1!3m4!1sbSeraJEZbLENzIXKFgMQYg!2e0!7i13312!8i6656!4m5!3m4!1s0x346e19d248399893:0x3d4c01ea754f28c4!8m2!3d22.6564495!4d120.4775686?hl=zh-TW&authuser=0	\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	t	t	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-03-14	22	310	4	2020-10-05 05:53:21.025444	2021-03-14 13:03:44.578431	萬年		揚富開發有限公司		109宇4331/4拍進場/4/22		2021-03-14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	臧荷馨	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
39	109西45145	海佃路二段766巷8弄23號	2021-02-17	\N	\N	\N	590000	0	0	0	186	\N	\N	\N	0	\N	\N	\N	118000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10909/15091323898.026.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	226	6	2020-09-21 08:42:39.799985	2021-05-07 22:46:59.134281	 海北段		揚富開發有限公司	https://m.988house.com/auction/600630	109西45145/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
45	109年度南金職字第427號（109司職字15106）	信義路100號	2020-09-30	\N	\N	\N	1402000	0	0	0	72	\N	\N	\N	0	\N	\N	\N	281000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	229	6	2020-09-28 07:45:19.765869	2021-05-08 00:27:20.321653	新化	王公廟	揚富開發有限公司	https://tw.988house.com/auction/597710	109年度南金職字第427號/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蔡國華 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
44	108乾102489	柳營276號之12	2020-05-13	2020-06-03	2020-07-01	\N	700000	560000	448000	0	\N	\N	\N	\N	\N	\N	\N	\N	140000	71100	56900	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	251	6	2020-09-28 06:51:48.306772	2021-05-08 00:28:35.470157	柳營段 	柳營小段 	揚富開發有限公司	https://tw.988house.com/auction/590454	108乾102489/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
46	109年度南金職字第465號	美豐里15鄰美豐121之3號	2020-09-30	\N	\N	\N	384000	0	0	0	75	\N	\N	\N	1	\N	\N	\N	77000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	243	6	2020-09-28 08:04:21.44914	2021-05-08 00:34:20.510759	草糵		揚富開發有限公司	https://tw.988house.com/auction/597712	109年度南金職字第465號/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	賴皇州	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
40	109南金職亥480	那拔林224號之8	2020-08-12	2020-09-02	2020-09-23	\N	490000	441000	397000	0	\N	\N	79	\N	\N	\N	0	\N	98000	89000	80000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	229	6	2020-09-22 06:22:21.03918	2021-05-08 00:37:41.00279			揚富開發有限公司	https://tw.988house.com/auction/597226	109南金職亥480/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
32	南院武109司執坤字第1116號	文賢路520巷55弄14號	2020-09-23	\N	\N	\N	1200000	0	0	0	34	\N	\N	\N	0	\N	\N	\N	240000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10908/26090034234.024.pdf	\N	https://aomp1.judicial.gov.tw/KPIC/pic/TND/10902/24213639411.jpg	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	224	6	2020-09-02 03:09:11.29729	2021-05-08 00:43:53.539662	小北		揚富開發有限公司	https://tw.988house.com/auction/599199	南院武109司執坤字第1116號/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	方耀東	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
37	109東20361	內庄里內庄76之1號	2020-09-29	\N	\N	\N	1500000	0	0	0	40	\N	\N	\N	0	\N	\N	\N	300000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	230	6	2020-09-21 08:06:29.523268	2021-05-08 00:45:36.019762	內庄子段		揚富開發有限公司		109東20361/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
51	108利23511	育人路705號	2020-10-07	\N	\N	\N	732000	0	0	0	55	\N	\N	\N	0	\N	\N	\N	147000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10909/02152055141.006.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-10-05	14	182	6	2020-10-05 03:26:24.467555	2020-11-13 15:52:23.185421	何庄		揚富開發有限公司	https://tw.988house.com/auction/599961	/未判定/6/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	何金龍	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
52	109速26223	過溝里14鄰蘭井街115巷6號	2020-10-08	\N	\N	\N	515000	0	0	0	37	\N	\N	\N	0	\N	\N	\N	103000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10909/08161958025.007.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-10-05	14	181	6	2020-10-05 03:39:00.880562	2020-11-13 15:52:23.191615	元	四	揚富開發有限公司	https://tw.988house.com/auction/600219	/未判定/6/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
1	108司執字第25440號\t	四川路一段286巷5號	2020-05-21	2020-06-18	\N	\N	2110000	1710000	0	0	\N	98	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	2020-06-03	2020-06-03	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10905/22110827662.000.pdf	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E5%9B%9B%E5%B7%9D%E8%B7%AF%E4%B8%80%E6%AE%B5286%E5%B7%B75%E8%99%9F/@25.0008838,121.4561369,17z/data=!3m1!4b1!4m5!3m4!1s0x346802a59fd70f73:0x3a11c8c24ef49976!8m2!3d25.000879!4d121.458331	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%9b%9b%e5%b7%9d%e8%b7%af%e4%b8%80%e6%ae%b5286%e5%b7%b75%e8%99%9f	\N	\N	未判定	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-06-03	3	22	3	2020-07-20 06:25:06.146563	2020-11-13 15:52:22.801996	忠孝段		揚富開發有限公司		108司執字第25440號\t//3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
61	108月24139 	芳安路17巷231號	\N	2020-11-05	\N	\N	0	1392000	0	0	\N	69	\N	\N	\N	0	\N	\N	\N	279000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10910/15112211328.002.pdf	\N	https://www.google.com.tw/maps/@23.4670579,120.4652974,3a,90y,89.79h,88.15t/data=!3m7!1e1!3m5!1s2yxobUhstMoHV4qRVGetQg!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3D2yxobUhstMoHV4qRVGetQg%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D356.19696%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-10-30	14	181	6	2020-10-30 01:19:16.383193	2020-11-13 15:52:23.290575	下路頭		揚富開發有限公司	https://tw.988house.com/auction/600562	108月24139 /未判定/6/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	林昭焜	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
64	109司執6502	福德路165號	\N	\N	2020-11-10	\N	0	0	704000	0	\N	\N	133	\N	\N	\N	\N	\N	\N	\N	141000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	t	f	f	f	f	t	t	f	t	t	t	t	t	t	f	t	2021-03-14	22	334	4	2020-11-05 20:18:47.190727	2021-03-14 13:05:19.276287	五房		揚富開發有限公司		109司執6502/3拍進場/4/22	得標	2021-03-14	遭優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	潘緯鵬	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
60	109妥1718 	林森路二段192巷123號	2020-11-17	2020-12-15	\N	\N	1800000	1440000	0	0	26	106	\N	\N	1	1	\N	\N	320000	288000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/19102019513.008.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TND&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=001718	\N	https://drive.google.com/file/d/1bFPlCVDF_a6uCBc4YBWDt3CXhyuIKZtu/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-28	17	222	6	2020-10-23 14:16:51.834315	2020-11-28 00:16:35.231642	新東		揚富開發有限公司	https://tw.988house.com/auction/602522	109妥1718 /未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	周吟峯	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
59	109南金職戌600	西門路一段380巷35號	2020-12-23	2021-01-13	2021-02-03	\N	1460000	1168000	936000	0	94	108	176	\N	1	1	1	\N	292000	234000	188000	\N	\N	2020-12-19	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/10912_24163500.111	\N	https://www.google.com/maps/@22.9809228,120.1989367,3a,75y,345.22h,125.02t/data=!3m6!1e1!3m4!1sLBIginBmsbk4cuj-4Ecdgw!2e0!7i13312!8i6656	\N	https://drive.google.com/file/d/1JxuGVIhqKhtpf-IljLi1u_bFOxvwH8NT/view?usp=drivesdk	\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-01-29	17	223	6	2020-10-21 10:51:34.971894	2021-01-29 22:17:05.508149	鹽埕		揚富開發有限公司	https://tw.988house.com/auction/606052	109南金職戌600/3拍進場/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	洪瑞鴻	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
135	109年度司執字第121102號	金華路二段15巷4之3號	2021-04-21	\N	\N	\N	480000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-03-26	\N	\N		\N		\N	https://drive.google.com/file/d/19DvLvZqZDb_IPrjDpL9ldbaNZ1BfGYMQ/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	2拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-29	17	223	8	2021-03-26 10:06:28.76849	2021-04-29 12:28:21.184523	鹽埕 		揚富開發有限公司	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/V2.htm?#/tnd/11003/25094712313.019.pdf	109年度司執字第121102號/2拍進場/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳勝賢	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
66	109橋清算子1	南溝路二段71號	\N	\N	\N	2020-11-18	0	0	0	1968000	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	394000	\N	\N	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/10911_02201832.101	\N		\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	t	f	f	f	t	t	t	t	t	t	t	t	t	t	t	t	2021-03-14	18	276	4	2020-11-13 05:02:28.735937	2021-03-14 13:01:16.213798	仕和		揚富開發有限公司		109橋清算子1/4拍進場/4/18	第三人搶標	2021-03-14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	馬雍凱	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
65	109方76573	北勢里北新街75號	2020-11-26	\N	\N	\N	600000	0	0	0	35	\N	\N	\N	0	\N	\N	\N	120000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	235	6	2020-11-12 14:08:04.256223	2021-05-08 00:17:23.252406	 仁愛		揚富開發有限公司	https://tw.988house.com/auction/602958	109方76573/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
50	109年度司執字第53716號	朝琴路116號	2020-10-20	\N	\N	\N	1400000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	252	8	2020-10-02 12:43:10.88868	2021-04-13 16:30:59.30696	後厝段		揚富開發有限公司		109年度司執字第53716號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蔡福建	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
58	109源59965 	光華街119巷22號	2020-10-21	2020-11-11	\N	\N	160000	128000	0	0	63	81	\N	\N	0	1	\N	\N	32000	26000	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/492065	\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	222	6	2020-10-16 14:58:20.222459	2021-05-08 00:10:20.755431	龍泉		揚富開發有限公司	https://tw.988house.com/auction/601145	109源59965 /未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	袁幗蘭	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
43	 109方68564	社內28之34號	2020-10-15	2020-11-05	2020-11-26	\N	1950000	1560000	1248000	0	68	115	160	\N	0	0	0	\N	350000	31200	25000	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10910/15111459162.002.pdf	\N	https://www.google.com.tw/maps/@23.0759842,120.286092,3a,67.7y,179.56h,128.85t/data=!3m7!1e1!3m5!1sRr6-fSc2HyUztjqZZtYdMg!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DRr6-fSc2HyUztjqZZtYdMg%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D77.48026%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656	\N	https://drive.google.com/file/d/1xd7lHOrZh8UDoKIWclzxLuAZ2tBkUjV_/view?usp=drivesdk	\N	\N	\N	\N	\N	https://www.257.com.tw/index.php?action=in_house_detail&id=NB001256	\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	256	6	2020-09-28 06:43:42.880631	2021-05-08 00:30:33.841766	富強段		揚富開發有限公司	https://tw.988house.com/auction/600450	 109方68564/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳秀鳳	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
38	109坤35413	崙頂87號	2020-09-30	2020-10-21	2020-11-11	\N	1900000	1520000	1368000	0	59	\N	125	\N	0	\N	0	\N	380000	\N	114000	\N	\N	\N	\N	\N		\N	https://www.257.com.tw/index.php?action=in_house_detail&id=NB001235	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	256	6	2020-09-21 08:32:07.211289	2021-05-08 00:41:01.970002	港子墘段		揚富開發有限公司	https://tw.988house.com/auction/599800	109坤35413/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
157	108司執字第78355號	文昌路54號2樓	2021-06-24	\N	\N	\N	1634000	0	0	0	66	\N	\N	\N	3	\N	\N	\N	330000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-01	1	8	8	2021-05-19 15:18:50.899735	2021-06-01 13:24:49.973086			揚富開發有限公司	https://tw.988house.com/auction/615863	108司執字第78355號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
154	108司執第111775號	保泰路255之1號	\N	2021-05-11	\N	\N	0	3600000	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	720000	\N	\N	\N	2021-04-20	2021-05-20	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ksd/11004/20171321461.019.pdf	\N	https://www.google.com.tw/maps/place/806%E9%AB%98%E9%9B%84%E5%B8%82%E5%89%8D%E9%8E%AE%E5%8D%80%E4%BF%9D%E6%B3%B0%E8%B7%AF255-1%E8%99%9F/@22.6015862,120.3321564,3a,83.1y,335.92h,111.06t/data=!3m6!1e1!3m4!1sh5g5wSz4w2PxUauPJpKEYg!2e0!7i16384!8i8192!4m5!3m4!1s0x346e0350804aeeed:0x24855829e50eff04!8m2!3d22.6016804!4d120.3321198?hl=zh-TW&authuser=0	\N		\N	\N	\N	\N	\N		\N	\N	2拍進場	\N	t	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-06-08	18	264	4	2021-05-04 16:49:20.732144	2021-06-08 11:12:24.978807	籬子內	崗山子	揚富開發有限公司		108司執第111775號/2拍進場/4/18	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
2	108司執助字第3566號\t	忠孝路132巷23之2號	2020-04-09	2020-05-07	2020-06-04	\N	2200000	1760000	1414000	0	\N	\N	172	\N	\N	\N	1	\N	\N	\N	290000	\N	\N	2020-05-20	2020-06-03	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10905/07142132037.000.pdf	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E5%BF%A0%E5%AD%9D%E8%B7%AF132%E5%B7%B723%E8%99%9F/@25.0017011,121.4635519,3a,75y,60.67h,101.84t/data=!3m7!1e1!3m5!1soiZp4IEU4FKrMe3mOHf7bQ!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DoiZp4IEU4FKrMe3mOHf7bQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D82.89324%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x346802a3e547b995:0x66cc8096f9ee8c65!8m2!3d25.0017266!4d121.4636571	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%bf%a0%e5%ad%9d%e8%b7%af132%e5%b7%b723%e4%b9%8b2	\N	\N	放棄	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-06-03	3	22	3	2020-07-20 06:37:36.220299	2020-11-13 15:52:22.814339	重慶段		揚富開發有限公司		108司執助字第3566號\t/放棄/3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
8	108司執字第160537號\t	民治街134巷36號五樓	2020-06-09	2020-07-14	\N	\N	2400000	1920000	0	0	58	140	\N	\N	0	0	\N	\N	480000	390000	\N	\N	\N	2020-05-27	2020-06-03	\N	http://aomp.judicial.gov.tw/abbs/wkw/WHD2A03.jsp?pageTotal=6&pageSize=15&rowStart=16&saletypeX=1&proptypeX=C52&courtX=PCD&order=odposition&query_typeX=session&saleno=&hsimun=all&ctmd=all&sec=all&crmyy=&crmid=&crmno=&dpt=&saledate1=&saledate2=&minprice1=&minprice2=&sumprice1=&sumprice2=&area1=&area2=&registeno=&checkyn=all&emptyyn=all&order=odposition&owner1=&landkd=&rrange=%B3%A1%A5%F7&comm_yn=&stopitem=&courtNoLimit=&pageNow=3&276C0AD28D2C934E54AD3B15520FB7CB=CED37994E7A82127D21EFF34589430AF	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%B0%91%E6%B2%BB%E8%A1%97134%E5%B7%B736%E8%99%9F/@25.0314553,121.4767923,3a,75y,339.55h,122.63t/data=!3m7!1e1!3m5!1sKHditjmmNCFtKQTcqfDM8Q!2e0!6s%2F%2Fgeo2.ggpht.com%2Fcbk%3Fpanoid%3DKHditjmmNCFtKQTcqfDM8Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D293.60614%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442a8442ef31307:0x75494a6cce6bba24!8m2!3d25.0315099!4d121.4766431	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/134%e5%b7%b736%e8%99%9f	\N	\N	4拍進場	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-10-07	3	22	3	2020-07-20 08:04:52.267795	2020-11-13 15:52:22.865118	江子翠段	第三崁小段	揚富開發有限公司		108司執字第160537號\t/4拍進場/3/3		2020-10-07	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
20	106司執字第107512號	民權路49巷5弄15號 4樓	2020-08-13	2020-09-10	2020-10-08	\N	2400000	1920000	1524000	0	46	\N	100	\N	0	\N	0	\N	480000	\N	310000	\N	\N	2020-08-10	2020-08-14	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10907/13200411159.042.pdf	\N	https://www.google.com.tw/maps/place/234%E6%96%B0%E5%8C%97%E5%B8%82%E6%B0%B8%E5%92%8C%E5%8D%80%E6%B0%91%E6%AC%8A%E8%B7%AF49%E5%B7%B75%E5%BC%8415%E8%99%9F/@24.9975901,121.5206982,3a,75y,351.15h,100.52t/data=!3m7!1e1!3m5!1sRf1v9DgDqmoIl66XoToh3w!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DRf1v9DgDqmoIl66XoToh3w%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D355.4301%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442a9e3c48ee1c7:0x4354512d5416147d!8m2!3d24.9977569!4d121.5207295	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-20	3	33	3	2020-08-13 14:47:42.984435	2020-11-20 13:07:48.46606	民權 		鉅鈦開發有限公司	https://tw.988house.com/auction/596276	106司執字第107512號/未判定/3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	周正濤	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
31	109年度司執字第6516號	民生南路608巷119號	2020-09-17	2020-10-15	2020-11-05	\N	3381000	2704800	2163800	0	12	\N	95	\N	0	\N	0	\N	677000	541000	433000	\N	\N	2020-09-13	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10910/15091348112.005.pdf	\N	南京路20巷 https://maps.app.goo.gl/QLrpvHqBDdVxnbUQA	\N	https://drive.google.com/file/d/1O0lZJzQOjDJ1i6pPCnR-TbkxRYdbbXdX/view?usp=drivesdk	\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/608%e5%b7%b7119%e8%99%9f	\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-12-21	14	182	8	2020-08-27 14:01:45.235461	2020-12-21 10:49:57.647873	湖內		揚富開發有限公司	https://tw.988house.com/auction/599144	109年度司執字第6516號/3拍進場/8/14	第三人搶標	2020-12-21	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蔡明坤	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
42	108年司執字107026號	金華路一段29巷8弄22號	2020-10-14	2020-11-06	2020-11-25	\N	2000000	1600000	1280000	0	39	187	187	\N	0	2	2	\N	400000	320000	256000	\N	\N	2020-10-01	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/04152703050.024.pdf	\N	https://maps.app.goo.gl/KLdNjzLNVx2D3geR9台南市南區金華路一段29巷8弄22號 https://maps.app.goo.gl/KLdNjzLNVx2D3geR9台南市南區金華路一段29巷8弄22號 https://maps.app.goo.gl/KLdNjzLNVx2D3geR9	\N	https://drive.google.com/file/d/1PeT1ahllKwJaaqtIP4vBCjiXz0sisPZw/view?usp=drivesdk	\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%8f%b0%e5%8d%97%e5%b8%82%e5%8d%97%e5%8d%80%e9%87%91%e8%8f%af%e8%b7%af%e4%b8%80%e6%ae%b529%e5%b7%b78%e5%bc%8422%e8%99%9f	\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-28	17	223	6	2020-09-28 06:32:35.518673	2020-11-28 00:20:04.827803	南華段		揚富開發有限公司	https://tw.988house.com/auction/600588	108年司執字107026號/3拍進場/6/17	第三人搶標	2020-11-28	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	沈昭安	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
5	109年度南金職字第31號\t	前鋒路81號3樓	2020-03-18	2020-04-08	2020-04-29	\N	800000	640000	512000	409600	\N	\N	\N	150	\N	\N	\N	2	\N	\N	\N	\N	\N	2020-03-07	2020-05-16	\N	https://tfasc.blob.core.windows.net/importbulletin/10904_29171637.107	\N	https://www.google.com.tw/maps/place/701%E5%8F%B0%E5%8D%97%E5%B8%82%E6%9D%B1%E5%8D%80%E5%89%8D%E9%8B%92%E8%B7%AF81%E8%99%9F/@22.9917642,120.2128888,3a,75y,258.04h,90t/data=!3m7!1e1!3m5!1snpwjvUSYXSPJX1GNMdRrSQ!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DnpwjvUSYXSPJX1GNMdRrSQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D258.0402%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5YmN6YuS6LevODHomZ8z5qiT!3m4!1s0x346e768ee428a9b9:0x5e64bc54631f7012!8m2!3d22.9917521!4d120.2128537	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%89%8d%e9%8b%92%e8%b7%af81%e8%99%9f	\N	\N	4拍進場	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	2021-04-13	17	222	8	2020-07-20 07:49:29.118647	2021-04-13 17:11:19.50107			揚富開發有限公司		109年度南金職字第31號\t/4拍進場/8/17		2021-04-13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
84	109年度司執字第27872號	興隆路3段36巷4號	2020-12-09	\N	\N	\N	2370000	0	0	0	101	\N	\N	\N	0	\N	\N	\N	480000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-03-26	1	12	8	2020-12-02 15:41:15.208078	2021-03-26 14:09:22.677647	興安段 	一小段 	鉅鈦開發有限公司		109年度司執字第27872號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	阮柏勳	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
142	109司執字第73217號	美崙街86巷16號	2021-03-25	2021-04-22	\N	\N	3380000	2706000	0	0	80	80	\N	\N	0	0	\N	\N	680000	550000	\N	\N	\N	2021-04-18	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/sld/11003/25154347471.005.pdf	\N		\N	https://drive.google.com/file/d/1sazl7FWsVbNpSWc0fxo1NVD-tZFB4IrG/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-22	1	8	8	2021-04-13 14:56:44.605121	2021-04-22 14:14:42.915855	陽明 	三 	鉅鈦開發有限公司	https://tw.988house.com/auction/610693	109司執字第73217號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	孫幼瑩	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
166	109年度司執字第121920號	民生路2段215、217號	2021-07-06	\N	\N	\N	5350000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-19	17	221	8	2021-06-19 14:51:04.801865	2021-06-19 15:02:56.36732	星鑽		揚富開發有限公司		109年度司執字第121920號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	楊士典	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
136	109年度司執字第67496號（ 未辦保存登記）	建國街12號	\N	2021-04-06	\N	2021-06-01	0	1440000	0	1167000	\N	\N	\N	100	\N	\N	\N	0	\N	\N	\N	234000	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%bb%ba%e5%9c%8b%e8%a1%9712%e8%99%9f	\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	17	229	8	2021-03-26 10:21:51.301792	2021-06-14 00:52:07.300249	新國 		揚富開發有限公司	https://tw.988house.com/auction/614228	109年度司執字第67496號（ 未辦保存登記）/放棄/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	柯超元	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
153	110年度司執字第6768號	林森東路722之26號四樓之2	2021-06-02	\N	\N	\N	1676000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	336000	\N	\N	\N	\N	\N	\N	\N		\N		\N	https://drive.google.com/file/d/1GRygKiu4Zecc4pd1BtdroRJZBNxS7idz/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	14	181	8	2021-05-04 14:44:03.133942	2021-06-14 03:28:09.730661	盧厝		揚富開發有限公司	https://tw.988house.com/auction/615735	110年度司執字第6768號/3拍進場/8/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	暴嘉林	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
13	管理者文件測試		2020-04-17	\N	\N	\N	10000	0	0	0	23	\N	\N	\N	1	\N	\N	\N	34222	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-07-20	\N	\N	2	2020-07-20 08:16:59.033355	2020-11-14 15:15:25.716857			揚富開發有限公司		管理者文件測試/3拍進場/2/	得標	2020-11-14	無人優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
48	109西41051	海安路二段296巷33號	2020-11-17	2020-12-08	\N	\N	300000	240000	0	0	108	148	\N	\N	1	1	\N	\N	60000	48000	\N	\N	\N	2020-10-08	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10909/21153902675.026.pdf	\N		\N	https://drive.google.com/file/d/10TJ6eskIsWzw4NwYI86qCliJEin6pDir	\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-20	17	221	6	2020-09-30 10:47:44.991127	2020-11-20 09:44:42.790318	普濟		揚富開發有限公司	https://tw.988house.com/auction/601031	109西41051/3拍進場/6/17		2020-11-20	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
26	109司執字第 23899號	環河南路二段250 巷3弄16號4樓	2020-08-18	2020-09-22	2020-10-20	\N	3310000	2648000	2118400	0	\N	109	161	\N	\N	0	1	\N	\N	530000	430000	\N	\N	2020-08-14	2020-08-14	\N	http://aomp.judicial.gov.tw/abbs/sale/tpd/10907/07134020125.027.pdf	\N	https://drive.google.com/folderview?id=1ENmvh6RyXJmD-WNxJVzKRvVugsH6C3AW	\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-20	1	6	3	2020-08-13 17:19:54.215353	2020-11-20 12:51:30.027663	華江	二	鉅鈦開發有限公司	https://m.988house.com/auction/595995	109司執字第 23899號/4拍進場/3/1		2020-10-07	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	罕光宗即罕浩銓	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
68	109正69439	二王路155巷2號	2020-12-15	\N	\N	\N	2200000	0	0	0	39	\N	\N	\N	0	\N	\N	\N	440000	\N	\N	\N	\N	2020-11-21	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/16104800471.003.pdf	\N	https://goo.gl/maps/j7rqWQu3eDUUfcxi9	\N	https://drive.google.com/file/d/1ZcjACQpxd1hg22Bk4xSX1bZX5snYoPLs/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-21	17	227	6	2020-11-20 13:04:25.313595	2020-11-21 09:01:39.149294	永信		揚富開發有限公司	https://tw.988house.com/auction/604585	109正69439/4拍進場/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	林茂松	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
67	109祥76710	開元路148巷101弄29號	2020-12-22	\N	\N	\N	820000	0	0	0	17	\N	\N	\N	0	\N	\N	\N	164000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/17094225437.013.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-20	17	224	6	2020-11-20 11:16:06.647673	2020-11-20 23:46:38.767432	仁愛		揚富開發有限公司	https://tw.988house.com/auction/604723	109祥76710/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	黃淑芳	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
69	109年度司執字第88410號	中央北路122巷15號5樓	2021-01-07	2021-01-18	\N	\N	5420000	5420000	0	0	5	\N	\N	\N	0	\N	\N	\N	1090000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-02-20	3	39	3	2020-11-21 09:33:13.791326	2021-02-20 09:38:29.220328	正義北段		揚富開發有限公司		109年度司執字第88410號/未判定/3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	顏鎂伶	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
70	109年度司執字第67748號	民生路314巷22號	2020-12-15	\N	\N	\N	860000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	172000	\N	\N	\N	\N	\N	\N	\N		\N	https://www.google.com.tw/maps/place/712%E5%8F%B0%E5%8D%97%E5%B8%82%E6%96%B0%E5%8C%96%E5%8D%80%E6%B0%91%E7%94%9F%E8%B7%AF314%E5%B7%B722%E8%99%9F/@23.0432397,120.3071138,3a,90y,162.75h,111.34t/data=!3m6!1e1!3m4!1sMvk44_w4pXQtbpPAuGdF4A!2e0!7i13312!8i6656!4m5!3m4!1s0x346e70786ea7bd6b:0x464baa78b3f8ef0f!8m2!3d23.0430864!4d120.3071053?hl=zh-TW&authuser=0	\N	https://drive.google.com/file/d/1Ar1z-FpbYTPOhvAt3rE9zgs1LGjF8Hqq/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	229	8	2020-11-23 13:53:31.097647	2021-04-13 16:33:20.331143	新平 		揚富開發有限公司		109年度司執字第67748號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
80	109年度司執字第68916號	開元路148巷43弄42號5樓之2	2020-12-01	2021-01-12	2021-01-12	2021-02-23	470000	382000	382000	345000	57	112	\N	188	0	0	\N	0	94000	85000	77000	69000	\N	2020-12-05	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/06083953986.022.pdf	\N		\N	https://drive.google.com/file/d/1h0CbSRmTdjjvxQDYqtP0elGROFZSpf9K/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	224	8	2020-12-01 05:12:11.572252	2021-04-13 17:01:46.429748	仁愛段		揚富開發有限公司	https://tw.988house.com/auction/603929	109年度司執字第68916號/放棄/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
22	108年度司執字第130169號	江寧路三段55巷9之4號5樓	2020-09-01	2020-10-06	\N	\N	2300000	1840000	0	0	18	123	\N	\N	0	1	\N	\N	460000	370000	\N	\N	\N	2020-08-10	2020-08-14	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10908/06142924688.014.pdf	\N	https://www.google.com.tw/maps/place/220%E6%96%B0%E5%8C%97%E5%B8%82%E6%9D%BF%E6%A9%8B%E5%8D%80%E6%B1%9F%E5%AF%A7%E8%B7%AF%E4%B8%89%E6%AE%B555%E8%99%9F5/@25.0322105,121.4696386,17z/data=!4m13!1m7!3m6!1s0x3442a843d62833d3:0xb1e2d55f8a5b8fc9!2zMjIw5paw5YyX5biC5p2_5qmL5Y2A5rGf5a-n6Lev5LiJ5q61NTXomZ81!3b1!8m2!3d25.0322057!4d121.4718273!3m4!1s0x3442a843d62833d3:0xb1e2d55f8a5b8fc9!8m2!3d25.0322057!4d121.4718273	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-02-20	3	22	3	2020-08-13 15:24:46.874345	2021-02-20 09:02:17.299402	江子翠 	第三崁	鉅鈦開發有限公司	https://tw.988house.com/auction/keyword/130169	108年度司執字第130169號/未判定/3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	楊麗珠	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
163	110司執字第003667號	國城 三街18號4樓2	2021-06-23	\N	\N	\N	1314000	0	0	0	40	\N	\N	\N	0	\N	\N	\N	263000	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11005/10164236683.014.pdf	\N		\N	https://drive.google.com/file/d/19-iWi8xEa53hZh3I3jQNIl3WrdLpE3q0/view?usp=drivesdk	\N	\N	\N	\N	\N		\N	\N	2拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	14	182	6	2021-06-03 09:27:08.30507	2021-06-14 01:43:18.376573	竹圍子段	二	揚富開發有限公司	https://tw.988house.com/auction/616211	110司執字第003667號/未判定/6/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
168	110年度南金職字第249號	安通路四段119巷27弄1號	2021-07-07	\N	\N	\N	1800000	0	0	0	5	\N	\N	\N	0	\N	\N	\N	360000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-25	17	226	8	2021-06-25 11:50:49.7371	2021-06-25 11:57:20.242739	安西段		揚富開發有限公司		110年度南金職字第249號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳香吟	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
167	110年度南金職字第242號	青年路237號	2021-07-07	\N	\N	\N	2500000	0	0	0	10	\N	\N	\N	1	\N	\N	\N	500000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-26	17	222	8	2021-06-25 11:29:11.837474	2021-06-26 00:47:34.151814	育樂段		揚富開發有限公司	https://tw.988house.com/auction/617731	110年度南金職字第242號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	張逵即張良卦	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
63	109年度司執字第73388號	公園路487巷37號	2020-11-24	\N	\N	\N	4220000	0	0	0	37	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10910/23090451995.026.pdf	\N	https://www.google.com.tw/maps/place/704%E5%8F%B0%E5%8D%97%E5%B8%82%E5%8C%97%E5%8D%80%E5%85%AC%E5%9C%92%E8%B7%AF487%E5%B7%B737%E8%99%9F/@23.0092139,120.2091875,3a,75y,91.9h,90t/data=!3m7!1e1!3m5!1s0kqIUVb5w_a-4T3NOxZDjw!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3D0kqIUVb5w_a-4T3NOxZDjw%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D91.89673%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e76f714955bb5:0x4a77e018767ca143!8m2!3d23.0095249!4d120.2091583	\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-11-23	17	224	8	2020-10-30 13:18:38.994836	2020-11-23 13:59:25.397038	正興段		揚富開發有限公司	https://tw.988house.com/auction/602956	109年度司執字第73388號/放棄/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳碧華	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
79	109年度司執字第16333號	文明路100巷13號	2020-12-10	\N	\N	\N	718000	0	0	0	14	\N	\N	\N	0	\N	\N	\N	144000	\N	\N	\N	\N	2020-11-29	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/uld/10911/12092219966.002.pdf	\N	https://www.google.com.tw/maps/place/651%E9%9B%B2%E6%9E%97%E7%B8%A3%E5%8C%97%E6%B8%AF%E9%8E%AE%E6%96%87%E6%98%8E%E8%B7%AF100%E5%B7%B713%E8%99%9F/@23.5764965,120.2965618,3a,15.2y,7.69h,86.42t/data=!3m6!1e1!3m4!1sxOPPkupaAhnoivnYo9_irA!2e0!7i16384!8i8192!4m5!3m4!1s0x346ea2620505f82f:0x33bc61ad17ff2aa7!8m2!3d23.576875!4d120.296854	\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-12-21	16	216	8	2020-11-27 13:59:05.113118	2020-12-21 10:26:15.850222	北港段		揚富開發有限公司	https://tw.988house.com/auction/604484	109年度司執字第16333號/放棄/8/16	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳政澤即陳重孝即陳義成	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
77	109當81295	七股區大埕里大埕52號	2020-12-08	\N	\N	\N	900000	0	0	0	90	\N	\N	\N	0	\N	\N	\N	180000	\N	\N	\N	\N	\N	\N	\N		\N	https://www.google.com.tw/maps/@23.1499665,120.1516924,3a,37.4y,294.56h,89.52t/data=!3m6!1e1!3m4!1szCRK83SOVHrxfLVcsAcdXw!2e0!7i13312!8i6656	\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-12-22	17	241	6	2020-11-27 05:57:29.803511	2020-12-22 03:14:49.335549	大文		揚富開發有限公司	https://tw.988house.com/auction/605245	109當81295/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
78	109意59310	竹埔里46號	2020-12-15	2020-12-15	\N	\N	1700000	1360000	0	0	68	94	\N	\N	0	0	\N	\N	340000	272000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/24154954170.029.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TND&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=059310	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	252	6	2020-11-27 11:46:38.987812	2021-05-07 23:18:11.89862	竹子腳		揚富開發有限公司	https://tw.988house.com/auction/603216	109意59310/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	魏士堂	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
71	109年度司執字第32628號	自由路40號	2020-12-08	\N	\N	\N	3990000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	798000	\N	\N	\N	\N	\N	\N	\N		\N	https://www.google.com.tw/maps/place/600%E5%98%89%E7%BE%A9%E5%B8%82%E8%A5%BF%E5%8D%80%E8%87%AA%E7%94%B1%E8%B7%AF40%E8%99%9F/@23.4859169,120.4409686,3a,75y,355.75h,108.06t/data=!3m6!1e1!3m4!1sK5dCTc4G9slq08nepc9CKw!2e0!7i16384!8i8192!4m5!3m4!1s0x346e942b67ad9cb3:0xa039c49fa3b3791!8m2!3d23.4860342!4d120.4409418	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-14	14	182	8	2020-11-23 14:09:33.56103	2021-04-14 04:41:06.241192	埤子頭		揚富開發有限公司		109年度司執字第32628號/未判定/8/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
165	109年司執字039291號	嘉義市吳鳳南路 689巷2之5號	2021-06-24	\N	\N	\N	8287000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11005/17134306419.012.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-04	14	181	6	2021-06-04 21:53:13.767472	2021-06-04 21:53:13.767472			揚富開發有限公司		/未判定/6/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
111	109司執44762號	中正路30號	\N	2021-02-02	\N	\N	0	1200000	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	240000	\N	\N	\N	\N	2021-01-17	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/11001/12103437475.007.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	2拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-02	22	317	4	2021-01-18 08:52:38.704271	2021-05-02 13:01:01.89148	振興		揚富開發有限公司		109司執44762號/2拍進場/4/22	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
74	109西69320	興農里新生南路218巷93號	2020-12-01	\N	\N	\N	2176000	0	0	0	100	\N	\N	\N	0	\N	\N	\N	436000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/10103541819.026.pdf	\N	https://www.google.com.tw/maps/@23.1801566,120.2404999,3a,90y,157.51h,91.74t/data=!3m6!1e1!3m4!1sREuqOdwqFGZYUG5R77Wnnw!2e0!7i13312!8i6656	\N		\N	\N	\N	\N	\N		\N	\N		\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	238	6	2020-11-25 00:41:26.530052	2021-05-07 23:25:16.141407	興農		揚富開發有限公司	https://tw.988house.com/auction/602353	109西69320/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
81	108年司執字20437號	中山路1段206巷117之1號	\N	\N	\N	2020-12-17	0	0	0	1980000	\N	\N	\N	361	\N	\N	\N	1	\N	\N	\N	396000	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10911/12104301632.000.pdf	\N	https://www.google.com.tw/maps/place/%E5%B7%A7%E8%B1%90%E6%96%87%E5%85%B7%E7%A6%AE%E5%93%81%E8%A1%8C/@25.013664,121.4727926,3a,46.7y,180.85h,88.55t/data=!3m9!1e1!3m7!1sxAGdo4TFhCGgKGKN5p1GQw!2e0!7i16384!8i8192!9m2!1b1!2i19!4m5!3m4!1s0x3442a823a13bf4db:0xfe2e579c4bcf1569!8m2!3d25.013254!4d121.4724637	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/206%e5%b7%b7117%e4%b9%8b1%e8%99%9f	\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-01-08	3	22	8	2020-12-01 11:23:12.711054	2021-01-08 08:12:52.518708	中山段		鉅鈦開發有限公司	https://tw.988house.com/auction/595928	108年司執字20437號/放棄/8/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	謝文閔	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
72	109年度司執字第24439號	信義街46巷7號	2020-12-09	2020-12-30	\N	\N	772000	621000	0	0	\N	\N	\N	\N	\N	\N	\N	\N	155000	125000	\N	\N	\N	2020-12-22	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/cyd/10911/10094912584.014.pdf	\N	https://www.google.com.tw/maps/place/622%E5%98%89%E7%BE%A9%E7%B8%A3%E5%A4%A7%E6%9E%97%E9%8E%AE%E4%BF%A1%E7%BE%A9%E8%A1%9746%E5%B7%B77%E8%99%9F/@23.600601,120.4581254,18z/data=!4m5!3m4!1s0x346ebec7f74c91d3:0x5b1d83d50672209c!8m2!3d23.6007903!4d120.4590293	\N	https://drive.google.com/file/d/1ZIPiNh5QlDc_iw8KWQmb7I7MiSPOsz4e/view?usp=sharing	\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e4%bf%a1%e7%be%a9%e8%a1%9746%e5%b7%b77%e8%99%9f	\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2020-12-23	15	197	8	2020-11-24 13:41:19.842643	2020-12-23 14:38:33.821061	潭底	潭底	揚富開發有限公司	https://tw.988house.com/auction/605891	109年度司執字第24439號/4拍進場/8/15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	湯思彤	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
76	109南金職亥字第000610號	忠孝路25之32號	\N	2020-11-25	\N	\N	0	1840000	0	0	\N	31	\N	\N	\N	0	\N	\N	\N	368000	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	238	8	2020-11-25 14:55:52.831227	2021-04-13 17:01:27.716546	保安段		揚富開發有限公司	https://tw.988house.com/auction/602448	109南金職亥字第000610號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	李宗翰	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
75	109公32301	深坑里南雄路一段409巷27號	2020-12-01	\N	\N	\N	600000	0	0	0	26	\N	\N	\N	0	\N	\N	\N	120000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10911/19153715048.001.pdf	\N	https://www.google.com.tw/maps/@22.9375688,120.3338528,3a,90y,158.68h,93.52t/data=!3m6!1e1!3m4!1sejdF5Kj7PJcppiCAmDPccA!2e0!7i13312!8i6656	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	235	6	2020-11-25 00:47:58.104039	2021-05-07 23:52:55.8563	深坑子		揚富開發有限公司	https://tw.988house.com/auction/604920	109公32301/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
86	109司執57799	建國路一段309巷2-4號	\N	\N	2020-12-10	\N	0	0	1024000	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	205000	\N	\N	\N	2020-11-05	\N	http://aomp.judicial.gov.tw/abbs/sale/ksd/10911/12110652120.023.pdf	\N	https://www.google.com.tw/maps/place/830%E9%AB%98%E9%9B%84%E5%B8%82%E9%B3%B3%E5%B1%B1%E5%8D%80%E5%BB%BA%E5%9C%8B%E8%B7%AF%E4%B8%80%E6%AE%B5309%E8%99%9F/@22.634171,120.3709734,3a,90y,144.68h,100.31t/data=!3m6!1e1!3m4!1s9wZm-bK3qwPXafgkVu-D2g!2e0!7i16384!8i8192!4m5!3m4!1s0x346e1b19dda480eb:0x16452fe2dbe8c279!8m2!3d22.634058!4d120.370833?hl=zh-TW&authuser=0	\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	t	t	f	t	f	t	t	t	t	t	t	t	t	t	f	t	2020-12-15	18	281	4	2020-12-06 09:00:37.485765	2020-12-15 12:45:02.794247	埤頂		揚富開發有限公司		109司執57799/3拍進場/4/18	第三人搶標	2020-12-15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
88	109司執字第41851號	中華路2段403號4樓	2020-12-29	\N	2021-02-02	\N	4450000	0	2848000	0	48	\N	219	\N	0	\N	0	\N	890000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tpd/10912/01194000753.05Z.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TPD&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=041851	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-14	1	1	8	2020-12-07 15:41:45.842317	2021-04-14 15:10:24.411829	永昌段	 五小段	揚富開發有限公司	https://tw.988house.com/auction/605650	109司執字第41851號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
92	109年度板金職字第336號	樹德街136巷13弄8號2樓	2020-12-23	\N	\N	\N	4000000	0	0	0	33	\N	\N	\N	0	\N	\N	\N	800000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/13%e5%bc%848%e8%99%9f2%e6%a8%93	\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	3	37	6	2020-12-15 14:56:01.466289	2021-05-07 23:21:33.079111	樹德段		鉅鈦開發有限公司	https://tw.988house.com/auction/604403	109年度板金職字第336號/未判定/6/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	呂金印	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
94	109年度司執字第64420號	寶清街103巷37號4樓	2021-01-07	\N	2021-04-08	\N	4265000	0	2729600	0	66	\N	108	\N	0	\N	1	\N	860000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	1	4	8	2020-12-24 16:00:57.511909	2021-04-13 15:29:31.445831	 寶清	一	鉅鈦開發有限公司	https://tw.988house.com/auction/606453	109年度司執字第64420號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
83	108年度司執字第27827號	正和街96巷48號4樓	\N	\N	2020-12-22	\N	0	0	1209600	0	\N	\N	145	\N	\N	\N	0	\N	\N	\N	25	\N	\N	2020-12-13	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10911/24165843070.015.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=PCD&crmyy=108&crmid=%E5%8F%B8%E5%9F%B7&crmno=027827	\N	https://drive.google.com/file/d/1onjF0tR0mzSjai0rjdfoULKPXimKU12W/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-01-18	3	43	8	2020-12-02 15:12:00.019033	2021-01-18 14:07:03.075344	光明段 46		鉅鈦開發有限公司	https://tw.988house.com/auction/601513	108年度司執字第27827號/4拍進場/8/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳堯杰	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
95	109年度司執字第28865號	大同路3段105巷1弄5號4樓	\N	2021-02-03	\N	\N	0	652000	0	0	\N	48	\N	\N	\N	0	\N	\N	\N	140000	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-14	3	23	8	2020-12-24 16:10:56.117205	2021-04-14 15:18:01.577355	長安段		鉅鈦開發有限公司	https://tw.988house.com/auction/605520	109年度司執字第28865號/未判定/8/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蘇武銘	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
89	109司執字第  59674號	景福街135巷9號	\N	2020-12-10	\N	\N	0	1200000	0	0	\N	120	\N	\N	\N	1	\N	\N	\N	240000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tpd/10911/10094507206.003.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TPD&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=059674	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e6%99%af%e7%a6%8f%e8%a1%97135%e5%b7%b79%e8%99%9f	\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-03-26	1	12	8	2020-12-07 16:37:56.494571	2021-03-26 14:04:34.141409	萬慶段	二小段	揚富開發有限公司	https://tw.988house.com/auction/602215	109司執字第  59674號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
90	109司執字第73709號	海佃路三段48巷42弄8號	2021-01-05	\N	\N	\N	220000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10912/09144753542.029.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TND&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=073709	\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-01-18	17	226	8	2020-12-10 22:58:45.565199	2021-01-18 13:01:11.026695	十字段		揚富開發有限公司		109司執字第73709號/放棄/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
91	108司執字第113165號	裕農路288巷110弄26號	2021-01-06	2021-01-27	\N	\N	1540000	1232000	0	0	18	160	\N	\N	0	0	\N	\N	308000	247000	\N	\N	\N	2020-12-19	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10912/07152210703.007.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=TND&crmyy=108&crmid=%E5%8F%B8%E5%9F%B7&crmno=113165	\N	https://drive.google.com/file/d/1cfdYdxi_gvPApiUqjIsKRFL9B3kGWANM/view?usp=sharing	\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/288%e5%b7%b7110%e5%bc%8426%e8%99%9f	\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	222	8	2020-12-10 23:00:10.312809	2021-04-13 17:04:00.11857	富強段		揚富開發有限公司	https://tw.988house.com/auction/606132	108司執字第113165號/3拍進場/8/17		2021-04-13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳佩君	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
124	109南105558	北門路二段576巷9號5樓之2	2021-02-02	2021-02-23	2021-03-09	\N	1100000	880000	704000	0	\N	93	\N	\N	\N	0	\N	\N	220000	176000	141000	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/23152359061.027.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	224	6	2021-03-05 15:51:18.476726	2021-05-07 23:47:44.110919	延平		揚富開發有限公司	https://tw.988house.com/auction/607787	109南105558/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
87	109司執字第74119號	忠孝街109巷9號	2020-12-22	\N	\N	\N	1900000	0	0	0	10	\N	\N	\N	0	\N	\N	\N	380000	\N	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10912/03145514135.021.pdf	\N	https://www.google.com/maps/@23.2286439,120.3543542,3a,75y,145.57h,112.17t/data=!3m6!1e1!3m4!1s16y1JEckC5-avIqL7LfhNQ!2e0!7i13312!8i6656	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	249	8	2020-12-06 09:57:38.087819	2021-04-13 17:04:32.670063	忠孝段		揚富開發有限公司	https://tw.988house.com/auction/605798	109司執字第74119號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
93	109士清算仁字第2號	環河南路一段155巷4號3樓	\N	2020-12-02	\N	\N	0	1696000	0	0	\N	56	\N	\N	\N	1	\N	\N	\N	340000	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/155%e5%b7%b74%e8%99%9f3%e6%a8%93	\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-03-26	1	6	8	2020-12-15 16:31:24.27187	2021-03-26 14:02:48.203558	直興段   	二小段	鉅鈦開發有限公司	https://tw.988house.com/auction/603536	109士清算仁字第2號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蘇珈瑩即蘇美玲	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
96	109年度司執字第30319號	忠孝東路258巷16弄9號2樓	2021-04-08	\N	\N	\N	1460000	0	0	0	148	\N	\N	\N	0	\N	\N	\N	300000	\N	\N	\N	\N	2021-04-19	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-19	3	23	8	2020-12-24 16:13:30.975832	2021-04-19 01:44:06.930364	新峰段		揚富開發有限公司	https://tw.988house.com/auction/602598	109年度司執字第30319號/未判定/8/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	李梓平	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
148	109年司執字039354號	溪興街231巷20弄9號	2021-05-13	\N	\N	\N	1659000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	332000	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11004/12153813904.012.pdf	\N		\N	https://drive.google.com/drive/folders/1Rc8obK800UwtGjazq8scCwuE2F7jAXvx?usp=sharing	\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	14	181	6	2021-04-28 03:37:32.039052	2021-06-14 01:34:40.472894	興村		揚富開發有限公司		109年司執字039354號/未判定/6/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
139	109年度司執字第43684號	南京西路239巷17號	\N	2021-03-25	2021-04-22	\N	0	4672000	3737600	0	\N	122	161	\N	\N	2	2	\N	\N	\N	750000	\N	\N	2021-04-19	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-19	1	2	8	2021-03-26 14:52:56.134715	2021-04-19 01:45:57.857996	迪化	三	鉅鈦開發有限公司	https://tw.988house.com/auction/610192	109年度司執字第43684號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	林祺	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
82	109年度司執字第22608號	國光路197巷8號5樓	\N	\N	2020-12-16	\N	0	0	980000	0	\N	\N	95	\N	\N	\N	2	\N	\N	\N	200000	\N	\N	2020-12-13	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/pcd/10911/27122746789.000.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?from=abbs&crtid=PCD&crmyy=109&crmid=%E5%8F%B8%E5%9F%B7&crmno=022608	\N	https://drive.google.com/file/d/1oxW2vuBFZtgQmGtWfvPteTatl9ERXXo4/view?usp=sharing	\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%9c%8b%e5%85%89%e8%b7%af197%e5%b7%b78%e8%99%9f	\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	3	22	8	2020-12-01 11:53:01.334494	2021-05-08 02:08:56.399142	 公館段		鉅鈦開發有限公司	https://tw.988house.com/auction/601469	109年度司執字第22608號/3拍進場/8/3	得標	2021-05-08	無人優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	林燕堂	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
12	測試文件(以109年度南金職字第31號為例)	西門路1段702巷17號	2018-08-30	2018-08-30	2018-08-30	2020-09-14	300000	240000	200000	160000	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2020-03-07	2020-05-16	\N	https://tfasc.blob.core.windows.net/importbulletin/10904_29171637.107	\N	https://www.google.com.tw/maps/place/701%E5%8F%B0%E5%8D%97%E5%B8%82%E6%9D%B1%E5%8D%80%E5%89%8D%E9%8B%92%E8%B7%AF81%E8%99%9F/@22.9917642,120.2128888,3a,75y,258.04h,90t/data=!3m7!1e1!3m5!1snpwjvUSYXSPJX1GNMdRrSQ!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DnpwjvUSYXSPJX1GNMdRrSQ%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D258.0402%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m8!1m2!2m1!1z5YmN6YuS6LevODHomZ8z5qiT!3m4!1s0x346e768ee428a9b9:0x5e64bc54631f7012!8m2!3d22.9917521!4d120.2128537	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e5%89%8d%e9%8b%92%e8%b7%af81%e8%99%9f	\N	\N	4拍進場	t	t	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	2021-01-04	17	221	8	2020-07-20 08:16:39.183775	2021-01-04 06:54:36.795657	南門段		鉅鈦開發有限公司		測試文件(以109年度南金職字第31號為例)/4拍進場/8/17	得標	2021-01-04	無人優購		2020-07-24	所有權移轉登記	拍賣	登記清冊	土地權狀	1	土地權狀2	1	土地權狀3	2		2020-09-05	2020-09-06	36200	7	郵寄	需要	2	無	一層	二層						磚造	磚造						57.75	12.83	9.25									\N					\N					\N	36200	4190	2020-07-01	地契	土地權狀	合約	申請書	2020-07-31	\N	6	4	李郭琴	A123456789	\N		123		臺南市	中西區	小西門里	19鄰	西門路	1	702		17		1	6	1	6		64187207	1990-11-20	04-24839038	020525353		臺中市	大里區			新仁路	3段			49		1	6	1	6	3	5	3	4	f	d	e	8	9	A	B		f
105	109年度司執字第1687號	民生西路423巷11弄2號5樓	\N	\N	2021-01-12	\N	0	0	1480000	0	\N	\N	121	\N	\N	\N	0	\N	\N	\N	300000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-01-18	1	2	8	2021-01-12 15:12:34.740622	2021-01-18 14:00:19.334201	大同 	二	揚富開發有限公司		109年度司執字第1687號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	王渝閩	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
97	109年度司執字第48074號	蘭州街56號	\N	\N	2021-03-23	\N	0	0	2930000	1	\N	\N	136	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	1	2	8	2020-12-25 14:45:32.049024	2021-04-13 15:27:13.407331	大同 	二	鉅鈦開發有限公司		109年度司執字第48074號/3拍進場/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	王渝閩	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
102	109司執字第  59455號		\N	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-01-08	3	39	3	2021-01-08 08:38:08.923892	2021-01-08 08:38:08.923892			揚富開發有限公司		/未判定/3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳瓊卿	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
103	109年司執字042850號 		\N	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-01-08	3	22	3	2021-01-08 08:44:41.970224	2021-01-08 08:44:41.970224	江子翠  	第一崁	鉅鈦開發有限公司		/未判定/3/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳俊明	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
107	109司執42869	山海路69之4號	\N	2021-01-19	\N	\N	0	880000	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	176000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/10905/15144147850.017.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-01-17	22	341	4	2021-01-13 01:31:09.238691	2021-01-17 19:25:05.409683	龍泉水		揚富開發有限公司		109司執42869/放棄/4/22		2021-01-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
101	109司執40512	右昌忠義八巷33號	2021-01-13	\N	\N	\N	450000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	90000	\N	\N	\N	\N	\N	2021-01-05	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	1拍進場	\N	t	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-01-15	18	266	4	2021-01-05 09:56:28.643234	2021-01-15 14:18:38.291186			揚富開發有限公司		109司執40512/1拍進場/4/18	第三人搶標	2021-01-15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
109	109司執32479	和誠街96巷8號	\N	2021-01-21	\N	\N	0	776000	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	156000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ksd/11001/07155947050.010.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	2拍進場	\N	t	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-02-24	18	264	4	2021-01-15 14:29:23.721607	2021-02-24 03:02:22.481026	草衙	二	揚富開發有限公司		109司執32479/2拍進場/4/18	第三人搶標	2021-02-24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
108	109司執38502	蓬萊163號	\N	2021-01-19	\N	\N	0	976000	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	196000	\N	\N	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ctd/10912/23152250119.041.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	2拍進場	\N	t	f	f	f	f	t	t	t	f	f	t	t	t	t	f	t	2021-03-14	18	285	4	2021-01-15 14:23:55.364875	2021-03-14 13:00:32.046703	竹寮		揚富開發有限公司		109司執38502/2拍進場/4/18	得標	2021-03-14	遭優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
106	106年度司執字第56950號	東明街48號4樓	2021-02-04	\N	\N	\N	7950000	0	0	0	108	\N	\N	\N	1	\N	\N	\N	1590000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	1	11	8	2021-01-12 16:32:50.023473	2021-04-13 15:30:29.721247	南港	四	揚富開發有限公司		106年度司執字第56950號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	張志榮	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
104	109年度司執字第28865號	大同路3段105巷1弄5號4樓	2021-02-03	\N	\N	\N	652000	0	0	0	42	\N	\N	\N	0	\N	\N	\N	140000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-14	3	23	8	2021-01-12 14:48:05.436684	2021-04-14 15:17:02.515679	長安		揚富開發有限公司		109年度司執字第28865號/未判定/8/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蘇武銘	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
110	109司執22251號	長榮街14巷12	\N	\N	\N	2021-02-02	0	0	0	414720	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	83000	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/11001/08142548704.010.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-02	22	323	4	2021-01-18 08:45:37.440385	2021-05-02 12:56:54.900727	中洲		揚富開發有限公司		109司執22251號/4拍進場/4/22	得標	2021-05-02	無人優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
99	109誠25936	中庄村20鄰中正路204號	2021-01-05	\N	\N	\N	810000	0	0	0	68	\N	\N	\N	0	\N	\N	\N	161000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	15	195	6	2020-12-31 03:00:23.060281	2021-05-07 23:20:19.133096	永福		揚富開發有限公司	https://tw.988house.com/auction/606127	109誠25936/未判定/6/15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
159	109司執字第104902號	民權街232號	\N	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11005/12090944139.012.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	17	249	6	2021-05-19 15:26:09.837982	2021-06-14 00:51:50.001581	光明段		揚富開發有限公司		109司執字第104902號/放棄/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
162	109司執字第111619號(未辦保存登記)	謝厝寮157之4號	2021-05-26	\N	\N	\N	650000	0	0	0	44	\N	\N	\N	0	\N	\N	\N	130000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-20	17	238	6	2021-05-19 15:30:08.942892	2021-05-20 14:40:40.442415	謝厝寮		揚富開發有限公司	https://tw.988house.com/auction/615871	109司執字第111619號/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
158	107司執字第41426號	松河街658號3樓	\N	\N	2021-06-24	\N	0	0	765800	0	\N	\N	155	\N	\N	\N	2	\N	\N	\N	160000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-01	1	11	8	2021-05-19 15:21:21.860291	2021-06-01 13:25:17.319265			揚富開發有限公司	https://tw.988house.com/auction/608750	107司執字第41426號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
112	109速73206 （未辦保存登記）	安和路一段321巷62號	2021-02-23	2021-03-16	2021-04-06	2021-05-18	780000	624000	499200	399400	7	\N	\N	\N	0	\N	\N	\N	156000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	226	6	2021-01-18 11:59:56.664874	2021-05-08 00:59:58.120647	安西段		揚富開發有限公司	https://tw.988house.com/auction/607958	109速73206/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
100	109年度司執字第36067號	長榮路五段187巷32號	2021-01-26	0110-02-23	2021-03-16	\N	1100000	880000	704000	0	\N	\N	\N	\N	\N	\N	\N	\N	220000	\N	\N	\N	\N	2021-01-02	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10912/30105700688.008.pdf	\N	https://www.google.com/maps/place/704%E5%8F%B0%E5%8D%97%E5%B8%82%E5%8C%97%E5%8D%80%E9%95%B7%E6%A6%AE%E8%B7%AF%E4%BA%94%E6%AE%B5187%E5%B7%B732%E8%99%9F/@23.0119215,120.2194313,3a,83.7y,347.19h,109.28t/data=!3m6!1e1!3m4!1sfKiAiJ2BnSZQI97OwbJ0og!2e0!7i16384!8i8192!4m5!3m4!1s0x346e76e4f8f21daf:0x15b7a19d4a1aea6a!8m2!3d23.0119477!4d120.2193809?hl=zh_TW&authuser=0	\N	https://drive.google.com/file/d/1aPAyPdkyu5oeFXs_bE0dbbqcNmCz5FZ5/view?usp=sharing	\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-03	17	224	8	2021-01-01 09:59:40.147299	2021-05-03 11:44:57.661924	富台 		揚富開發有限公司	https://tw.988house.com/auction/607326	109年度司執字第36067號/4拍進場/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳國瑞律師即趙逢青之遺產管理人	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
113	109南98245	東榮街92巷7號	2021-02-23	\N	\N	\N	2400000	0	0	0	15	\N	\N	\N	0	\N	\N	\N	248000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	235	6	2021-01-27 21:31:24.907469	2021-05-07 23:49:57.017539	四甲		揚富開發有限公司	https://tw.988house.com/auction/608930	109南98245/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
116	109年度司執字第74508號	建中街65號	2021-03-09	2021-03-30	2021-04-20	\N	2110000	1899000	1710000	0	3	80	109	\N	0	0	0	\N	422000	380000	342000	\N	\N	2021-04-20	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	239	8	2021-02-09 11:14:41.356531	2021-05-07 13:40:09.382321	佳里段		揚富開發有限公司	https://tw.988house.com/auction/609746	109年度司執字第74508號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	黃議弘	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
123	109清98740	大同路一段70巷17號5樓之3	2021-03-16	\N	\N	\N	2500000	0	0	0	11	\N	\N	\N	0	\N	\N	\N	500000	\N	\N	\N	\N	2021-04-17	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/18154128189.012.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-17	17	221	6	2021-03-05 15:16:12.655056	2021-04-17 00:22:48.364684	郡王祠		揚富開發有限公司	https://tw.988house.com/auction/610695	109清98740/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
85	109司執2874	樹德路2巷2號	\N	\N	\N	2020-12-09	0	0	0	614400	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	123000	\N	\N	2020-10-06	\N	http://aomp.judicial.gov.tw/abbs/sale/ksd/10911/17144705644.024.pdf	\N	https://www.google.com.tw/maps/place/806%E9%AB%98%E9%9B%84%E5%B8%82%E5%89%8D%E9%8E%AE%E5%8D%80%E6%A8%B9%E5%BE%B7%E8%B7%AF2%E5%B7%B72%E8%99%9F/@22.5892992,120.3175317,3a,90y,58.77h,105.08t/data=!3m7!1e1!3m5!1sRoejscKzmMJWul9-nECcaA!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3DRoejscKzmMJWul9-nECcaA%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D50.01228%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e0314e20c9fa5:0xaf7cab107580b6df!8m2!3d22.5893098!4d120.3175719?hl=zh-TW&authuser=0	\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	t	t	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-02-19	18	264	4	2020-12-06 08:45:59.562467	2021-02-19 14:33:27.123567	振昌		揚富開發有限公司		109司執2874/4拍進場/4/18	得標	2021-02-19	遭優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
122	109廉96762	郡安路三段236巷6弄2號	2021-03-09	2021-03-30	\N	\N	1580000	1264000	0	0	56	\N	\N	\N	0	\N	\N	\N	316000	\N	\N	\N	\N	\N	\N	\N		\N	https://www.google.com/maps/@23.0303011,120.2165569,3a,75y,202.73h,103.3t/data=!3m7!1e1!3m5!1s80ehgGlYmFhePhj74nJMvw!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3D80ehgGlYmFhePhj74nJMvw%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D234.85318%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192	\N	https://drive.google.com/file/d/1WyTBif3PEWlI7Dnxj_K1xJ78fHGecJCj/view?usp=drivesdk	\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-03-26	17	226	6	2021-03-05 14:56:20.509527	2021-03-26 09:47:08.400229	安東		揚富開發有限公司	https://tw.988house.com/auction/609311	109廉96762/4拍進場/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
118	109文55155	金潭路279巷20弄3號	\N	\N	2021-02-24	\N	0	0	512000	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	103000	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ksd/11001/25091647841.003.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	t	f	f	f	t	t	t	f	t	t	t	t	t	t	f	t	2021-05-02	18	283	4	2021-02-19 14:51:43.277562	2021-05-02 12:59:51.792344	清水巖		揚富開發有限公司		109文55155/3拍進場/4/18	得標	2021-05-02	遭優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
119	109源112518	五妃街207之4號	2021-03-24	2021-04-14	2021-05-05	\N	1470000	1176000	940800	0	14	\N	122	\N	0	\N	0	\N	294000	\N	189000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	221	6	2021-02-27 00:24:44.20644	2021-05-07 23:39:39.396853	郡王祠		揚富開發有限公司	https://tw.988house.com/auction/610456	109源112518/4拍進場/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
114	109年度司執字第96558號	文賢路34號	2021-02-23	2021-03-23	2021-04-13	2021-05-18	540000	592000	473600	378880	45	\N	\N	221	0	\N	\N	1	108000	\N	\N	76000	\N	2021-02-10	\N	\N		\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?para=MTA5fDqlcbD1fDowOTY1NTh8OlRORA==	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e6%96%87%e8%b3%a2%e8%b7%af34%e8%99%9f	\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-27	17	221	8	2021-02-07 14:13:30.503176	2021-04-27 14:14:38.905093	老古石段		揚富開發有限公司	https://tw.988house.com/auction/609559	109年度司執字第96558號/4拍進場/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蘇興文	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
120	109方89787	西門路一段556號	2021-03-11	\N	\N	\N	14000000	0	0	0	122	\N	\N	\N	0	\N	\N	\N	2800000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/24133455585.002.pdf	\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-07	17	221	6	2021-03-03 00:50:30.008094	2021-05-07 22:48:28.973534	南門		揚富開發有限公司	https://tw.988house.com/auction/609797	109方89787/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
121	108年司執字118075號	西門路二段307巷12號	2021-03-24	\N	\N	\N	2120000	0	0	0	53	\N	\N	\N	0	\N	\N	\N	424000	\N	\N	\N	\N	2021-03-06	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/26082946898.024.pdf	\N		\N	https://drive.google.com/file/d/1RIosI35Xs_TuSXcNyE75kR3Vb9sNdw-l/view?usp=sharing	\N	\N	\N	\N	\N	https://tw.988house.com/auction/297189	\N	\N	1拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-03-26	17	221	6	2021-03-03 01:12:29.334017	2021-03-26 14:41:29.627666	五條港		揚富開發有限公司	https://tw.988house.com/auction/611554	108年司執字118075號/1拍進場/6/17	得標	2021-03-26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	廖玲玉即廖章廷之繼承人、梁月雲即廖鐘富之繼承人即廖 章廷之繼承人	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
132	109司執簡字第107286號	南門路44巷10之1號	\N	2021-03-30	2021-04-20	\N	0	729000	657000	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	146000	\N	\N	\N	2021-03-27	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11003/09155129651.022.pdf	\N		\N	https://drive.google.com/file/d/1ttKUOZCyDiSEf3YQ1wYp2DyblpQe7ecS/view?usp=drivesdk	\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-12	17	221	6	2021-03-19 15:14:50.555923	2021-04-12 10:45:26.007897	南門段		揚富開發有限公司	https://tw.988house.com/auction/614090	109司執簡字第107286號/4拍進場/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
117	109雄金酉263	九如1路883號6F-4	\N	\N	\N	2021-02-24	0	0	0	519000	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	104000	\N	\N	\N	\N	https://tfasc.blob.core.windows.net/importbulletin/11001_26103907.110	\N		\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	t	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-06-08	18	265	4	2021-02-19 14:43:42.244179	2021-06-08 11:11:50.298557	大港		揚富開發有限公司		109雄金酉263/4拍進場/4/18	得標	2021-06-08	無人優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
11	108司執字43915\t	新生路52號	\N	\N	\N	2020-06-09	0	0	0	362000	\N	\N	\N	261	\N	\N	\N	1	\N	\N	\N	73000	\N	\N	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/ptd/10905/15144147850.017.pdf	\N	https://www.google.com.tw/maps/place/924%E5%B1%8F%E6%9D%B1%E7%B8%A3%E5%B4%81%E9%A0%82%E9%84%89%E6%96%B0%E7%94%9F%E8%B7%AF52%E8%99%9F/@22.5040189,120.4812574,3a,85.9y,289.62h,105.78t/data=!3m7!1e1!3m5!1sTIgDcz2GNNOwWmYdj4dv5Q!2e0!6s%2F%2Fgeo0.ggpht.com%2Fcbk%3Fpanoid%3DTIgDcz2GNNOwWmYdj4dv5Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod%2Fmaps%2Flocal-details-getcard.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D326.12936%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656!4m5!3m4!1s0x346e1e32af9a7489:0xf365959c38ff0447!8m2!3d22.5040427!4d120.4811859?hl=zh-TW	\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	t	t	f	f	f	f	t	t	t	t	t	t	t	t	t	f	t	2021-03-14	22	327	4	2020-07-20 08:16:10.504775	2021-03-14 13:02:20.27505			揚富開發有限公司		108司執字43915\t/4拍進場/4/22		2021-03-14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
73	109明75353	武英街33巷22號	2020-12-16	2021-01-06	2021-01-27	2021-03-03	970000	776000	620800	496640	24	80	122	122	0	0	0	0	194000	156000	125000	100000	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/05103551381.011.pdf	\N	https://www.google.com.tw/maps/@22.989011,120.1916423,3a,90y,142.78h,98.23t/data=!3m7!1e1!3m5!1sDaNKhziWRKY-4ESYYF6LEg!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3DDaNKhziWRKY-4ESYYF6LEg%26output%3Dthumbnail%26cb_client%3Dmaps_sv.tactile.gps%26thumb%3D2%26w%3D203%26h%3D100%26yaw%3D267.2623%26pitch%3D0%26thumbfov%3D100!7i13312!8i6656	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/540565	\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-03	17	221	6	2020-11-25 00:33:06.238934	2021-05-03 14:17:34.861267	保安		揚富開發有限公司	https://tw.988house.com/auction/605107	109明75353/3拍進場/6/17	得標	2021-05-03	無人優購	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	凃順德	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
160	109司執字第97382號	新建路43巷13之1號	2021-06-08	\N	\N	\N	1410000	0	0	0	19	\N	\N	\N	0	\N	\N	\N	282000	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11005/05165945743.006.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?para=MTA5fDqlcbD1fDowOTczODJ8OlRORA==	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-20	17	223	6	2021-05-19 15:27:49.459746	2021-05-20 15:05:53.074985	鹽埕		揚富開發有限公司	https://tw.988house.com/auction/616202	109司執字第97382號/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
137	108年度司執字第49860號	美崙街86巷16號	\N	2021-04-12	0110-05-10	\N	0	2704000	2165000	0	\N	88	163	\N	\N	2	3	\N	\N	\N	440000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-22	1	8	8	2021-03-26 14:39:44.597011	2021-04-22 15:01:31.14177	陽明	 三	鉅鈦開發有限公司	https://tw.988house.com/auction/610322	108年度司執字第49860號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	孫勝民	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
126	109年度司執字第78498號	南潭二街150號	2021-03-23	2021-04-20	2021-05-11	\N	4500000	4050000	3645000	0	70	\N	\N	\N	0	\N	\N	\N	900000	810000	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-27	17	228	8	2021-03-18 13:54:03.878882	2021-04-27 14:28:09.409187	八甲段		揚富開發有限公司		109年度司執字第78498號/放棄/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	王淑珍	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
127	109年度司執字第93452號	長榮路二段32巷46弄33號	2021-04-13	\N	\N	\N	1100000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	220000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	222	8	2021-03-18 14:11:48.907944	2021-04-13 17:11:54.587765	東安段 		揚富開發有限公司		109年度司執字第93452號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
133	109六85385	中平九街91號	\N	\N	2021-03-24	\N	0	0	696000	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	200000	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tcd/11002/24150018734.012.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	t	t	t	t	t	t	t	t	t	t	t	t	t	t	f	t	2021-05-14	11	121	4	2021-03-19 19:35:46.285988	2021-05-14 05:23:57.229494	福平		揚富開發有限公司		109六85385/3拍進場/4/11	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	李復富	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
130	109湘102505 	北寮街23號	2021-03-24	2021-04-14	2021-05-05	\N	500000	400000	320000	0	71	\N	\N	\N	0	\N	\N	\N	100000	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/23134656432.015.pdf	\N	https://www.google.com/maps/@22.976303,120.356514,3a,75y,340.63h,109.83t/data=!3m6!1e1!3m4!1sYH65HI7cA0blcZRhulY-KQ!2e0!7i13312!8i6656	\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	235	6	2021-03-19 14:33:57.566083	2021-05-08 00:13:28.660562	新埔		揚富開發有限公司	https://tw.988house.com/auction/610652	109湘102505 /未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
134	109年度司執字第32750號	光復路14號	\N	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-03-24	15	192	8	2021-03-24 14:46:24.630793	2021-03-24 14:46:24.630793			揚富開發有限公司		/未判定/8/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
129	109年度司執字第53609號		2021-04-12	\N	\N	\N	4990000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-14	3	23	8	2021-03-18 14:50:14.048122	2021-04-14 04:46:20.709898	中正		揚富開發有限公司		109年度司執字第53609號/未判定/8/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
161	110司執字第18606號	新興路91巷14號	2021-06-09	\N	\N	\N	2500000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	500000	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11005/12094402011.017.pdf	\N	https://www.google.com/maps/@22.9787728,120.1966228,3a,63y,185.18h,125.7t/data=!3m6!1e1!3m4!1ss5iHOCRRD_tL8W-cg_D_AQ!2e0!7i13312!8i6656	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/495279	\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-20	17	223	6	2021-05-19 15:28:58.028879	2021-05-20 14:54:12.713102	鹽埕		揚富開發有限公司		110司執字第18606號/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
141	109年度司執字第35637號	民族六街4巷9號3樓	\N	\N	\N	\N	0	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-03-28	3	23	8	2021-03-28 13:42:34.319368	2021-03-28 13:42:34.319368	金龍(不同段名)		揚富開發有限公司		/未判定/8/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	高右龍	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
140	109年度司執字第53609號	中正路99巷2號4樓	2021-04-12	\N	\N	\N	4990000	0	0	0	16	\N	\N	\N	1	\N	\N	\N	1000000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-03-28	3	23	8	2021-03-28 13:18:33.79419	2021-03-28 13:24:43.100243	中正段		揚富開發有限公司		109年度司執字第53609號/未判定/8/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	蔡怡君	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
125	108治18844	安樂三街76巷8號	\N	\N	2021-03-24	\N	0	0	1536000	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	308000	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ctd/11002/24134216828.013.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	t	t	f	t	t	t	t	t	t	f	t	2021-05-02	18	269	4	2021-03-18 09:48:10.367358	2021-05-02 13:00:30.453223	仁營		揚富開發有限公司		108治18844/3拍進場/4/18	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	沈國成	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
131	109北79276	新進路二段445巷4號	2021-03-30	2021-04-27	2021-05-25	\N	1210000	968000	774400	0	35	\N	\N	\N	0	\N	\N	\N	242000	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11003/05083553593.028.pdf	\N		\N	https://drive.google.com/file/d/1XXd-Dh3GZnZU696jOGLsVCgOY4HQIuoF/view?usp=drivesdk	\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	17	245	6	2021-03-19 14:55:01.138107	2021-06-14 02:26:47.198547	新電		揚富開發有限公司	https://tw.988house.com/auction/611300	109北79276/4拍進場/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
128	109年度司執字第95887號	永華路201巷32弄33號	2021-03-04	\N	\N	\N	4400000	0	0	0	133	\N	\N	\N	0	\N	\N	\N	880000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	227	8	2021-03-18 14:36:33.350871	2021-04-13 17:00:05.122646	大灣段		揚富開發有限公司	https://tw.988house.com/auction/607363	109年度司執字第95887號/放棄/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
138	109方121438	建平七街677號3樓之16	2021-03-18	2021-04-08	2021-04-29	\N	5000000	4000000	3200000	0	\N	\N	89	\N	\N	\N	0	\N	100000	800000	640000	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11003/18104729626.002.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	225	6	2021-03-26 14:50:03.371953	2021-05-08 00:04:07.875595	金華		揚富開發有限公司	https://tw.988house.com/auction/610212	109方121438/未判定/6/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
98	109司執字第  32790號	一德街10巷7號4樓	2021-01-21	\N	2021-03-11	\N	3170000	0	2543000	0	44	\N	192	\N	1	\N	2	\N	640000	\N	510000	\N	\N	\N	\N	\N		\N	https://www.google.com.tw/maps/place/112%E5%8F%B0%E5%8C%97%E5%B8%82%E5%8C%97%E6%8A%95%E5%8D%80%E4%B8%80%E5%BE%B7%E8%A1%9710%E5%B7%B77%E8%99%9F/@25.1287905,121.4687012,3a,52.2y,156.82h,97t/data=!3m7!1e1!3m5!1sv6TgTboQnTrzlsQOErmtEA!2e0!6s%2F%2Fgeo1.ggpht.com%2Fcbk%3Fpanoid%3Dv6TgTboQnTrzlsQOErmtEA%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D20.18782%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x3442af0b521ce959:0x61a3d7ec485e4b95!8m2!3d25.12905!4d121.468812?hl=zh-TW	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/10%e5%b7%b77%e8%99%9f4%e6%a8%93	\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	1	9	8	2020-12-25 14:58:59.082668	2021-04-13 15:28:48.209363	桃源段 	五小段	鉅鈦開發有限公司	https://tw.988house.com/auction/606834	109司執字第  32790號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
57	109年度司執字第13135號	仁和路107巷12號	2020-11-10	2020-12-08	2021-01-05	2021-02-17	850000	680000	546000	493000	17	57	77	146	3	1	1	1	170000	136000	110000	99000	\N	2020-10-17	\N	\N	http://aomp.judicial.gov.tw/abbs/sale/tnd/10910/05203423595.003.pdf	\N	https://maps.app.goo.gl/DQS9Y6P26jbTSCiq5	\N	https://drive.google.com/file/d/1SeWwgcjVhLB-uizg1HM5a9nc8UQyF0_u/view?usp=drivesdk	\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/107%e5%b7%b712%e8%99%9f	\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-13	17	222	8	2020-10-14 14:28:31.63846	2021-04-13 17:02:09.737642	仁和段		揚富開發有限公司	https://tw.988house.com/auction/601834	109年度司執字第13135號/4拍進場/8/17	第三人搶標	2021-04-13	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	黃臆潔即黃芳玉	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
41	109年度司執字第16332號	和平路277號	2020-10-15	\N	\N	\N	2274000	0	0	0	69	\N	\N	\N	0	\N	\N	\N	455000	\N	\N	\N	\N	\N	\N	\N	http://www.104woo.com.tw/tom1/house/lin_k_new_icon2.asp?iconx=d&m_1_db1=t5e_h_m_1_db1_data&no=25276&check104=253158	\N	https://www.google.com.tw/maps/place/600%E5%98%89%E7%BE%A9%E5%B8%82%E6%9D%B1%E5%8D%80%E5%92%8C%E5%B9%B3%E8%B7%AF277%E8%99%9F/@23.4806747,120.4565646,3a,90y,266.93h,89.77t/data=!3m7!1e1!3m5!1s-zhxJv40FOwYzuO7lUsf6Q!2e0!6s%2F%2Fgeo3.ggpht.com%2Fcbk%3Fpanoid%3D-zhxJv40FOwYzuO7lUsf6Q%26output%3Dthumbnail%26cb_client%3Dsearch.gws-prod.gps%26thumb%3D2%26w%3D86%26h%3D86%26yaw%3D235.05804%26pitch%3D0%26thumbfov%3D100!7i16384!8i8192!4m5!3m4!1s0x346e9435b0fb491d:0x45a43969522a4901!8m2!3d23.480632!4d120.456493	\N		\N	\N	\N	\N	\N	https://tw.988house.com/auction/keyword/%e6%9d%b1%e5%8d%80%e5%92%8c%e5%b9%b3%e8%b7%af277%e8%99%9f	\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-14	14	181	8	2020-09-25 23:35:57.512074	2021-04-14 04:40:16.770786	東門	七	揚富開發有限公司	https://tw.988house.com/auction/600560	109年度司執字第16332號/放棄/8/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	賴信章	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
143	108年司執字125570號	自強路四段31巷30號5樓	2021-03-04	2021-04-01	2021-05-06	\N	2000000	1600000	1290000	0	\N	\N	90	\N	\N	\N	0	\N	400000	320000	260000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-18	3	39	3	2021-04-18 13:56:42.468102	2021-04-18 14:41:19.179556	幸福段		鉅鈦開發有限公司		108年司執字125570號/未判定/3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	林慧紅即林翠紅	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
144	109年司執助字006167號	中山路一段206巷117號2樓	2021-05-12	\N	\N	\N	2950000	0	0	0	22	\N	\N	\N	0	\N	\N	\N	590000	\N	\N	\N	\N	2021-04-18	2021-04-19	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-19	3	22	3	2021-04-18 15:02:03.744988	2021-04-19 08:42:48.521981	中山段 		鉅鈦開發有限公司		109年司執助字006167號/4拍進場/3/3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	謝承峰	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
150	109年度司執字第89762號(甲標)	鯤鯓路184巷11之1號	2021-05-11	\N	\N	\N	950000	0	0	0	34	\N	\N	\N	2	\N	\N	\N	190000	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11004/13141415078.028.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-01	17	223	8	2021-04-30 15:31:59.051352	2021-05-01 03:30:38.894838	龍崗段 		揚富開發有限公司	https://tw.988house.com/auction/615277	109年度司執字第89762號(甲標)/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳順興	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
146	109司執字第79276號	新進路二段445巷4號	2021-03-30	2021-04-27	\N	\N	1210000	968000	0	0	\N	\N	\N	\N	\N	\N	\N	\N	242000	194000	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-22	17	245	8	2021-04-22 14:41:20.675611	2021-04-22 14:43:06.27966	新電段		揚富開發有限公司		109司執字第79276號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
151	109司執81711	中芸二路2巷35號	\N	\N	\N	2021-05-05	0	0	0	1305600	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	262000	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/ksd/11004/07140254618.024.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	4拍進場	\N	f	f	f	f	f	t	t	f	t	t	t	t	t	t	f	t	2021-05-02	18	283	4	2021-05-02 13:12:20.128074	2021-05-02 13:12:20.128074	中芸		揚富開發有限公司		/未判定/4/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
149	109年司執字040017號	文化路694巷29弄26號	2021-04-28	\N	\N	\N	788000	0	0	0	22	\N	\N	\N	0	\N	\N	\N	158000	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11003/31141426274.004.pdf	\N		\N	https://drive.google.com/file/d/1fb62nHrGvQNCZOtxkeJ4ted3yNkrcVgA	\N	\N	\N	\N	\N		\N	\N	3拍進場	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	14	182	6	2021-04-28 03:46:14.258719	2021-06-14 01:26:24.861811	新厝		揚富開發有限公司	https://tw.988house.com/auction/614720	109年司執字040017號/未判定/6/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
147	110年度南金職字第14號	長榮路二段24巷54號5樓	2021-03-10	2021-03-31	2021-04-28	\N	550000	495000	446000	0	\N	\N	116	\N	\N	\N	2	\N	110000	99000	90000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-23	17	222	8	2021-04-22 15:54:06.944034	2021-04-23 23:34:12.525797	東安段		揚富開發有限公司	https://tw.988house.com/auction/610059	110年度南金職字第14號/未判定/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	陳麗如	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
145	110年度士金職字第28號	德行東路109巷67號2樓	2021-03-24	2021-04-14	2021-05-05	\N	5000000	4000000	3201000	0	\N	\N	\N	\N	\N	\N	\N	\N	1000000	800000	641000	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-04-27	1	8	8	2021-04-21 15:01:07.926054	2021-04-27 14:28:38.461063	三玉段  	四小段	鉅鈦開發有限公司		110年度士金職字第28號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
152	109年度司執字第31027號	民生南路618號	2021-06-01	\N	\N	\N	734000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	147000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	14	182	8	2021-05-04 14:17:00.330637	2021-06-14 01:52:29.604207	湖內 		揚富開發有限公司	https://tw.988house.com/auction/616179	109年度司執字第31027號/放棄/8/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	張真	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
115	109年度司執字第58240號	德善二街51巷17號	2021-03-03	2021-03-24	2021-04-14	\N	5000000	4500000	4050000	0	\N	\N	\N	\N	\N	\N	\N	\N	1000000	900000	810000	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/tnd/11002/01165837394.015.pdf	\N	https://kpic.judicial.gov.tw/judkp/wkw/WHD1A02_DETAIL.htm?para=MTA5fDqlcbD1fDowNTgyNDB8OlRORA==	\N	https://drive.google.com/drive/folders/12Wh4eeby8SQ0Cne9ADOHrHd1vLo4e54N?usp=sharing	\N	\N	\N	\N	\N		\N	\N	放棄	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-05-08	17	234	8	2021-02-07 14:49:01.284254	2021-05-08 02:07:52.379057	後壁		揚富開發有限公司		109年度司執字第58240號/放棄/8/17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	黃俊傑	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
155	110年度司執字第3667號	國城三街18號4樓2	2021-06-23	\N	\N	\N	1314000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-14	14	182	8	2021-05-12 13:51:18.845279	2021-06-14 02:03:18.106737	竹圍子 	二 	揚富開發有限公司	https://tw.988house.com/auction/616211	110年度司執字第3667號/未判定/8/14	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	王桂芳	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t
164	110年司執字005029號	玉山路94巷232弄49號	2021-06-22	\N	\N	\N	6714000	0	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	https://aomp109.judicial.gov.tw/judbp/wkw/WHD1A02/DO_VIEWPDF.htm?filenm=/cyd/11005/25105800843.018.pdf	\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-04	14	182	6	2021-06-04 21:50:14.574297	2021-06-04 21:50:14.574297	港子坪		揚富開發有限公司		/未判定/6/	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
156	109司執字第56774號	大北路30號	2021-05-27	\N	\N	\N	5960000	0	0	0	40	\N	\N	\N	1	\N	\N	\N	1200000	\N	\N	\N	\N	\N	\N	\N		\N		\N		\N	\N	\N	\N	\N		\N	\N	未判定	\N	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	2021-06-01	1	8	8	2021-05-19 15:17:04.308959	2021-06-01 13:24:09.027736			揚富開發有限公司	https://tw.988house.com/auction/616632	109司執字第56774號/未判定/8/1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f
\.


--
-- Name: builds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.builds_id_seq', 227, true);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.countries_id_seq', 24, true);


--
-- Name: lands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.lands_id_seq', 224, true);


--
-- Name: objectbuilds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.objectbuilds_id_seq', 302, true);


--
-- Name: personnals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.personnals_id_seq', 18, true);


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

SELECT pg_catalog.setval('public.subsigntrueas_id_seq', 52, true);


--
-- Name: subsigntruebs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.subsigntruebs_id_seq', 10, true);


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

SELECT pg_catalog.setval('public.yfcases_id_seq', 168, true);


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

