truncate table ti_towns

SET IDENTITY_INSERT ti_towns ON
insert into ti_towns (town_id, town_name) values(1,'�������')
insert into ti_towns (town_id, town_name) values(2,'��������')
insert into ti_towns (town_id, town_name) values(3,'���������')
insert into ti_towns (town_id, town_name) values(4,'��������')
SET IDENTITY_INSERT ti_towns OFF