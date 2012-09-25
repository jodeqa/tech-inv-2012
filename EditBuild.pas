unit EditBuild;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TEditBuildForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    prompl_id : Integer;
    { Public declarations }
  end;

var
  EditBuildForm: TEditBuildForm;

implementation
uses data, Prompl;

{$R *.dfm}

procedure TEditBuildForm.SpeedButton1Click(Sender: TObject);
begin
  if DM.SelectPrompl=mrOk Then Begin
    prompl_id:=PromplForm.sel_prompl_id;
    Edit2.text:=PromplForm.sel_prompl_name;
  End;
end;

end.
