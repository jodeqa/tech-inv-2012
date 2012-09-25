unit Data;

interface

uses
  System.SysUtils, System.Classes, System.UITypes, untAdoLoginDlg, Data.DB, Data.Win.ADODB, Variants, Variables, Queryes, Dialogs,
  VCL.controls, Vcl.StdCtrls;

Type TLoginInfo = Record
        LoginName  : String;
        HostName   : String;
        ServerName : String;
        DBName     : String;

        mainRole  : integer;
        uid        : integer;
        fio        : string;
        access     : string;
     end;

Type TFilialInfo = Record
        fil_id  : integer;
        fil_code: String;
        fil_name: String;
     end;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQueryLogin: TADOQuery;
    DataSourceFilials: TDataSource;
    ADOQueryFilials: TADOQuery;
    ADOQuery1: TADOQuery;
    DataSourceUsers: TDataSource;
    ADOQueryUsers: TADOQuery;
    DataSource1: TDataSource;
    ADOQueryTowns: TADOQuery;
    DataSourceTowns: TDataSource;
    DataSourcePrompl: TDataSource;
    ADOQueryPrompl: TADOQuery;
    DataSourceBuild: TDataSource;
    ADOQueryBuild: TADOQuery;
    ADOQueryDynamic: TADOQuery;
    DataSourceServ: TDataSource;
    ADOQueryServ: TADOQuery;
    DataSourcePlaces: TDataSource;
    ADOQueryPlaces: TADOQuery;
    DataSourceTypes: TDataSource;
    ADOQueryTypes: TADOQuery;
    DataSourceMark: TDataSource;
    ADOQueryMark: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pDatabaseIsOpen : Boolean;
    pLoginInfo      : TLoginInfo;
    pFilialInfo     : TFilialInfo;

    Procedure OpenDatabase;
    Procedure CloseDatabase;
    Procedure GetLoginInfo;
    Procedure GetFilialInfo;
    Procedure GetUserRights;

    //��������� ������������� ���������
    Procedure ShowUsers;
    Procedure GrantUserRights;
    Procedure RevokeUserRights;
    procedure UsersListAfterScroll(DataSet: TDataSet);
    procedure UsersListBeforeScroll(DataSet: TDataSet);
    Function AccessIsGranted(acs_id : integer) : boolean;

    // ��������� ������ �� ������������ ��������
    Procedure ShowSprFilials;

    // ��������� ������ �� ������������ ���������� �������
    Procedure ShowTownWindow;
    Function  SelectTown : integer;
    Procedure AddTown;
    Procedure EditTown;
    Procedure DelTown;
    Procedure LocateTown(town_name : String);

    // ��������� ������ �� ������������ �����������
    Procedure ShowPromplWindow;
    Function  SelectPrompl : integer;
    Procedure AddPrompl;
    Procedure EditPrompl;
    Procedure DelPrompl;
    Procedure LocatePrompl(Prompl_name : String);

    // ��������� ������ �� ������������ ��������
    Procedure ShowBuildWindow;
    Function  SelectBuild : integer;
    Procedure AddBuild;
    Procedure EditBuild;
    Procedure DelBuild;
    Procedure LocateBuild(Build_name : String);

    // ��������� ������ �� ������������ �����
    Procedure ShowServWindow;
    Function  SelectServ : integer;
    Procedure AddServ;
    Procedure EditServ;
    Procedure DelServ;
    Procedure LocateServ(serv_name : String);

    // ��������� ������ �� ������������ ������� ����
    Procedure ShowPlacesWindow;
    Procedure AddPlace;
    Procedure EditPlace;
    Procedure DelPlace;
    Procedure LocatePlace(place_name : String);

    // ��������� ������ �� ������������ �����
    Procedure ShowTypesWindow;
    Function  SelectType : integer;
    Procedure AddType;
    Procedure EditType;
    Procedure DelType;
    Procedure LocateType(type_name : String);

    // ��������� ������ �� ������������ �����/������� ������������
    Procedure ShowMarkWindow;
    Function  SelectMark : integer;
    Procedure AddMark;
    Procedure EditMark;
    Procedure DelMark;
    Procedure LocateMark(Mark_name : String);

 end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Main, Filials, Users, SysUsers, towns, Edit1Field, prompl, EditPrompl, EditBuild,
  Building, Serv, EditServ, Places, EditPlace, UTypes;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  pDatabaseIsOpen:=False;
