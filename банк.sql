    create table ACCOUNT (
        ACCOUNT_ID integer not null auto_increment,
        AVAIL_BALANCE float,
        CLOSE_DATE date,
        LAST_ACTIVITY_DATE date,
        OPEN_DATE date not null,
        PENDING_BALANCE float,
        STATUS varchar(10),
        CUST_ID integer,
        OPEN_BRANCH_ID integer not null,
        OPEN_EMP_ID integer not null,
        PRODUCT_CD varchar(10) not null,
        primary key (ACCOUNT_ID)
    );

    create table ACC_TRANSACTION (
        TXN_ID bigint not null auto_increment,
        AMOUNT float not null,
        FUNDS_AVAIL_DATE datetime not null,
        TXN_DATE datetime not null,
        TXN_TYPE_CD varchar(10),
        ACCOUNT_ID integer,
        EXECUTION_BRANCH_ID integer,
        TELLER_EMP_ID integer,
        primary key (TXN_ID)
    );

    create table BRANCH (
        BRANCH_ID integer not null auto_increment,
        ADDRESS varchar(30),
        CITY varchar(20),
        NAME varchar(20) not null,
        STATE varchar(10),
        ZIP_CODE varchar(12),
        primary key (BRANCH_ID)
    );

    create table BUSINESS (
        INCORP_DATE date,
        NAME varchar(255) not null,
        STATE_ID varchar(10) not null,
        CUST_ID integer not null,
        primary key (CUST_ID)
    );

    create table CUSTOMER (
        CUST_ID integer not null auto_increment,
        ADDRESS varchar(30),
        CITY varchar(20),
        CUST_TYPE_CD varchar(1) not null,
        FED_ID varchar(12) not null,
        POSTAL_CODE varchar(10),
        STATE varchar(20),
        primary key (CUST_ID)
    );

    create table DEPARTMENT (
        DEPT_ID integer not null auto_increment,
        NAME varchar(20) not null,
        primary key (DEPT_ID)
    );

    create table EMPLOYEE (
        EMP_ID integer not null auto_increment,
        END_DATE date,
        FIRST_NAME varchar(20) not null,
        LAST_NAME varchar(20) not null,
        START_DATE date not null,
        TITLE varchar(20),
        ASSIGNED_BRANCH_ID integer,
        DEPT_ID integer,
        SUPERIOR_EMP_ID integer,
        primary key (EMP_ID)
    );

    create table INDIVIDUAL (
        BIRTH_DATE date,
        FIRST_NAME varchar(30) not null,
        LAST_NAME varchar(30) not null,
        CUST_ID integer not null,
        primary key (CUST_ID)
    );

    create table OFFICER (
        OFFICER_ID integer not null auto_increment,
        END_DATE date,
        FIRST_NAME varchar(30) not null,
        LAST_NAME varchar(30) not null,
        START_DATE date not null,
        TITLE varchar(20),
        CUST_ID integer,
        primary key (OFFICER_ID)
    );

    create table PRODUCT (
        PRODUCT_CD varchar(10) not null,
        DATE_OFFERED date,
        DATE_RETIRED date,
        NAME varchar(50) not null,
        PRODUCT_TYPE_CD varchar(255),
        primary key (PRODUCT_CD)
    );

    create table PRODUCT_TYPE (
        PRODUCT_TYPE_CD varchar(255) not null,
        NAME varchar(50),
        primary key (PRODUCT_TYPE_CD)
    );

    

 


 