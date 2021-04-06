-- specify Kafka partition key on output
SELECT foo AS _eventKey FROM sensors

-- use event time timestamp from kafka
-- exactly once compatible
SELECT eventTimestamp FROM sensors

-- nested structures access
SELECT foo.’bar’ FROM table; -- must quote nested column

-- timestamps
SELECT * FROM payments
WHERE eventTimestamp > CURRENT_TIMESTAMP-interval '10' second;

-- unnest
SELECT b.*, u.*
FROM bgp_avro b,
UNNEST(b.path) AS u(pathitem)

-- aggregations and windows
SELECT card,
MAX(amount) as theamount,
TUMBLE_END(eventTimestamp, interval '5' minute) as ts
FROM payments
WHERE lat IS NOT NULL
AND lon IS NOT NULL
GROUP BY card, 
TUMBLE(eventTimestamp, interval '5' minute)
HAVING COUNT(*) > 4 -- >4==fraud

-- try to do this ksql!
SELECT us_west.user_score+ap_south.user_score
FROM kafka_in_zone_us_west us_west
FULL OUTER JOIN kafka_in_zone_ap_south ap_south
ON us_west.user_id = ap_south.user_id;


function GETPLANE(icao) {
    var c = new java.net.URL('http://yyyyyy.io' + icao).openConnection();
    c.requestMethod='GET';
    var reader = new java.io.BufferedReader(new java.io.InputStreamReader(c.inputStream));
    return reader.readLine();
}
GETPLANE($p0); //emit


select location, max(temp_f) as max_temp_f, avg(temp_f) as avg_temp_f, min(temp_f) as min_temp_f from weather2 group by location


SELECT scada.uuid, scada.systemtime, scada.temperaturef, scada.pressure, scada.humidity, scada.lux, scada.proximity, scada.oxidising,scada.reducing , scada.nh3, scada.gasko,energy.current, energy.voltage,energy.power,energy.total,energy.fanstatus FROM energy JOIN scada ON energy.systemtime = scada.systemtime;

SELECT CAST(symbol as STRING) symbol, CAST(uuid as STRING) uuid, ts, dt, open, close, high, volume, low, datetime, 'new-high' message, 'nh' alertcode, CAST(CURRENT_TIMESTAMP AS BIGINT) alerttime FROM stocks st WHERE symbol is not null and symbol <> 'null' and trim(symbol) <> '' and CAST(close as DOUBLE) > (SELECT MAX(CAST(close as DOUBLE)) FROM stocks s WHERE s.symbol = st.symbol);

SELECT scada2.uuid, scada2.systemtime, scada2.temperaturef, scada2.pressure, scada2.humidity, scada2.lux, scada2.proximity, scada2.oxidising,scada2.reducing , scada2.nh3, scada2.gasko, energy2.voltage,energy2.total,energy2.fanstatus FROM energy2, scada2 WHERE energy2.systemtime = scada2.systemtime


SELECT location, station_id, latitude, longitude, observation_time, weather, temperature_string, temp_f, temp_c, relative_humidity, wind_string, wind_dir, wind_degrees, wind_mph, wind_kt, pressure_in, dewpoint_string, dewpoint_f, dewpoint_c FROM weather2 WHERE location is not null and location <> 'null' and trim(location) <> '' and location like '%NJ'


SELECT HOP_END(eventTimestamp, INTERVAL '1' SECOND, INTERVAL '30' SECOND) as windowEnd, count("close") as closeCount, sum(cast("close" as float)) as closeSum, avg(cast("close" as float)) as closeAverage, min("close") as closeMin, max("close") as closeMax, sum(case when "close" > 14 then 1 else 0 end) as stockGreaterThan14 FROM stocksraw GROUP BY HOP(eventTimestamp, INTERVAL '1' SECOND, INTERVAL '30' SECOND)


SELECT HOP_END(eventTimestamp, INTERVAL '1' SECOND, INTERVAL '30' SECOND) as windowEnd, count("close") as closeCount, sum(cast("close" as float)) as closeSum, avg(cast("close" as float)) as closeAverage, min("close") as closeMin, max("close") as closeMax, sum(case when "close" > 14 then 1 else 0 end) as stockGreaterThan14 FROM stocksraw WHERE symbol = 'CLDR' GROUP BY HOP(eventTimestamp, INTERVAL '1' SECOND, INTERVAL '30' SECOND)



