USE Playstoredb;
/* level 1 */
alter table apprecord add primary key (developerid);
alter table records add primary key (developerid);
alter table records add constraint dev foreign key (developerId) references apprecord(developerId);
alter table apprecord add constraint dev1 foreign key (publisherId) references pubrecord(publisherId);
alter table apprecord add constraint dev2 foreign key (categoryId) references catrecord(categoryId);
select * from apprecord where rating>4.5;
select * from apprecord where price =8;
select * from apprecord where categoryId=305;
 
/*level 2*/
select * from apprecord where downloads>500000000;
select * from apprecord where rating between 4.3 and 4.7;
select * from apprecord where price in(0 or 299);
select * from apprecord where appname like 'G%';
select * from apprecord where appname like '%Google%';
select * from apprecord where rating>4.0 and downloads>500000000;
select * from apprecord where categoryid in (301,305);

/* level 2 */
select * from apprecord where appname not like'G%';
select * from apprecord where rating<4.5 or downloads>10000000;
select * from records where developername like '%a%';
select * from apprecord where price between 0 and 300;
select * from apprecord where publisherid in(201 or 204);
insert into records values(108,'google LLC','USA',1998);
select * from apprecord where categoryid <> 305;
select * from records;
describe apprecord;
