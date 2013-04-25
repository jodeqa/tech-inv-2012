ALTER TABLE tblPlaces DROP CONSTRAINT FK_TBLPLACE_REFERENCE_TBLBUILD;
ALTER TABLE tblCableJournal DROP CONSTRAINT FK_TBLCABLE_REFERENCE_TBLBUILD;

GO
DELETE FROM [dbo].[tblBuildings];
GO
SET IDENTITY_INSERT [dbo].[tblBuildings] ON;
GO
INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(1, 1, '������ ��� (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(2, 2, '�������� ���� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(3, 1, '������ ��� (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(4, 2, '������ ����� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(5, 3, '��� (��������, 25)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(6, 2, '������ ��� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(7, 1, '������ ��� (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(8, 1, '������ ��� (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(9, 1, '�������� ������� (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(10, 1, '������ �� (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(11, 1, '������ ��� (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(12, 1, '������ �������� ������ (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(13, 1, '������ ������ ��� (arz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(15, 2, '����-���� ����� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(16, 5, '������������');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(17, 3, '��� (����������� ������)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(18, 6, '��� ��������');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(19, 4, '������ ��� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(20, 4, '����� �� 10 ����������� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(21, 4, '������ �� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(22, 4, '��� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(23, 4, '������ ��� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(24, 4, '������ ��� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(25, 4, '��� � ��������� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(26, 4, '��� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(27, 4, '�������� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(28, 4, '��� ��� ���� (narz)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(29, 2, '������ �� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(30, 2, '������ ��� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(31, 2, '������ ��� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(32, 2, '��� � ��������� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(33, 2, '��� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(34, 2, '����� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(35, 2, '�������� (luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(36, 2, '������ ��� ( luk)');

INSERT INTO [dbo].[tblBuildings]
	([Building_id], [prompl_id], [Building_name])
VALUES
	(37, 1, '������ �/� ������� ��������');

GO
SET IDENTITY_INSERT [dbo].[tblBuildings] OFF;
GO
ALTER TABLE [tblPlaces] ADD CONSTRAINT [FK_TBLPLACE_REFERENCE_TBLBUILD] FOREIGN KEY([Building_id]) REFERENCES [tblBuildings]([Building_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE [tblCableJournal] ADD CONSTRAINT [FK_TBLCABLE_REFERENCE_TBLBUILD] FOREIGN KEY([Building_id]) REFERENCES [tblBuildings]([Building_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;

GO