end;

Procedure TDM.OpenDatabase;
Begin
  if Not LoginADODataBase(ADOConnection1,FDBConfigFileName,FUserConfigFileName) Then exit;
  ADOConnection1.Open;
  pDatabaseIsOpen:=True;
  GetLoginInfo;
  GetFilialInfo;
  GetUserRights;
End;

Procedure TDM.CloseDatabase;
Begin
  ADOConnection1.Close;
  pDatabaseIsOpen:=False;
  With pLoginInfo do begin
       LoginName  :='-';
       HostName   :='-';
       ServerName :='-';
       DBName     :='-';
  end;
End;

Procedure TDM.GetLoginInfo;
Begin
  With pLoginInfo do begin
       LoginName  :='-';
       HostName   :='-';
       ServerName :='-';
       DBName     :='-';
  end;
  if Not pDataBaseIsOpen Then Exit;
  ADOQueryLogin.SQL.Clear;
  ADOQueryLogin.SQL.Add(sql_GetLoginInfo);
  ADOQueryLogin.Open;
  if Not ADOQueryLogin.IsEmpty Then
    With pLoginInfo do begin
         if ADOQueryLogin['UserName']<>NULL Then LoginName:=ADOQueryLogin['UserName'];
         if ADOQueryLogin['ServerName']<>NULL Then HostName:=ADOQueryLogin['ServerName'];
         if ADOQueryLogin['HostName']<>NULL Then ServerName:=ADOQueryLogin['HostName'];
         if ADOQueryLogin['DBName']<>NULL Then DBName:=ADOQueryLogin['DBName'];
    end;
  ADOQueryLogin.Close;
End;

Procedure TDM.GetFilialInfo;
Begin
  With pFilialInfo do begin
       fil_id  :=-1;
       fil_Name:='-';
       fil_code:='-';
  end;
  if Not pDataBaseIsOpen Then Exit;
  ADOQueryLogin.SQL.Clear;
  ADOQueryLogin.SQL.Add(sql_GetFilialInfo);
  ADOQueryLogin.Open;
  if Not ADOQueryLogin.IsEmpty Then
    With pFilialInfo do begin
         if ADOQueryLogin['fil_id']<>NULL Then fil_id:=ADOQueryLogin['fil_id'];
         if ADOQueryLogin['fil_code']<>NULL Then fil_code:=ADOQueryLogin['fil_code'];
         if ADOQueryLogin['fil_name']<>NULL Then fil_name:=ADOQueryLogin['fil_name'];
    end;
  ADOQueryLogin.Close;
End;

Procedure TDM.GetUserRights;
Begin
  if Not pDataBaseIsOpen Then Exit;
  ADOQuery1.SQL.Clear;
  ADOQuery1.Parameters.Clear;
  ADOQuery1.SQL.Add(sql_getrights);
  ADOQuery1.Prepared:=True;
  ADOQuery1.Parameters.ParamByName('uname').Value:=pLoginInfo.LoginName;
  ADOQuery1.Open;
  if Not ADOQuery1.IsEmpty Then
  With pLoginInfo do begin
       uid:=ADOQuery1['uid'];
       if ADOQuery1['status']<>NULL Then mainRole:=ADOQuery1['status'] else mainRole:=role_none;
       if ADOQuery1['fio']<>NULL Then fio:=ADOQuery1['fio'] else fio:='';
       if ADOQuery1['access']<>NULL Then access:=ADOQuery1['access'] else access:='';
       if UPPERCASE(pLoginInfo.LoginName)='SA' Then mainRole:=role_admin;
  end;
  ADOQuery1.Close;
End;


