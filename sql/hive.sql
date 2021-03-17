CREATE TABLE provenancehive
(
  eventId INT,
  timestampMillis INT,
  eventType STRING,
  durationMillis INT,
  lineageStart INT,
  details STRING,
  entityId STRING,
  entityType STRING,
  entitySize INT,
  componentName STRING,
   componentType STRING);

CREATE TABLE hv_stocks
(
  uuid STRING NOT NULL,
  `datetime` STRING,
  `symbol` STRING, 
  `open` STRING, 
  `close` STRING,
  `high` STRING,
  `volume` STRING,
  `low` STRING,
   PRIMARY KEY (UUID) DISABLE NOVALIDATE);


 CREATE EXTERNAL TABLE scada2 
(
uuid STRING, 
	amplitude100 DOUBLE, 
        amplitude500 DOUBLE, 
	amplitude1000 DOUBLE, 
	lownoise DOUBLE, 
	midnoise DOUBLE,
        highnoise DOUBLE, 
	amps DOUBLE, 
	ipaddress STRING, 
	host STRING, 
	host_name STRING,
        macaddress STRING, 
	systemtime STRING,  
	endtime STRING, 
	runtime STRING, 
	starttime STRING, 
        cpu DOUBLE, 
	cpu_temp STRING, 
	diskusage STRING, 
	memory DOUBLE, 
	id STRING, 
	temperature STRING, 
	adjtemp STRING, 
	adjtempf STRING, 
	temperaturef STRING, 
	pressure DOUBLE, 
	humidity DOUBLE, 
	lux DOUBLE, 
	proximity INT, 
	oxidising DOUBLE, 
	reducing DOUBLE, 
	nh3 DOUBLE, 
	gasko STRING)
  ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
  LOCATION '/tmp/demo';
  
