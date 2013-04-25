/*==============================================================*/
/* Table: #matOtv_F                                              */
/*==============================================================*/
create table #matOtv_F (
   otv_id               int                  null,
   Serv_id              bigint               null,
   aduser_id            bigint               null,
   place_id             int                  null,
   fil_id               integer              null,
   tab                  varchar(5)           null,
   f                    varchar(30)          null,
   i                    varchar(30)          null,
   o                    varchar(30)          null,
   dol                  varchar(60)          null,
   fit                  int                  null default 0,
   ad                   int                  null,
   ad_ved_n             varchar(10)          null,
   ad_ved_date          datetime             null,
   gtnn_ad              int                  null default 0,
   gtnn_name            varchar(30)          null,
   gtnn_pwd             varchar(30)          null,
   gtnn_osnovan         varchar(100)         null,
   gtnn_date            datetime             null,
   internet             int                  null default 0,
   internet_osnovan     varchar(100)         null,
   internet_date        datetime             null,
)
GO

GO
DELETE FROM [dbo].[#matOtv_F];
GO
INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(1, 1, '-', '�������', '�������', '����������', '���.�������', 0, NULL, 63, '18', '14.04.2008 0:00:00', 1, 'Babikoven', 'C645E642', '', NULL, 0, '', NULL, 51, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(2, 1, '17001', '�������', '��������', '������������', '���.������', 0, NULL, 44, '1', '25.01.2007 0:00:00', 1, 'ShelepnevVV', 'lpuarz777', '', NULL, 1, '', NULL, 98, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(3, 1, '-', '�����', '��������', '��������', '�������', 0, NULL, 48, '2', '06.03.2007 0:00:00', 1, 'dolovvi', 'E11BCC7B', '��.�������', '25.01.2008 0:00:00', 0, '', NULL, 54, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(4, 1, '-', '�����', '������', '������������', '������� �� ���������� - ������������ �����������', 0, NULL, 43, '2', '06.03.2007 0:00:00', 1, 'lisinav', '5EBB5B51', '��.�������', '25.01.2008 0:00:00', 0, '', NULL, 50, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(5, 3, '17017', '�������', '�������', '������������', '���.������', 1, NULL, 123, '1', '29.01.2007 0:00:00', 1, 'ShelepnevDV', 'dvs-1974', '', NULL, 0, '', NULL, 91, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(6, 28, '32004', '����������', '����', '��������', '������� ������� - ������������', 0, NULL, 175, '12', '13.11.2007 0:00:00', 1, 'makarenkovoi', 'Qc8bcuTR', '��. ���. �� 26.03.2010 �� � 73', '31.03.2010 0:00:00', 0, '', NULL, 66, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(8, 4, '-', '��������', '����', '����������', '������� �������', 0, NULL, 150, '2', '06.03.2007 0:00:00', 1, 'Klimovichyun', 'arzklimov12', '', NULL, 1, '', NULL, 101, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(9, 5, '-', '�������', '�������', '�������������', '��������� ���', 0, NULL, 120, '1', '23.01.2007 0:00:00', 1, 'Pudaevana', 'E4D1113D', '', NULL, 0, '', NULL, 77, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(10, 5, '-', '������', '������', '����������', '���������', 0, NULL, 85, '2', '06.03.2007 0:00:00', 1, 'muhinagn', '8KC05341', '', NULL, 0, '', NULL, 17, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(11, 5, '-', '�������������', '�����', '�����������', '���������', 0, NULL, 84, '2', '06.03.2007 0:00:00', 1, 'konstantinovaig', '0W7p$j05', '', NULL, 0, '', NULL, 17, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(12, 5, '-', '�������', '����', '�����������', '���������', 0, NULL, 82, '2', '06.03.2007 0:00:00', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(14, 5, '-', '���������', '�����', '����������', '���������', 0, NULL, 108, '2', '06.03.2007 0:00:00', 0, NULL, '', '', NULL, 0, '', NULL, 20, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(15, 5, '-', '��������', '�����', '������������', '���������', 0, NULL, 83, '2', '06.03.2007 0:00:00', 0, NULL, '', '', NULL, 0, '', NULL, NULL, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(16, 5, '-', '��������', '�������', '��������', '���������', 0, NULL, 88, '2', '06.03.2007 0:00:00', 1, 'makarovani', 'YZ2H4SAV', '', NULL, 0, '', NULL, 23, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(17, 5, '-', '������', '��������', '������������', '���������', 0, NULL, 128, '2', '06.03.2007 0:00:00', 1, 'kotovasv', 'Fp1DGyir', '��. ���. �� 21.04.2009 ��. � 74', '04.06.2009 0:00:00', 0, '', NULL, 23, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(18, 6, '-', '�����', '�������', '����������', '������� ���������', 0, NULL, 61, '1', '23.01.2007 0:00:00', 1, 'valovea', 'U81D00D8', '��.�������', '19.11.2008 0:00:00', 0, '', NULL, 24, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(19, 4, '01019', '���������', '�������', '���������', '����������', 0, NULL, 116, '22', '12.05.2008 0:00:00', 1, 'elizarovans', '0Z74K30S', '��.�������', '27.11.2008 0:00:00', 0, '', NULL, 93, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(20, 3, '-', '���������', '�����', '���������', '�������-�����������', 1, NULL, 112, '2', '06.03.2007 0:00:00', 1, 'admin3_arzamas', '12345678', '', NULL, 0, '', NULL, NULL, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(21, 3, '-', '�������', '������', '����������', '������-�����������', 1, NULL, 79, '2', '06.03.2007 0:00:00', 1, 'spitsinamm', '6BCC396D', '������ �93', '24.01.2008 0:00:00', 0, '', NULL, 108, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(22, 7, '-', '����������', '������', '����������', '����', 0, NULL, 34, '1', '24.01.2007 0:00:00', 1, 'bondarenkovv', 'Hs9GpxWJ', '��. ���. �� 30.04.09 ��. �59', NULL, 0, '', NULL, 58, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(23, 8, '-', '�����', '���������', '����������', '���.�������', 0, NULL, 75, '10', '14.11.2007 0:00:00', 1, 'lapinav', 'WY1PG65C', '��.�������', '16.02.2009 0:00:00', 0, '', NULL, 14, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(24, 9, '-', '������', '�����', '�������������', '���. ������', 0, NULL, 69, '1', '24.01.2007 0:00:00', 1, 'riyanovia', '1CA3DE34', '��.�������', '25.01.2008 0:00:00', 0, '', NULL, 60, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(25, 6, '-', '�������', '���������', '����������', '���.������', 0, NULL, 364, '', '30.05.2011 0:00:00', 0, NULL, '', '', '25.01.2008 0:00:00', 0, '', NULL, 24, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(26, 11, '-', '������', '����', '�����������', '���.������', 0, NULL, 100, '1', '24.01.2007 0:00:00', 1, 'Ereminoa', '72458741', '������ �1741', '08.10.2007 0:00:00', 0, '', NULL, 36, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(27, 12, '-', '��������', '������', '�������������', '������� ������', 0, NULL, 80, '2', '06.03.2007 0:00:00', 1, 'lisenkovma', 'CA8828AB', '��.�������', '25.01.2008 0:00:00', 0, '', NULL, 37, 1);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(28, 56, '-', '������', '������', '��������', '���.���������� �� ���', 0, NULL, 35, '2', '06.03.2007 0:00:00', 1, 'levkinvi', 'Xq6UXfmr', '��. ��� �� �200', '11.11.2009 0:00:00', 0, '', NULL, 251, 2);

INSERT INTO [dbo].[#matOtv_F]
	([otv_id], [Serv_id], [tab], [f], [i], [o], [dol], [fit], [ad], [aduser_id], [ad_ved_n], [ad_ved_date], [gtnn_ad], [gtnn_name], [gtnn_pwd], [gtnn_osnovan], [gtnn_date], [internet], [internet_osnovan], [internet_date], [place_id], [fil_id])
VALUES
	(29, 12, '-', '��������', '�������', '����������', '���.������� ���', 0, NULL, 58, '1', '25.01.2007 0:00:00', 0, NULL, '', '', NULL, 0, '', NULL, NULL, 1);
go

SET IDENTITY_INSERT [dbo].[ti_personal] ON;
GO

insert into ti_personal (
       [pers_id],
       [Serv_id], 
       [aduser_id], 
       [place_id], 
       [fil_id],
       [tab], [f], [i], [o], [dol], 
       [fit], [ad],  [ad_ved_n], [ad_ved_date]
       )
select [otv_id] as pers_id, 
       [Serv_id], 
       [aduser_id], 
       [place_id], 
       [fil_id],
       [tab], [f], [i], [o], [dol], 
       [fit], [ad],  [ad_ved_n], [ad_ved_date]      

from #matOtv_F

go

SET IDENTITY_INSERT [dbo].[ti_personal] OFF;
GO
