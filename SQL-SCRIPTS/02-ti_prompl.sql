truncate table ti_prompl

SET IDENTITY_INSERT ti_prompl ON
insert into ti_prompl (prompl_id, town_id, prompl_name) values(1,1,'����������� �����')
insert into ti_prompl (prompl_id, town_id, prompl_name) values(2,2,'�� ������������')
insert into ti_prompl (prompl_id, town_id, prompl_name) values(3,1,'���')
insert into ti_prompl (prompl_id, town_id, prompl_name) values(4,3,'�� ���������������')
insert into ti_prompl (prompl_id, town_id, prompl_name) values(5,1,'��� ������������')
insert into ti_prompl (prompl_id, town_id, prompl_name) values(6,4,'��� ��������')
SET IDENTITY_INSERT ti_prompl OFF
go