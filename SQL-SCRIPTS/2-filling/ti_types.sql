ALTER TABLE ti_objects DROP CONSTRAINT FK_TI_OBJEC_REFERENCE_TI_TYPES;

GO
DELETE FROM [dbo].[ti_types];
GO
SET IDENTITY_INSERT [dbo].[ti_types] ON;
GO
INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(1, '��������� ������������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(2, '��������� (Notebook)');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(3, '��������� (PocketPC)');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(4, 'CPU');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(5, '��������� �����');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(6, '��������� SUN');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(7, '������ Intel');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(8, '������ SUN');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(10, '������ �����');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(11, '������� A3');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(12, '������� �4');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(13, '��� A4');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(14, '������� ��������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(15, '����� A3');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(16, '����� A4');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(17, '������� �4');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(18, '�����������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(19, '�������� ��������������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(20, '���������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(21, '����������� ������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(22, '������� (������������)');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(23, '����� ��� ���������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(24, '������� ���������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(25, '�������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(26, '������� �������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(27, '�����-�������� ����������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(28, '�������������������� ������������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(29, '���������� ���������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(30, '�������������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(31, '����� xDSL');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(32, '����� ������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(33, '����������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(34, '���������� �����');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(35, '���������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(36, '���� VoIP');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(37, '������� VoIP');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(38, '��� (ups)');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(39, '�����������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(40, '�������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(41, 'DKVM');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(42, 'WIFI');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(43, '�����-������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(44, 'TerminalServer');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(45, 'Web-������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(46, '�������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(47, '�����������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(48, 'HDD-External Drive');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(49, '������������ ���');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(50, '������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(51, '�������� (����������-����������)');

GO
INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(52, '�������� ������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(53, '����������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(54, '��������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(55, '�������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(56, '���������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(57, '�������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(59, '������ ������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(60, '��������� ��������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(61, '������� �3 �������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(62, '������� �4 �������');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(63, '������� �3');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(64, '��������� (Notebook) ����� ');

INSERT INTO [dbo].[ti_types]
	([type_id], [type_name])
VALUES
	(65, '��� �3');

GO
SET IDENTITY_INSERT [dbo].[ti_types] OFF;
GO
ALTER TABLE [ti_objects] ADD CONSTRAINT [FK_TI_OBJEC_REFERENCE_TI_TYPES] FOREIGN KEY([type_id]) REFERENCES [ti_types]([type_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;

GO
