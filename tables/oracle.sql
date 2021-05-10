CREATE TABLE VACCINE
(
    vaccine_id number(10) NOT NULL,
    vaccine_name varchar2(50) NOT NULL,
    vaccine_dose number(10),
    vaccine_age varchar2(50),
    CONSTRAINT vaccine_pk PRIMARY KEY (vaccine_id)
);

CREATE TABLE cdc.transcomevents ( 
uuid varchar2(64), 
ts FLOAT(126),  
title varchar2(255), 
description varchar2(255), 
pubDate varchar2(255), 
point varchar2(255),
	 latitude FLOAT(126), 
   longitude FLOAT(126), 
    CONSTRAINT uuid_pk PRIMARY KEY (uuid)
);