Procedure TDM.ShowSprFilials;
Begin
  if pLoginInfo.mainRole<>role_Admin then begin
     MessageDlg(msg_noAdminRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not pDataBaseIsOpen Then Exit;
  ADOQueryFilials.SQL.Clear;
  ADOQueryFilials.SQL.Add(sql_GetFilials);
  ADOQueryFilials.Open;

  FilialsForm.DBGrid1.DataSource:=DataSourceFilials;
  FilialsForm.ShowModal;
  FilialsForm.DBGrid1.DataSource:=nil;

  ADOQueryFilials.Close;
End;

Procedure TDM.GrantUserRights;
var uid : integer;
Begin
  if pLoginInfo.mainRole<>role_Admin then begin
     MessageDlg(msg_noAdminRights,mtInformation,[mbOk],0);
     exit;
  end;

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(sql_sysusers);
  ADOQuery1.Open;
  with SysUsersForm do begin
     DBGrid1.DataSource:=DM.DataSource1;
     if (ShowModal=mrOk) and (Not ADOQuery1.IsEmpty) Then Begin
          uid:=ADOQuery1['uid'];
          ADOQueryUsers.Append;
          ADOQueryUsers['uname']:=ADOQuery1['loginname'];
          ADOQueryUsers['uid']:=uid;
          ADOQueryUsers.Post;
          ADOQueryUsers.Requery;
          ADOQueryUsers.Locate('uid',uid,[]);
     end;
     DBGrid1.DataSource:=nil;
  end;
  ADOQuery1.Close;
end;

Procedure TDM.RevokeUserRights;
Begin
  if pLoginInfo.mainRole<>role_Admin then begin
     MessageDlg(msg_noAdminRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryUsers.IsEmpty then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then ADOQueryUsers.Delete;
end;


Procedure TDM.ShowUsers;
Begin
  if pLoginInfo.mainRole<>role_Admin then begin
     MessageDlg(msg_noAdminRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not pDataBaseIsOpen Then Exit;

  ADOQueryUsers.SQL.Clear;
  ADOQueryUsers.SQL.Add(sql_GetUsers);
  ADOQueryUsers.Open;
  ADOQueryUsers.AfterScroll:=UsersListAfterScroll;
  ADOQueryUsers.BeforeScroll:=UsersListBeforeScroll;

  UsersListAfterScroll(ADOQueryUsers);
  With UsersForm do begin
    DBGrid1.DataSource:=DataSourceUsers;
    DBEdit1.DataSource:=DataSourceUsers;
    st_changed:=false;
    ShowModal;
    DBGrid1.DataSource:=nil;
    DBEdit1.DataSource:=nil;
  end;
  UsersListBeforeScroll(ADOQueryUsers);

  ADOQueryUsers.AfterScroll:=nil;
  ADOQueryUsers.BeforeScroll:=nil;
  ADOQueryUsers.Close;
End;

procedure TDM.UsersListAfterScroll(DataSet: TDataSet);
Var access : String;
    i      : integer;
begin
With UsersForm do begin
  if ADOQueryUsers['status']<>Null then ComboBox1.ItemIndex:=ADOQueryUsers['status'] else ComboBox1.ItemIndex:=0;
  if ADOQueryUsers['access']<>Null then access:=ADOQueryUsers['access'] else access:='';
  if ADOQueryUsers['otv_id']<>Null then otv_id:=ADOQueryUsers['otv_id'] else otv_id:=-1;

  for i:=1 to MaxRightCheckBox do
      CheckListBox1.Checked[i-1]:=(access[i]='1');
end;
end;

procedure TDM.UsersListBeforeScroll(DataSet: TDataSet);
Var access   : string;
    i        : integer;
begin
With UsersForm do
  if st_changed Then begin
     access:='';

     for i:=1 to MaxRightCheckBox do
         if (CheckListBox1.Checked[i-1]) then access:=access+'1' else access:=access+'0';

     ADOQueryUsers.Edit;
     if otv_id>=0 then ADOQueryUsers['otv_id']:=otv_id else ADOQueryUsers['otv_id']:=NULL;
     ADOQueryUsers['status']:=ComboBox1.ItemIndex;
     ADOQueryUsers['access']:=access;
     ADOQueryUsers.Post;

     st_changed:=false;
     if ADOQueryUsers['uid']=pLoginInfo.uid Then Begin
         pLoginInfo.access:=access;
     End
  end;
end;

Function TDM.AccessIsGranted(acs_id : integer) : boolean;
begin
  if ((pLoginInfo.mainRole<>role_Admin) and (pLoginInfo.mainRole<>role_User))
  then result:=false
  else result:=(pLoginInfo.access[acs_id]='1');
end;

Procedure TDM.ShowTownWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryTowns.SQL.Clear;
  ADOQueryTowns.SQL.Add(sql_GetTowns);
  ADOQueryTowns.Open;

  With TownsForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceTowns;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryTowns.Close;
End;

Function TDM.SelectTown : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  result:=mr;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryTowns.SQL.Clear;
  ADOQueryTowns.SQL.Add(sql_GetTowns);
  ADOQueryTowns.Open;

  With TownsForm Do begin
      isSelectForm:=true;
      sel_town_id:=-1;
      sel_town_name:='';
      DBGrid1.DataSource:=DataSourceTowns;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_town_id:=ADOQueryTowns['town_id'];
         sel_town_name:=ADOQueryTowns['town_name'];
      end;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryTowns.Close;
  result:=mr;
End;


Procedure TDM.AddTown;
Begin
  if not AccessIsGranted(acs_spr_town) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with Edit1FieldForm do begin
     Caption:='�������� ���������� �����';
     Label1.Caption:='�������� ����������� ������:';
     Edit1.Text:='';
     if (ShowModal=mrOk) Then Begin
          ADOQueryTowns.Append;
          ADOQueryTowns['town_name']:=Edit1.Text;
          ADOQueryTowns.Post;
     end;
  end;
End;

Procedure TDM.EditTown;
Begin
  if not AccessIsGranted(acs_spr_town) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with Edit1FieldForm do begin
     Caption:='�������� ���������� �����';
     Label1.Caption:='�������� ����������� ������:';
     Edit1.Text:=ADOQueryTowns['town_name'];
     if (ShowModal=mrOk) Then Begin
          ADOQueryTowns.Edit;
          ADOQueryTowns['town_name']:=Edit1.Text;
          ADOQueryTowns.Post;
     end;
  end;
End;

Procedure TDM.DelTown;
Begin
  if not AccessIsGranted(acs_spr_town) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryTowns.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     ADOQueryTowns.Delete;
  end;
End;

Procedure TDM.LocateTown(town_name : String);
Begin
  ADOQueryTowns.Locate('town_name','%'+town_name,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.ShowPromplWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryPrompl.SQL.Clear;
  ADOQueryPrompl.SQL.Add(sql_GetPrompl);
  ADOQueryPrompl.Open;

  With PromplForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourcePrompl;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryPrompl.Close;
End;

Function TDM.SelectPrompl : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryPrompl.SQL.Clear;
  ADOQueryPrompl.SQL.Add(sql_GetPrompl);
  ADOQueryPrompl.Open;

  With PromplForm Do begin
      isSelectForm:=true;
      sel_prompl_id:=-1;
      sel_prompl_name:='';
      DBGrid1.DataSource:=DataSourcePrompl;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_prompl_id:=ADOQueryPrompl['prompl_id'];
         sel_prompl_name:=ADOQueryPrompl['prompl_name'];
      end;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryPrompl.Close;
  result:=mr;
End;


Procedure TDM.AddPrompl;
Begin
  if not AccessIsGranted(acs_spr_prompl) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditPromplForm do begin
     Caption:='�������� ������������';
     Edit1.Text:='';
     Edit2.Text:='';
     town_id:=-1;
     if (ShowModal=mrOk) Then Begin
          ADOQueryPrompl.Append;
          ADOQueryPrompl['prompl_name']:=Edit1.Text;
          ADOQueryPrompl['town_id']:=town_id;
          ADOQueryPrompl.Post;
          ADOQueryPrompl.Requery();
          ADOQueryPrompl.Locate('prompl_name;town_id',VarArrayOf([Edit1.text, town_id]),[]);
     end;
  end;
End;

Procedure TDM.EditPrompl;
Var prompl_id : integer;
Begin
  if not AccessIsGranted(acs_spr_prompl) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditPromplForm do begin
     Caption:='�������� ������������';
     Edit1.Text:=ADOQueryPrompl['prompl_name'];
     Edit2.Text:=ADOQueryPrompl['town_name'];
     town_id:=ADOQueryPrompl['town_id'];
     prompl_id:=ADOQueryPrompl['prompl_id'];
     if (ShowModal=mrOk) Then Begin
          ADOQueryPrompl.Edit;
          ADOQueryPrompl['prompl_name']:=Edit1.Text;
          ADOQueryPrompl['town_id']:=town_id;
          ADOQueryPrompl.Post;
          ADOQueryPrompl.Requery();
          ADOQueryPrompl.Locate('prompl_id',prompl_id,[]);
     end;
  end;
End;

Procedure TDM.DelPrompl;
Var prompl_id : Integer;
    bm    : TBookmark;
Begin
  if not AccessIsGranted(acs_spr_prompl) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryPrompl.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     bm:=ADOQueryPrompl.GetBookmark;
     prompl_id:=ADOQueryPrompl['prompl_id'];
     try
        ADOQueryDynamic.SQL.Clear;
        ADOQueryDynamic.SQL.Add(sql_delPrompl);
        ADOQueryDynamic.Parameters.ParamByName('prompl_id').Value:=prompl_id;
        ADOQueryDynamic.Prepared:=True;
        ADOQueryDynamic.ExecSQL;
        ADOQueryPrompl.Requery();
        try ADOQueryPrompl.GotoBookmark(bm); except end;
     finally
        ADOQueryPrompl.FreeBookmark(bm);
     end;
  end;
End;

Procedure TDM.LocatePrompl(prompl_name : String);
Begin
  ADOQueryPrompl.Locate('prompl_name','%'+prompl_name,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.ShowBuildWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryBuild.SQL.Clear;
  ADOQueryBuild.SQL.Add(sql_GetBuild);
  ADOQueryBuild.Open;

  With BuildingForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceBuild;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryBuild.Close;
End;

Function TDM.SelectBuild : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryBuild.SQL.Clear;
  ADOQueryBuild.SQL.Add(sql_GetBuild);
  ADOQueryBuild.Open;

  With BuildingForm Do begin
      isSelectForm:=true;
      sel_build_id:=-1;
      sel_build_name:='';
      DBGrid1.DataSource:=DataSourceBuild;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_build_id:=ADOQueryBuild['build_id'];
         sel_build_name:=ADOQueryBuild['build_name'];
      end;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryBuild.Close;
  result:=mr;
End;

Procedure TDM.AddBuild;
Begin
  if not AccessIsGranted(acs_spr_build) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditBuildForm do begin
     Caption:='�������� ��������';
     Edit1.Text:='';
     Edit2.Text:='';
     prompl_id:=-1;
     if (ShowModal=mrOk) Then Begin
          ADOQueryBuild.Append;
          ADOQueryBuild['build_name']:=Edit1.Text;
          ADOQueryBuild['prompl_id']:=prompl_id;
          ADOQueryBuild.Post;
          ADOQueryBuild.Requery();
          ADOQueryBuild.Locate('build_name;prompl_id',VarArrayOf([Edit1.text, prompl_id]),[]);
     end;
  end;
End;

Procedure TDM.EditBuild;
Var build_id : integer;
Begin
  if not AccessIsGranted(acs_spr_build) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditBuildForm do begin
     Caption:='�������� ��������';
     Edit1.Text:=ADOQueryBuild['build_name'];
     Edit2.Text:=ADOQueryBuild['prompl_name'];
     prompl_id:=ADOQueryBuild['prompl_id'];
     build_id:=ADOQueryBuild['build_id'];
     if (ShowModal=mrOk) Then Begin
          ADOQueryBuild.Edit;
          ADOQueryBuild['build_name']:=Edit1.Text;
          ADOQueryBuild['prompl_id']:=prompl_id;
          ADOQueryBuild.Post;
          ADOQueryBuild.Requery();
          ADOQueryBuild.Locate('build_id',build_id,[]);
     end;
  end;
End;

Procedure TDM.DelBuild;
Var build_id : integer;
    bm    : TBookmark;
Begin
  if not AccessIsGranted(acs_spr_build) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryBuild.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     bm:=ADOQueryBuild.GetBookmark;
     build_id:=ADOQueryBuild['build_id'];
     try
       ADOQueryDynamic.SQL.Clear;
       ADOQueryDynamic.SQL.Add(sql_delBuild);
       ADOQueryDynamic.Parameters.ParamByName('build_id').Value:=build_id;
       ADOQueryDynamic.Prepared:=True;
       ADOQueryDynamic.ExecSQL;
       ADOQueryBuild.Requery();
        try ADOQueryBuild.GotoBookmark(bm); except end;
     finally
        ADOQueryBuild.FreeBookmark(bm);
     end;
  end;
End;

Procedure TDM.LocateBuild(build_name : String);
Begin
  ADOQueryBuild.Locate('build_name','%'+build_name,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.ShowServWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryServ.SQL.Clear;
  ADOQueryServ.SQL.Add(sql_GetServ);
  ADOQueryServ.Open;

  With ServForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceServ;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryServ.Close;
End;

Function TDM.SelectServ : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  result:=mr;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryServ.SQL.Clear;
  ADOQueryServ.SQL.Add(sql_GetServ);
  ADOQueryServ.Open;

  With ServForm Do begin
      isSelectForm:=true;
      sel_serv_id:=-1;
      sel_serv_name:='';
      DBGrid1.DataSource:=DataSourceServ;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_serv_id:=ADOQueryServ['serv_id'];
         sel_serv_name:=ADOQueryServ['serv_name'];
      end;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryServ.Close;
  result:=mr;
End;


Procedure TDM.AddServ;
Begin
  if not AccessIsGranted(acs_spr_serv) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditServForm do begin
     Caption:='�������� ������/�������������';
     Edit1.Text:='';
     Edit2.Text:='';
     Edit3.Text:='';
     if (ShowModal=mrOk) Then Begin
          ADOQueryServ.Append;
          ADOQueryServ['serv_name']:=Edit1.Text;
          ADOQueryServ['serv_grp']:=Edit2.Text;
          ADOQueryServ['serv_cat']:=Edit3.Text;
          ADOQueryServ.Post;
          ADOQueryServ.Requery();
          ADOQueryServ.Locate('serv_name',Edit1.Text,[]);
     end;
  end;
End;

Procedure TDM.EditServ;
Var serv_id : integer;
Begin
  if not AccessIsGranted(acs_spr_serv) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditServForm do begin
     Caption:='�������� ������/�������������';
     Edit1.Text:=ADOQueryServ['serv_name'];
     Edit2.Text:=ADOQueryServ['serv_grp'];
     Edit3.Text:=ADOQueryServ['serv_cat'];
     serv_id:=ADOQueryServ['serv_id'];
     if (ShowModal=mrOk) Then Begin
          ADOQueryServ.Edit;
          ADOQueryServ['serv_name']:=Edit1.Text;
          ADOQueryServ['serv_grp']:=Edit2.Text;
          ADOQueryServ['serv_cat']:=Edit3.Text;
          ADOQueryServ.Post;
          ADOQueryServ.Requery();
          ADOQueryBuild.Locate('serv_id',serv_id,[]);
     end;
  end;
End;

Procedure TDM.DelServ;
Var Serv_id : integer;
    bm    : TBookmark;
Begin
  if not AccessIsGranted(acs_spr_serv) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryServ.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     bm:=ADOQueryServ.GetBookmark;
     serv_id:=ADOQueryServ['serv_id'];
     try
       ADOQueryDynamic.SQL.Clear;
       ADOQueryDynamic.SQL.Add(sql_delServ);
       ADOQueryDynamic.Parameters.ParamByName('serv_id').Value:=serv_id;
       ADOQueryDynamic.Prepared:=True;
       ADOQueryDynamic.ExecSQL;
       ADOQueryServ.Requery();
        try ADOQueryServ.GotoBookmark(bm); except end;
     finally
        ADOQueryServ.FreeBookmark(bm);
     end;
  end;
End;

Procedure TDM.LocateServ(serv_name : String);
Begin
  ADOQueryServ.Locate('serv_name','%'+serv_name,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.ShowPlacesWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryPlaces.SQL.Clear;
  ADOQueryPlaces.SQL.Add(sql_GetPlaces);
  ADOQueryPlaces.Open;

  With PlacesForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourcePlaces;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryPlaces.Close;
End;

Procedure TDM.AddPlace;
Begin
  if not AccessIsGranted(acs_spr_places) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditPlaceForm do begin
     Caption:='�������� ������� �����';
     Edit1.Text:='';
     Edit2.Text:='';
     Edit3.Text:='';
     Edit4.Text:='';
     build_id:=-1;
     serv_id:=-1;
     if (ShowModal=mrOk) Then Begin
          ADOQueryPlaces.Append;
          ADOQueryPlaces['kab_n']:=Edit1.Text;
          ADOQueryPlaces['kab_name']:=Edit4.Text;
          ADOQueryPlaces['build_id']:=build_id;
          ADOQueryPlaces['serv_id']:=serv_id;
          ADOQueryPlaces.Post;
          ADOQueryPlaces.Requery();
          ADOQueryPlaces.Locate('build_id;serv_id;kab_n;kab_name',VarArrayOf([build_id,serv_id,Edit1.Text,Edit4.Text]),[]);
     end;
  end;
End;

Procedure TDM.EditPlace;
Var place_id : integer;
Begin
  if not AccessIsGranted(acs_spr_places) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditPlaceForm do begin
     Caption:='�������� ������� �����';
     Edit1.Text:=ADOQueryPlaces['kab_n'];
     Edit2.Text:=ADOQueryPlaces['build_name'];
     Edit3.Text:=ADOQueryPlaces['serv_name'];
     Edit4.Text:=ADOQueryPlaces['kab_name'];
     serv_id:=ADOQueryPlaces['serv_id'];
     build_id:=ADOQueryPlaces['build_id'];
     place_id:=ADOQueryPlaces['place_id'];
     if (ShowModal=mrOk) Then Begin
          ADOQueryPlaces.Edit;
          ADOQueryPlaces['kab_n']:=Edit1.Text;
          ADOQueryPlaces['kab_name']:=Edit4.Text;
          ADOQueryPlaces['build_id']:=build_id;
          ADOQueryPlaces['serv_id']:=serv_id;
          ADOQueryPlaces.Post;
          ADOQueryPlaces.Requery();
          ADOQueryPlaces.Locate('place_id',place_id,[]);
     end;
  end;
End;

Procedure TDM.DelPlace;
Var Place_id : integer;
    bm    : TBookmark;
Begin
  if not AccessIsGranted(acs_spr_places) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryPlaces.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     bm:=ADOQueryPlaces.GetBookmark;
     place_id:=ADOQueryPlaces['place_id'];
     try
       ADOQueryDynamic.SQL.Clear;
       ADOQueryDynamic.SQL.Add(sql_delPlace);
       ADOQueryDynamic.Parameters.ParamByName('place_id').Value:=place_id;
       ADOQueryDynamic.Prepared:=True;
       ADOQueryDynamic.ExecSQL;
       ADOQueryPlaces.Requery();
        try ADOQueryPlaces.GotoBookmark(bm); except end;
     finally
        ADOQueryPlaces.FreeBookmark(bm);
     end;
  end;
End;

Procedure TDM.LocatePlace(place_name : String);
Begin
  ADOQueryPlaces.Locate('kab_name','%'+place_name,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.ShowTypesWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryTypes.SQL.Clear;
  ADOQueryTypes.SQL.Add(sql_GetTypes);
  ADOQueryTypes.Open;

  With TypesForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceTypes;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryTypes.Close;
End;

Function TDM.SelectType : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  result:=mr;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryTypes.SQL.Clear;
  ADOQueryTypes.SQL.Add(sql_GetTypes);
  ADOQueryTypes.Open;

  With TypesForm Do begin
      isSelectForm:=true;
      sel_type_id:=-1;
      sel_type_name:='';
      DBGrid1.DataSource:=DataSourceTypes;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_type_id:=ADOQueryTypes['type_id'];
         sel_type_name:=ADOQueryTypes['type_name'];
      end;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryTypes.Close;
  result:=mr;
End;


Procedure TDM.AddType;
Begin
  if not AccessIsGranted(acs_spr_types) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with Edit1FieldForm do begin
     Caption:='�������� ��� ������������';
     Label1.Caption:='�������� ���� ������������:';
     Edit1.Text:='';
     if (ShowModal=mrOk) Then Begin
          ADOQueryTypes.Append;
          ADOQueryTypes['type_name']:=Edit1.Text;
          ADOQueryTypes.Post;
     end;
  end;
End;

Procedure TDM.EditType;
Begin
  if not AccessIsGranted(acs_spr_types) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with Edit1FieldForm do begin
     Caption:='�������� ��� ������������';
     Label1.Caption:='�������� ���� ������������:';
     Edit1.Text:=ADOQueryTypes['type_name'];
     if (ShowModal=mrOk) Then Begin
          ADOQueryTypes.Edit;
          ADOQueryTypes['type_name']:=Edit1.Text;
          ADOQueryTypes.Post;
     end;
  end;
End;

Procedure TDM.DelType;
Begin
  if not AccessIsGranted(acs_spr_types) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryTypes.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     ADOQueryTypes.Delete;
  end;
End;

Procedure TDM.LocateType(type_name : String);
Begin
  ADOQueryTypes.Locate('type_name','%'+type_name,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.ShowMarkWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryMark.SQL.Clear;
  ADOQueryMark.SQL.Add(sql_GetMark);
  ADOQueryMark.Open;

  With MarkForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceMark;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryMark.Close;
End;

Function TDM.SelectMark : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryMark.SQL.Clear;
  ADOQueryMark.SQL.Add(sql_GetMark);
  ADOQueryMark.Open;

  With MarkForm Do begin
      isSelectForm:=true;
      sel_Mark_id:=-1;
      sel_Mark_name:='';
      DBGrid1.DataSource:=DataSourceMark;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_Mark_id:=ADOQueryMark['Mark_id'];
         sel_Mark_name:=ADOQueryMark['Mark_name'];
      end;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryMark.Close;
  result:=mr;
End;

Procedure TDM.AddMark;
Begin
  if not AccessIsGranted(acs_spr_Mark) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditMarkForm do begin
     Caption:='�������� ��������';
     Edit1.Text:='';
     Edit2.Text:='';
     prompl_id:=-1;
     if (ShowModal=mrOk) Then Begin
          ADOQueryMark.Append;
          ADOQueryMark['Mark_name']:=Edit1.Text;
          ADOQueryMark['prompl_id']:=prompl_id;
          ADOQueryMark.Post;
          ADOQueryMark.Requery();
          ADOQueryMark.Locate('Mark_name;prompl_id',VarArrayOf([Edit1.text, prompl_id]),[]);
     end;
  end;
End;

Procedure TDM.EditMark;
Var Mark_id : integer;
Begin
  if not AccessIsGranted(acs_spr_Marks) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditMarkForm do begin
     Caption:='�������� ��������';
     Edit1.Text:=ADOQueryMark['mark_name'];
     Edit2.Text:=ADOQueryMark['prompl_name'];
     prompl_id:=ADOQueryMark['prompl_id'];
     Mark_id:=ADOQueryMark['Mark_id'];
     if (ShowModal=mrOk) Then Begin
          ADOQueryMark.Edit;
          ADOQueryMark['Mark_name']:=Edit1.Text;
          ADOQueryMark['prompl_id']:=prompl_id;
          ADOQueryMark.Post;
          ADOQueryMark.Requery();
          ADOQueryMark.Locate('Mark_id',Mark_id,[]);
     end;
  end;
End;

Procedure TDM.DelMark;
Var Mark_id : integer;
    bm    : TBookmark;
Begin
  if not AccessIsGranted(acs_spr_Marks) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryMark.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     bm:=ADOQueryMark.GetBookmark;
     Mark_id:=ADOQueryMark['Mark_id'];
     try
       ADOQueryDynamic.SQL.Clear;
       ADOQueryDynamic.SQL.Add(sql_delMark);
       ADOQueryDynamic.Parameters.ParamByName('Mark_id').Value:=Mark_id;
       ADOQueryDynamic.Prepared:=True;
       ADOQueryDynamic.ExecSQL;
       ADOQueryMark.Requery();
        try ADOQueryMark.GotoBookmark(bm); except end;
     finally
        ADOQueryMark.FreeBookmark(bm);
     end;
  end;
End;

Procedure TDM.LocateMark(Mark_name : String);
Begin
  ADOQueryMark.Locate('mark_name','%'+Mark_name,[loCaseInsensitive, loPartialKey]);
End;


end.

