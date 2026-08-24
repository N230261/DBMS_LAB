use playstoreDB;

/* level 0 */
select upper(developername) from records;
select lower(developername) from records;
select length(appname) from apprecord;
select categoryname,length(categoryname) from catrecord;
select current_date() as date ,current_time() as time;
select round(rating,0) from apprecord;

/* level 1 */
select substring(appname,1,5) from apprecord;
select concat(developername,country) from records;
select round(rating,2) from apprecord;
select ceil(price) from apprecord;
select foundedyear from records;
select cast(downloads as char) as download from apprecord;
select concat(convert(downloads/100000000,char),'M') as chars from apprecord;

/* level 2 */
select lower(appname) as appname,lower(rating) as rating from apprecord;
select substring(categoryname,1,5) from catrecord;
select abs(price - 200) from apprecord;
select developername,length(developername) from records;
select current_date() as date ,current_timestamp() as timestamp;
select cast(appid as char) as characters from apprecord;
select convert(appid,char)as characters from apprecord;
