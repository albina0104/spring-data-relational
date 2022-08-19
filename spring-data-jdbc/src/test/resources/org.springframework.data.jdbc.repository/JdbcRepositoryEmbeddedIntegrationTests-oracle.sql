DROP TABLE DUMMY_ENTITY CASCADE CONSTRAINTS PURGE;

CREATE TABLE DUMMY_ENTITY (
    ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    TEST VARCHAR2(100),
    PREFIX2_ATTR NUMBER ,
    PREFIX_TEST VARCHAR2(100),
    PREFIX_PREFIX2_ATTR NUMBER
);

DROP TABLE SORT_EMBEDDED_ENTITY CASCADE CONSTRAINTS PURGE;

CREATE TABLE SORT_EMBEDDED_ENTITY (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(255)
);

DROP TABLE WITH_DOT_COLUMN CASCADE CONSTRAINTS PURGE;

CREATE TABLE WITH_DOT_COLUMN (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    "address.city" VARCHAR(255)
);