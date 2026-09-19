use playstoredb;
/* level 0 */
select count(appname) from apprecord;
select round(avg(rating),2) from apprecord;
select max(rating) from apprecord;
select min(rating) from apprecord;
select count(downloads) from apprecord;
select * from apprecord order by rating desc;

/* level 1 */
select * from apprecord;
select categoryid,count(categoryId) as count  from apprecord group by categoryid;
select catrecord.categoryid,avg(apprecord.rating) as rateavg from catrecord join apprecord on catrecord.categoryId=apprecord.categoryid group by catrecord.categoryid;
select max(price),min(price) from apprecord;
select * from apprecord order by downloads desc;
select developerid,count(developerid) as count from apprecord group by developerid;
select c.categoryid,count(*) as count from catrecord c  join apprecord a  on (c.categoryid=a.categoryid) group by c.categoryid having count(*)>1;

/* level 2 */
select developerid,sum(downloads) as sum from apprecord  group by developerid;
select publisherid,avg(rating) as avg from apprecord group by publisherid;
select developerid,count(*) from apprecord group by developerid having count(*)>1;
select categoryid,avg(rating) from apprecord group by categoryid having avg(rating)>4.3;
select categoryid,count(*) from apprecord group by categoryid order by count(*) desc;
select * from apprecord where rating in (select max(rating) from apprecord);
select developerid,sum(price) from apprecord group by developerid;
