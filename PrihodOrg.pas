unit PrihodOrg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TPrihodOrgForm = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Edit4: TEdit;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Memo1: TMemo;
    ���������: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit9: TEdit;
    DateTimePicker2: TDateTimePicker;
    Label13: TLabel;
    Edit10: TEdit;
    SpeedButton4: TSpeedButton;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Label15: TLabel;
    SpeedButton5: TSpeedButton;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    type_id : integer;
    vendor_id : integer;
    suppl_id : integer;
    mark_id : integer;
  end;

var
  PrihodOrgForm: TPrihodOrgForm;

implementation
Uses Data, Utypes, Vendors, Suppliers, Mark, Variables;

{$R *.dfm}

procedure TPrihodOrgForm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=112 then SpeedButton1Click(self);
  if key=113 then SpeedButton2Click(self);
  if key=114 then SpeedButton3Click(self);
  if key=115 then SpeedButton4Click(self);
end;

procedure TPrihodOrgForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Canclose:=((type_id>0) and (vendor_id>0) and (suppl_id>0) and (Edit2.Text<>'') and (Edit5.Text<>'') and (Edit11.Text<>'')) or (modalResult<>mrOk);
  if Not CanClose Then Application.MessageBox('��������� ��� ����������� ���������','��������!',mb_OK);
end;

procedure TPrihodOrgForm.FormCreate(Sender: TObject);
begin
       type_id:=-1;
       vendor_id:=-1;
       suppl_id:=-1;
       mark_id:=-1;
       DateTimePicker1.Date:=InitialDT;
       DateTimePicker2.Date:=InitialDT;
       Edit1.Text:='';
       Edit2.Text:='';
       Edit3.Text:='';
       Edit4.Text:='';
       Edit5.Text:='';
       Edit6.Text:='';
       Edit7.Text:='';
       Edit8.Text:='';
       Edit9.Text:='';
       Edit10.Text:='';
       Edit11.Text:='';
       Edit12.Text:='';
       Memo1.Clear;
       CheckBox1.Checked:=false;
       CheckBox2.Checked:=false;
       CheckBox3.Checked:=false;
end;

procedure TPrihodOrgForm.FormShow(Sender: TObject);
begin
  ActiveControl:=Edit2;
end;

procedure TPrihodOrgForm.SpeedButton1Click(Sender: TObject);
begin
  if DM.SelectType=mrOk Then Begin
     type_id:=TypesForm.sel_type_id;
     Edit1.Text:=TypesForm.sel_type_name;
  end;
end;

procedure TPrihodOrgForm.SpeedButton2Click(Sender: TObject);
begin
  if DM.SelectVendor=mrOk Then Begin
     vendor_id:=VendorsForm.sel_vendor_id;     Edit3.Text:=VendorsForm.sel_vendor_name;  end;end;

procedure TPrihodOrgForm.SpeedButton3Click(Sender: TObject);
begin
  if DM.SelectMark=mrOk Then Begin
     mark_id:=MarkForm.sel_mark_id;
     Edit4.Text:=MarkForm.sel_mark_name;
  end;
end;

procedure TPrihodOrgForm.SpeedButton4Click(Sender: TObject);
begin
  if DM.SelectSuppl=mrOk Then Begin
     suppl_id:=SuppliersForm.sel_suppl_id;     Edit10.Text:=SuppliersForm.sel_suppl_name;  end;end;

end.
