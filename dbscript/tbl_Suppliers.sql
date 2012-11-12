ALTER TABLE tblObjects DROP CONSTRAINT FK_TBLOBJEC_REFERENCE_TBL_SUPP;
ALTER TABLE tblPartsList DROP CONSTRAINT FK_TBLPARTS_REFERENCE_TBL_SUPP;

GO
DELETE FROM [dbo].[tbl_Suppliers];
GO
SET IDENTITY_INSERT [dbo].[tbl_Suppliers] ON;
GO
INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(1, '��������� ������ (2008)', '��08', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(2, '����-������', '����', '����� ��������� �������� (������������)', '78-78-00', '������ �����', '78-78-00');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(3, '������� �� ���', '������� �� ���', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(4, '��� ������-��������', '�������-��������', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(5, 'ICL-���-��', 'ICL-���-��', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(6, '��� ��� ���', '���', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(7, '������ �����, ��� � � ��', '�����', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(8, '��� "������� �������� ��"', '����', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(9, '��������� ������ �����', '��', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(10, '������� �� ���������������', '�� ���������������', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(11, '��������� ����', '-', '-', '-', '-', '-');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(12, '�� �������', '�� �������', '�������', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(13, '������� �� ������������', '�� ������������', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(14, '�� ������', '�� ������', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(15, '��� ����� ��� "�������"', '�����', '�������� �.�.', '0112-573001', '������ �.�.', '(700) 32406 ');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(16, '������� �� ������������ ��� ��', '������� �� ���������', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(17, '��� ������������������', '��� ����������������', '', '', '', '');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(18, '�������� ����������', '�������� ����������', '����� ������', '(831) 464-93', '����� �������', '(8312) 464-9');

INSERT INTO [dbo].[tbl_Suppliers]
	([suppl_id], [suppl_name], [suppl_short_name], [Director_FIO], [Director_tel], [Contact_fio], [Contact_tel])
VALUES
	(19, '��� "�������������"', '���', '', '', '', '');

GO
SET IDENTITY_INSERT [dbo].[tbl_Suppliers] OFF;
GO
ALTER TABLE [tblObjects] ADD CONSTRAINT [FK_TBLOBJEC_REFERENCE_TBL_SUPP] FOREIGN KEY([suppl_id]) REFERENCES [tbl_Suppliers]([suppl_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE [tblPartsList] ADD CONSTRAINT [FK_TBLPARTS_REFERENCE_TBL_SUPP] FOREIGN KEY([suppl_id]) REFERENCES [tbl_Suppliers]([suppl_id]) ON UPDATE NO ACTION ON DELETE NO ACTION;

GO
