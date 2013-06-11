--ALTER TABLE matOtv_F DROP CONSTRAINT FK_MATOTV_F_REFERENCE_TBLPLACE;
--ALTER TABLE oper_log DROP CONSTRAINT FK_OPER_LOG_REFERENCE_TBLPLACE1;
--ALTER TABLE tblObjects DROP CONSTRAINT FK_TBLOBJEC_REFERENCE_TBLPLACE;
--ALTER TABLE tblCableJournal DROP CONSTRAINT FK_TBLCABLE_REFERENCE_TBLPLACE;

GO
DELETE FROM [dbo].[ti_Places];
GO
SET IDENTITY_INSERT [dbo].[ti_Places] ON;
GO
INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(11, 1, 7, '207', '�������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(12, 3, 1, '305', '�������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(13, 2, 7, '-', '-');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(14, 8, 8, '207', '�������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(15, 4, 1, '312', '');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(16, 15, 3, '201', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(17, 5, 1, '201', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(18, 19, 1, '304', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(19, 15, 4, '-', '������������ ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(20, 5, 1, '202', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(21, 3, 1, '305', '���-�����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(22, 20, 8, '201', '������� ����� �� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(23, 5, 1, '205', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(24, 6, 1, '308', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(25, 3, 6, '-', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(26, 1, 6, '211', '�������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(27, 3, 1, '309', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(28, 23, 9, '-', '�������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(29, 9, 2, '-', '-');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(30, 12, 3, '-', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(31, 3, 1, '302', '�������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(32, 18, 10, '-', '��������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(33, 4, 8, '203', '-');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(34, 1, 7, '206', '-');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(35, 3, 1, '-', '������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(36, 11, 3, '3', '����������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(37, 12, 3, '-', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(38, 3, 6, '301', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(39, 14, 3, '101', '����� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(40, 15, 3, '203', '��������� ������ �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(41, 15, 3, '201a', '��� ����� SI 2000');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(42, 15, 3, '201b', '���-����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(43, 4, 11, '-', '������� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(44, 59, 11, '-', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(45, 16, 11, '-', '����������� ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(46, 16, 11, '-', '��������� ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(47, 17, 11, '-', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(48, 1, 7, '-', '����������� �� ������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(49, 28, 6, '208', '������������ ������ ��� ��� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(50, 1, 7, '202', '�������-��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(51, 1, 7, '207', '������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(52, 1, 7, '203', '����. ���������� � ����� ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(53, 1, 7, '-', '����������� �� ������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(54, 1, 7, '209a', '����������� ����������� �� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(55, 1, 7, '206', '����������� �� ������� ��.����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(56, 2, 7, '211', '�������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(57, 19, 1, '303', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(58, 7, 1, '101', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(59, 20, 8, '204', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(60, 9, 7, '201', '��������� ���');

GO
INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(61, 21, 12, '1', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(62, 8, 8, '209', '���������� �� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(63, 22, 8, '206', '�������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(65, 8, 6, '2', '���.�����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(66, 2, 6, '207', '����������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(67, 26, 6, '301', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(68, 15, 4, '-', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(69, 15, 4, '02', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(70, 20, 6, '106', '�������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(71, 10, 3, '-', '��������� ������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(72, 34, 8, '208', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(73, 13, 3, '104', '������ ����������� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(74, 10, 3, '-', '�������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(75, 4, 3, '103', '������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(76, 20, 8, '204', '������������� ��-2');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(77, 5, 1, '203', '������� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(78, 1, 7, '209', '�������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(79, 20, 8, '205', '������������� ��-1');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(80, 26, 6, '204', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(81, 2, 7, '210', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(83, 19, 1, '311', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(84, 22, 8, '206', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(86, 21, 13, '-', '������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(87, 24, 5, '-', '���������� �����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(88, 4, 11, '-', '�������� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(89, 15, 3, '204', '����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(90, 36, 11, '-', '���.���������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(91, 3, 1, '307', '��������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(92, 12, 3, '-', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(93, 21, 8, '203', '����������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(94, 21, 8, '202', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(95, 1, 6, '210', '���.������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(96, 25, 6, '203', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(97, 37, 6, '206', '������� �� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(98, 1, 7, '208', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(99, 21, 6, '212', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(100, 38, 19, '-', '-');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(101, 4, 1, '310', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(102, 26, 6, '204', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(103, 26, 6, '204', '��������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(104, 15, 3, '205', '������� ��� � ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(105, 11, 6, '209', '������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(106, 1, 7, '-', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(107, 20, 8, '-', '������� ������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(108, 3, 1, '301', '������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(109, 26, 6, '-', '������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(110, 3, 11, '-', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(111, 3, 5, '-', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(112, 1, 15, '-', '����-����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(113, 3, 6, '20?', '����������');

GO
INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(114, 3, 16, '-', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(118, 30, 17, '-', '������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(119, 30, 5, '-', '������ ��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(120, 1, 18, '-', '-');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(121, 3, 1, '10?', '�����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(122, 4, 11, '-', '���.��������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(123, 23, 9, '-', 'VIP-���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(124, 44, 19, '222', '�� ������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(125, 50, 26, '1', '��������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(126, 50, 26, '2', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(127, 50, 25, '2', '��������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(128, 50, 25, '3', '���� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(129, 45, 20, '17', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(130, 51, 20, '8', '��������� ������������ �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(131, 51, 20, '12', '�������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(132, 51, 20, '13', '������� ������ �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(133, 51, 20, '21', '��������� �������� ��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(134, 46, 20, '26', '��������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(135, 45, 22, '7', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(136, 45, 22, '13', '��������� �������������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(137, 45, 22, '12', '������� ��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(138, 45, 22, '11', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(139, 45, 22, '10', '�����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(140, 45, 22, '9', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(141, 45, 22, '8', '��������� �������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(142, 45, 22, '1', '��������� ��� - 10 ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(143, 45, 22, '2', '��������� ����� � ��������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(144, 45, 22, '3', '��������� ���� ����������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(145, 46, 22, '5', '��������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(146, 38, 21, '1', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(147, 44, 21, '2', '��������� ������ ��� � �');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(148, 45, 21, '6', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(149, 45, 21, '12', '�������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(150, 45, 21, '10', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(151, 45, 24, '1', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(152, 45, 24, '2', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(153, 44, 24, '4', '������� ��� � �');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(154, 38, 24, '6', '������� �������������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(155, 38, 24, '8', '��������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(156, 38, 24, '12', '������� ��������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(157, 38, 24, '18', '��������� ��� ���������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(158, 46, 24, '19', '��������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(159, 45, 24, '22', '��������� �������� ����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(160, 44, 24, '27', '���������� � ����������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(161, 44, 24, '36', '��������� �������� �� ��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(162, 44, 24, '37', '��������� �������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(163, 38, 24, '42', '������� ������ ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(164, 38, 24, '43', '������� ������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(165, 44, 24, '13', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(166, 38, 24, '16', '��������');

GO
INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(167, 45, 24, '17', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(168, 58, 24, '35', '������������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(169, 58, 24, '38', '�������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(170, 58, 24, '39', '�������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(171, 58, 24, '41', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(172, 47, 19, '106', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(173, 47, 19, '109', '�������� ������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(174, 47, 19, '110', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(175, 47, 19, '112', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(176, 47, 19, '113', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(177, 45, 19, '115', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(178, 50, 19, '124', '������� ������ ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(179, 50, 19, '116', '����������� ���� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(180, 21, 19, '101', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(181, 50, 19, '102', '��� ���������� ������������ ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(182, 43, 19, '103', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(184, 47, 19, '209', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(185, 47, 19, '207', '�������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(186, 47, 19, '206', '������� ������ ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(187, 47, 19, '214', '��������� ���� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(188, 47, 19, '213', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(189, 47, 19, '212', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(190, 47, 19, '211', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(191, 47, 19, '210', '������� �� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(192, 38, 19, '217', '������� ������� ������������ �');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(193, 44, 19, '216', '�������������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(194, 38, 19, '201', '������� ��� ����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(195, 38, 19, '200', '������� ������ ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(196, 44, 19, '202', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(197, 44, 19, '203', '������� ���, �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(198, 44, 19, '204', '������� ������� ��� � �, �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(199, 47, 19, '308', '������ ����� ������� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(200, 43, 19, '317', '�����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(201, 43, 19, '306', '������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(202, 43, 19, '305', '������� ������ ������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(203, 43, 19, '304', '������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(204, 43, 19, '303', '��� ���������� ��� ��������� �');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(205, 43, 19, '301', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(206, 43, 19, '302', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(207, 43, 19, '318', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(208, 49, 19, '316', '������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(209, 46, 19, '314', '������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(210, 45, 19, '313', '������� ��������� ������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(211, 45, 19, '312', '������� ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(212, 45, 19, '311', '�������� ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(213, 43, 19, '310', '�����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(214, 43, 19, '009', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(215, 43, 19, '012', '�������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(216, 43, 27, '125', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(217, 43, 27, '124', '��-0,4 ��');

GO
INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(218, 43, 27, '106', '�������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(219, 43, 27, '103', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(220, 43, 23, '1', '����������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(221, 48, 19, '003', '�����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(222, 34, 8, '101', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(223, 18, 6, '7', '���������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(224, 20, 8, '204', '��������� �����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(225, 15, 3, '207', '����������� �� ������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(226, 11, 3, '5', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(227, 4, 3, '-', '���.���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(228, 58, 19, '015', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(229, 45, 28, '1', '��� ��� ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(230, 7, 1, '102', '���� - ������������ ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(231, 4, 1, '207', '��� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(232, 26, 6, '205', '������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(233, 3, 6, '205', '������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(234, 55, 5, '108', '�����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(236, 54, 5, '301', '����������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(237, 54, 5, '502', '������������ �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(238, 56, 5, '111', '');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(239, 57, 5, '305', '������ ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(240, 54, 5, '-', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(241, 54, 5, '101', '����������� ���-���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(242, 54, 5, '201', '����������� ������������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(243, 54, 5, '110', '����������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(244, 54, 5, '113', '������� ���.���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(245, 54, 5, '403', '����������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(246, 54, 5, '109', '�������������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(247, 54, 17, '-', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(248, 54, 5, '203', '����������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(249, 54, 5, '306', '�������������� ���. �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(250, 54, 5, '003', '���������� �������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(251, 56, 5, '105', '����������� ���������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(252, 56, 5, '105', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(253, 54, 5, '106', '���������� �����-�� ����� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(254, 54, 5, '303', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(255, 54, 5, '103', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(256, 54, 5, '102', '������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(257, 56, 5, '107', '������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(258, 54, 5, '202', '������� �������������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(259, 57, 5, '205', '�����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(260, 54, 5, '206', '�������� �����-���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(261, 54, 5, '302', '������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(262, 57, 5, '304', '���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(263, 54, 5, '401', '����������� ����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(264, 54, 5, '402', '����������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(265, 54, 5, '405', '������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(266, 57, 5, '404', '������ �������������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(267, 54, 5, '501', '������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(268, 57, 5, '503', '������� ���');

GO
INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(269, 54, 5, '002', '���. ������������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(270, 54, 5, '001', '���. ������������ �����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(271, 56, 5, '105', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(272, 4, 1, '310', '����������� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(273, 3, 3, '206', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(274, 26, 29, '1', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(275, 26, 31, '1', '�����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(276, 26, 33, '1', '��������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(277, 26, 33, '2', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(278, 26, 35, '125', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(279, 26, 35, '124', '�� � 0,4 ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(280, 26, 35, '106', '������������� ');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(281, 26, 35, '105', '�������� ��� �����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(282, 26, 34, '26', '��������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(283, 26, 34, '21', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(284, 26, 34, '12', '��������� �� � � �����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(285, 26, 34, '14', '�������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(286, 26, 34, '15', '������� ������ �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(287, 26, 34, '16', '������� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(288, 26, 34, '22', '��������� �������� ��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(289, 26, 34, '28', '������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(290, 26, 34, '29', '������� ���������� �������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(291, 26, 29, '3', '��������� ������ �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(292, 26, 29, '12', '�������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(293, 26, 32, '6', '�������� �������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(294, 26, 32, '3', '������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(295, 26, 32, '1', '��������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(296, 26, 32, '2', '��������� ����� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(297, 26, 32, '7', '��������� ');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(298, 26, 32, '9', '��������� ��� ������������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(299, 26, 32, '10', '������� ���������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(300, 26, 32, '11', '������� �������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(301, 26, 32, '12', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(302, 26, 32, '17', '�������������� (���)');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(303, 26, 30, '1', '���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(304, 26, 30, '3', '��������������. ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(305, 26, 30, '4', '�������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(306, 26, 30, '6', '������� �������������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(307, 26, 30, '8', '��������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(308, 26, 30, '12', '������� ��������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(309, 26, 30, '13', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(310, 26, 30, '16', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(311, 26, 30, '17', '��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(312, 26, 30, '19', '��������� ����� ');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(313, 26, 30, '18', '��������� ��� ���������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(314, 26, 30, '22', '��������� ������ ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(315, 26, 30, '27', '���������� �����, ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(316, 26, 30, '38', '��������� �������� ');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(317, 26, 30, '40', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(318, 26, 30, '41', '�������������');

GO
INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(319, 26, 30, '29', '��������� ���������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(320, 26, 30, '36', '������������������ ');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(321, 26, 30, '37', '��������������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(322, 3, 6, '101', '�������-�����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(323, 26, 4, '10', '���������� �����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(324, 53, 1, '-', '��������� ������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(325, 9, 20, '-', '�������� ���������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(326, 8, 3, '105', '��������� ������ �� � ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(327, 8, 3, '-', '�� ������������ (����.���.�� �');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(328, 7, 6, '109', '����������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(329, 26, 6, '109', '������� ������������ ��������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(330, 26, 15, '-', '-');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(331, 26, 36, '6', '������� �������� �� ������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(332, 26, 36, '4', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(333, 26, 36, '3', '������� �������� �� ������� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(334, 26, 36, '2', '����������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(335, 26, 36, '8', '�������� �� 01');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(336, 26, 36, '10', '�������� �� 24');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(337, 26, 36, '9', '������� ������ ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(338, 26, 36, '7', '���������� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(339, 26, 36, '5', '��������� ���� ���');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(340, 26, 36, '1', '-');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(341, 15, 37, '-', '��� ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(342, 15, 3, '210', '������� ��� � ��');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(343, 4, 1, '310', '������� �������');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(344, 30, 5, '104', '�������� ����');

INSERT INTO [dbo].[ti_Places]
	([place_id], [Serv_id], [Build_id], [kab_n], [kab_name])
VALUES
	(345, 4, 8, '-', '�����');

GO
SET IDENTITY_INSERT [dbo].[ti_Places] OFF;
GO
--ALTER TABLE [matOtv_F] ADD CONSTRAINT [FK_MATOTV_F_REFERENCE_TBLPLACE] FOREIGN KEY([place_id]) REFERENCES [ti_Places]([place_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;
--ALTER TABLE [oper_log] ADD CONSTRAINT [FK_OPER_LOG_REFERENCE_TBLPLACE1] FOREIGN KEY([old_place_id],[new_place_id]) REFERENCES [ti_Places]([place_id],[place_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;
--ALTER TABLE [tblObjects] ADD CONSTRAINT [FK_TBLOBJEC_REFERENCE_TBLPLACE] FOREIGN KEY([place_id]) REFERENCES [ti_Places]([place_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;
--ALTER TABLE [tblCableJournal] ADD CONSTRAINT [FK_TBLCABLE_REFERENCE_TBLPLACE] FOREIGN KEY([place_id_left]) REFERENCES [ti_Places]([place_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;

GO
