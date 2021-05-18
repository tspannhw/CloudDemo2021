CREATE EXTERNAL TABLE stocksparquet
(
    `symbol` STRING, 
  uuid STRING,
    `ts` BIGINT,
    `dt`	 BIGINT,
  `datetime` STRING,
  `open` STRING, 
  `close` STRING,
  `high` STRING,
  `volume` STRING,
  `low` STRING,
PRIMARY KEY (uuid,`datetime`) ) 
STORED AS PARQUET
LOCATION '/tmp/stocks/stocks3';


# Kafka Connect to parquet requires a schema without union types so no Nulls and no timestamps


CREATE EXTERNAL TABLE scada
(
uuid STRING, 
	systemtime STRING,  
temperaturef STRING,
    pressure double,
    humidity double,
    lux double,
    proximity int,
    oxidising double,
    reducing double,
    nh3 double, gasko string, amplitude100 double, amplitude500 double, amplitude1000 double, lownoise double, midnoise double, highnoise double,
    amps double, cpu double, memory double, ipaddress string, host string, host_name string, macaddress string, endtime string, runtime string, starttime string,
    cpu_temp string, diskusage string, id string, temperature string, adjtemp string, adjtempf string,
PRIMARY KEY (uuid) ) 
STORED AS PARQUET
LOCATION '/tmp/sensors2';

