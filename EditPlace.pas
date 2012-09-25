unit EditPlace;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TEditPlaceForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Edit4: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    build_id, serv_id : Integer;
    { Public declarations }
  end;

var
  EditPlaceForm: TEditPlaceForm;

implementation
uses Data, Building, Serv;

{$R *.dfm}

procedure TEditPlaceForm.SpeedButton1Click(Sender: TObject);
begin
  if DM.SelectBuild=mrOk Then Begin
    build_id:=BuildingForm.sel_build_id;
    Edit2.text:=BuildingForm.sel_build_name;
  End;
end;

procedure TEditPlaceForm.SpeedButton2Click(Sender: TObject);
begin
  if DM.SelectServ=mrOk Then Begin
    Serv_id:=ServForm.sel_serv_id;
    Edit3.text:=ServForm.sel_serv_name;
  End;
end;

end.
