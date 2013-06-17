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
    DataSourceEnlarge: TDataSource;
    ADOQueryEnlarge: TADOQuery;
    ADOQueryVendor: TADOQuery;
    DataSourceVendor: TDataSource;
    DataSourceSuppl: TDataSource;
    ADOQuerySuppl: TADOQuery;
    DataSourcePers: TDataSource;
    ADOQueryPers: TADOQuery;
    DataSourceADUSers: TDataSource;
    ADOQueryADUsers: TADOQuery;
    ADOQueryObjects: TADOQuery;
    DataSourceObjects: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure ADOQueryPersFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ADOQueryObjectsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
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

    // ��������� ������ � ����������
    Procedure PanelSearch(SearchText : String; panel : Integer);
    Procedure PanelFilter(panel : Integer);

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
    Function  SelectPlace : integer;
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

    // ��������� ������ �� ������������ ��������������
    Procedure ShowVendorWindow;
    Function  SelectVendor : integer;
    Procedure AddVendor;
    Procedure EditVendor;
    Procedure DelVendor;
    Procedure LocateVendor(vendor_name : String);

    // ��������� ������ �� ������������ �����������
    Procedure ShowSupplWindow;
    Function  SelectSuppl : integer;
    Procedure AddSuppl;
    Procedure EditSuppl;
    Procedure DelSuppl;
    Procedure LocateSuppl(suppl_name : String);

    // ������ � ������� �������������
    Procedure OpenPanelPersonal;
    Procedure ClosePanelPersonal;
    Procedure AddPersonal;
    Procedure EditPersonal;
    Procedure DelPersonal;

    // ������ � ����� ActiveDirectory
    Function RegisterADUser : Boolean;
    Function UnRegisterADUser : Boolean;
    Procedure ShowADUsersWindow;
    Procedure ReloadADUSers;
    Procedure ADRefresh;
    Function SelectADUser(f : string) : Boolean;
    Procedure LocateADUsers(strSearch : String);
    Procedure AddADUser;
    Procedure UpdateADUser;

    // ������ � ������� ����������
    Procedure OpenPanelOrgtech;
    Procedure ClosePanelOrgtech;
    Procedure PrihodOrgAdd(iscopy : boolean);
    Procedure PrihodOrgEdit;
    Procedure SpisOrg;
    Procedure MoveOrgDialog;

 end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Main, Filials, Users, SysUsers, towns, Edit1Field, prompl, EditPrompl, EditBuild,
  Building, Serv, EditServ, Places, EditPlace, UTypes, Mark, EditMark, Vendors, Suppliers,
  EditSuppl, AddPersonal, ADUsers, PrihodOrg, spis, MoveObject;

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
  if ADOQueryPers.Active then ADOQueryPers.Close;
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
      sel_Serv_cat:='';
      sel_Serv_grp:='';
      DBGrid1.DataSource:=DataSourceServ;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_serv_id:=ADOQueryServ['serv_id'];
         sel_serv_name:=ADOQueryServ['serv_name'];
         sel_Serv_cat:=ADOQueryServ['serv_cat'];
         sel_Serv_grp:=ADOQueryServ['serv_grp'];
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
          ADOQueryServ.Locate('serv_id',serv_id,[]);
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

Function TDM.SelectPlace : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  result:=mr;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryPlaces.SQL.Clear;
  ADOQueryPlaces.SQL.Add(sql_GetPlaces);
  ADOQueryPlaces.Open;

  With PlacesForm Do begin
      isSelectForm:=True;
      sel_place_id := -1;
      sel_prompl_id := -1;
      sel_place_name :='';
      DBGrid1.DataSource:=DataSourcePlaces;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_place_id:=ADOQueryPlaces['place_id'];
         sel_prompl_id:=ADOQueryPlaces['prompl_id'];
         sel_place_name:=String(ADOQueryPlaces['town_name'])+', '+String(ADOQueryPlaces['prompl_name'])+', '+String(ADOQueryPlaces['Build_name'])+', ���.�'+String(ADOQueryPlaces['Kab_n'])+', ('+String(ADOQueryPlaces['Kab_name'])+')';
      end;
      DBGrid1.DataSource:=nil;
  End;

  ADOQueryPlaces.Close;
  result:=mr;
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
  ADOQueryEnlarge.SQL.Clear;
  ADOQueryEnlarge.SQL.Add(sql_GetEnlarge);
  ADOQueryEnlarge.Open;

  With MarkForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceMark;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryMark.Close;
  ADOQueryEnlarge.Close;
End;

Function TDM.SelectMark : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryMark.SQL.Clear;
  ADOQueryMark.SQL.Add(sql_GetMark);
  ADOQueryMark.Open;
  ADOQueryEnlarge.SQL.Clear;
  ADOQueryEnlarge.SQL.Add(sql_GetEnlarge);
  ADOQueryEnlarge.Open;

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
  ADOQueryEnlarge.Close;
  result:=mr;
End;

Procedure TDM.AddMark;Begin
  if not AccessIsGranted(acs_spr_marks) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditMarkForm do begin
     Caption:='�������� ����� ������������';
     Edit1.Text:='';
     enlarge_id:=-1;
     DBLookupComboBox1.KeyValue:=Enlarge_id;
     if (ShowModal=mrOk) Then Begin
          enlarge_id:=DBLookupComboBox1.KeyValue;
          ADOQueryMark.Append;
          ADOQueryMark['Mark_name']:=Edit1.Text;
          if enlarge_id=-1 then ADOQueryMark['enlarge_id']:=NULL else ADOQueryMark['enlarge_id']:=enlarge_id;
          ADOQueryMark.Post;
          ADOQueryMark.Requery();
          ADOQueryMark.Locate('mark_name',Edit1.text,[]);
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
     Caption:='�������� ����� ������������';
     Edit1.Text:=ADOQueryMark['mark_name'];
     if ADOQueryMark['enlarge_id']=NULL then enlarge_id:=-1 else enlarge_id:=ADOQueryMark['enlarge_id'];
     DBLookupComboBox1.KeyValue:=Enlarge_id;
     Mark_id:=ADOQueryMark['Mark_id'];
     if (ShowModal=mrOk) Then Begin
          enlarge_id:=DBLookupComboBox1.KeyValue;
//          ADOQueryMark.Edit;
//          ADOQueryMark['Mark_name']:=Edit1.Text;
//          if enlarge_id=-1 then ADOQueryMark['enlarge_id']:=NULL else ADOQueryMark['enlarge_id']:=enlarge_id;
//          ADOQueryMark.Post;
          ADOQueryDynamic.SQL.Clear;
          ADOQueryDynamic.SQL.Add(sql_UpdateMark);
          ADOQueryDynamic.Parameters.ParamByName('Mark_id').Value:=Mark_id;
          ADOQueryDynamic.Parameters.ParamByName('Mark_name').Value:=Edit1.Text;
          if enlarge_id=-1 then ADOQueryDynamic.Parameters.ParamByName('enlarge_id').Value:=NULL
                           else ADOQueryDynamic.Parameters.ParamByName('enlarge_id').Value:=enlarge_id;
          ADOQueryDynamic.Prepared:=True;
          ADOQueryDynamic.ExecSQL;

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

Procedure TDM.ShowVendorWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryVendor.SQL.Clear;
  ADOQueryVendor.SQL.Add(sql_GetVendor);
  ADOQueryVendor.Open;

  With VendorsForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceVendor;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryVendor.Close;
End;

Function TDM.SelectVendor : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  result:=mr;
  if Not pDataBaseIsOpen Then Exit;

  ADOQueryVendor.SQL.Clear;
  ADOQueryVendor.SQL.Add(sql_GetVendor);
  ADOQueryVendor.Open;

  With VendorsForm Do begin
      isSelectForm:=true;
      sel_vendor_id:=-1;
      sel_vendor_name:='';
      DBGrid1.DataSource:=DataSourceVendor;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_vendor_id:=ADOQueryVendor['vendor_id'];
         sel_vendor_name:=ADOQueryVendor['vendor_name'];
      end;
      DBGrid1.DataSource:=nil;
  End;
  ADOQueryVendor.Close;
  result:=mr;
End;


Procedure TDM.AddVendor;
Begin
  if not AccessIsGranted(acs_spr_vendor) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with Edit1FieldForm do begin
     Caption:='�������� �������������';
     Label1.Caption:='������������ �������������:';
     Edit1.Text:='';
     if (ShowModal=mrOk) Then Begin
          ADOQueryVendor.Append;
          ADOQueryVendor['vendor_name']:=Edit1.Text;
          ADOQueryVendor.Post;
     end;
  end;
End;

Procedure TDM.EditVendor;
Begin
  if not AccessIsGranted(acs_spr_vendor) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with Edit1FieldForm do begin
     Caption:='�������� �������������';
     Label1.Caption:='������������ �������������:';
     Edit1.Text:=ADOQueryVendor['vendor_name'];
     if (ShowModal=mrOk) Then Begin
          ADOQueryVendor.Edit;
          ADOQueryVendor['vendor_name']:=Edit1.Text;
          ADOQueryVendor.Post;
     end;
  end;
End;

Procedure TDM.DelVendor;
Begin
  if not AccessIsGranted(acs_spr_vendor) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryVendor.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     ADOQueryVendor.Delete;
  end;

End;

Procedure TDM.LocateVendor(vendor_name : String);
Begin
  ADOQueryVendor.Locate('vendor_name','%'+vendor_name,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.ShowSupplWindow;
Begin
  if Not pDataBaseIsOpen Then Exit;

  ADOQuerySuppl.SQL.Clear;
  ADOQuerySuppl.SQL.Add(sql_GetSuppl);
  ADOQuerySuppl.Open;

  With SuppliersForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceSuppl;
      ShowModal;
      DBGrid1.DataSource:=nil;
  End;
  ADOQuerySuppl.Close;
End;

Function TDM.SelectSuppl : integer;
var mr : integer;
Begin
  mr:=mrCancel;
  result:=mr;
  if Not pDataBaseIsOpen Then Exit;

  ADOQuerySuppl.SQL.Clear;
  ADOQuerySuppl.SQL.Add(sql_GetSuppl);
  ADOQuerySuppl.Open;

  With SuppliersForm Do begin
      isSelectForm:=true;
      sel_suppl_id:=-1;
      sel_suppl_name:='';
      DBGrid1.DataSource:=DataSourceSuppl;
      mr:=ShowModal;
      if  ModalResult=mrOk then Begin
         sel_suppl_id:=ADOQuerySuppl['suppl_id'];
         sel_suppl_name:=ADOQuerySuppl['suppl_name'];
      end;
      DBGrid1.DataSource:=nil;
  End;
  ADOQuerySuppl.Close;
  result:=mr;
End;


Procedure TDM.AddSuppl;
Begin
  if not AccessIsGranted(acs_spr_suppl) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditSupplForm do begin
     Caption:='�������� ����������';
     Edit1.Text:='';
     Edit2.Text:='';
     Edit3.Text:='';
     Edit4.Text:='';
     Edit5.Text:='';
     Edit6.Text:='';
     if (ShowModal=mrOk) Then Begin
          ADOQuerySuppl.Append;
          ADOQuerySuppl['suppl_name']:=Edit1.Text;
          ADOQuerySuppl['suppl_short_name']:=Edit2.Text;
          ADOQuerySuppl['director_fio']:=Edit3.Text;
          ADOQuerySuppl['director_tel']:=Edit4.Text;
          ADOQuerySuppl['contact_fio']:=Edit5.Text;
          ADOQuerySuppl['contact_tel']:=Edit6.Text;
          ADOQuerySuppl.Post;
          ADOQuerySuppl.Requery();
          ADOQuerySuppl.Locate('suppl_name',Edit1.Text,[]);
     end;
  end;
End;

Procedure TDM.EditSuppl;
Var suppl_id : integer;
Begin
  if not AccessIsGranted(acs_spr_suppl) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with EditSupplForm do begin
     Caption:='�������� ����������';
     Edit1.Text:=ADOQuerySuppl['suppl_name'];
     Edit2.Text:=ADOQuerySuppl['suppl_short_name'];
     if ADOQuerySuppl['director_fio']<>NULL Then Edit3.Text:=ADOQuerySuppl['director_fio'] else Edit3.text:='';
     if ADOQuerySuppl['director_tel']<>NULL Then Edit4.Text:=ADOQuerySuppl['director_tel'] else Edit4.text:='';
     if ADOQuerySuppl['contact_fio']<>NULL Then Edit5.Text:=ADOQuerySuppl['contact_fio'] else Edit5.text:='';
     if ADOQuerySuppl['contact_tel']<>NULL Then Edit6.Text:=ADOQuerySuppl['contact_tel'] else Edit6.text:='';
     suppl_id:=ADOQuerySuppl['suppl_id'];
     if (ShowModal=mrOk) Then Begin
          ADOQuerySuppl.Edit;
          ADOQuerySuppl['suppl_name']:=Edit1.Text;
          ADOQuerySuppl['suppl_short_name']:=Edit2.Text;
          ADOQuerySuppl['director_fio']:=Edit3.Text;
          ADOQuerySuppl['director_tel']:=Edit4.Text;
          ADOQuerySuppl['contact_fio']:=Edit5.Text;
          ADOQuerySuppl['contact_tel']:=Edit6.Text;
          ADOQuerySuppl.Post;
          ADOQuerySuppl.Requery();
          ADOQuerySuppl.Locate('suppl_id',suppl_id,[]);
     end;
  end;
End;

Procedure TDM.DelSuppl;
Var Suppl_id : integer;
    bm    : TBookmark;
Begin
  if not AccessIsGranted(acs_spr_suppl) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQuerySuppl.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     bm:=ADOQuerySuppl.GetBookmark;
     suppl_id:=ADOQuerySuppl['suppl_id'];
     try
       ADOQueryDynamic.SQL.Clear;
       ADOQueryDynamic.SQL.Add(sql_delSuppl);
       ADOQueryDynamic.Parameters.ParamByName('suppl_id').Value:=suppl_id;
       ADOQueryDynamic.Prepared:=True;
       ADOQueryDynamic.ExecSQL;
       ADOQuerySuppl.Requery();
        try ADOQuerySuppl.GotoBookmark(bm); except end;
     finally
        ADOQuerySuppl.FreeBookmark(bm);
     end;
  end;
End;

Procedure TDM.LocateSuppl(suppl_name : String);
Begin
  ADOQuerySuppl.Locate('suppl_name','%'+suppl_name,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.OpenPanelPersonal;
Begin
 ADOQueryPers.SQL.Clear;
 ADOQueryPers.SQL.Add(sql_getPersonal);
 ADOQueryPers.Open;
 MainForm.DBGridPers.DataSource:=DataSourcePers;
End;

Procedure TDM.ClosePanelPersonal;
Begin
 MainForm.DBGridPers.DataSource:=nil;
 ADOQueryPers.Close;
End;

procedure TDM.ADOQueryPersFilterRecord(DataSet: TDataSet; var Accept: Boolean);
Var str,search : String;
    adreg, adotkl, adnoreg : boolean;
begin
  Accept:=True;
  search:=ANSIUPPERCASE(MainForm.SearchEdit.Text);
  // ���� �������� ������ ���������� ����� �������� �������� ����������� � SearchEdit.Text
  if (MainForm.Action6.Checked and (search<>'')) then begin
     Accept:=False;
     if Assigned(DataSet.FieldByName('F')) and (DataSet.FieldByName('F').Value<>NULL) then
        Accept:= Accept or (Pos(search, ANSIUPPERCASE(DataSet.FieldByName('F').Value))<>0);
     if Assigned(DataSet.FieldByName('Login')) and (DataSet.FieldByName('Login').Value<>NULL) then
        Accept:= Accept or (POS(search, ANSIUPPERCASE(DataSet.FieldByName('Login').Value))<>0);
  end;
  // � ����� ������ ��������� ������ ��� ���������
  adreg:=MainForm.CheckBox1.checked and ((DataSet.FieldByName('ad_id').Value<>NULL) and (DataSet.FieldByName('ad_id').Value<>-1));
  adotkl:=((DataSet.FieldByName('isBlocked').Value<>NULL) or (DataSet.FieldByName('isDisable').Value<>NULL));
  if adotkl then adreg:=False;
  adotkl:=MainForm.CheckBox2.checked and adotkl;
  adnoreg:=MainForm.CheckBox3.checked and ( (DataSet.FieldByName('ad_id').Value=NULL ) or (DataSet.FieldByName('ad_id').Value=-1) );
  Accept:=Accept and (adreg or adotkl or adnoreg);
end;

Procedure TDM.AddPersonal;
Begin
  if not AccessIsGranted(acs_personal_change) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with AddPersonalForm do begin
     Caption:='�������� ������������ ���';
     serv_id:=-1;
     Prompl_id:=-1;
     place_id:=-1;
     Edit1.Text:='';
     Edit2.Text:='';
     Edit3.Text:='';
     Edit4.Text:='';
     Edit5.Text:='';
     Edit6.Text:='';
     CheckBox1.Checked:=False;
     checkbox2.OnClick:=nil;
     CheckBox2.Checked:=False;
     checkbox2.OnClick:=CheckBox2Click;
     Edit7.Text:='';
     Edit8.Text:='';

     // ������ �� Active Directory
     Edit9.Text:='';
     Edit10.Text:='';
     Edit11.Text:='';
     Edit12.Text:='';
     Edit13.Text:='';
     Edit14.Text:='';
     Edit15.Text:='';

     DateTimePicker1.DateTime:=InitialDT;

     ADUsersForm.sel_aduser_id:=-1;

     if (ShowModal=mrOk) Then Begin
         ADOQueryPers.Append;
         ADOQueryPers['tab']:=Edit1.Text;
         ADOQueryPers['f']:=Edit2.Text;
         ADOQueryPers['i']:=Edit3.Text;
         ADOQueryPers['o']:=Edit4.Text;
         ADOQueryPers['dol']:=Edit5.Text;
         ADOQueryPers['serv_id']:=Serv_id;
         ADOQueryPers['place_id']:=place_id;
         ADOQueryPers['ad_ved_n']:=Edit8.Text;

         if  DateTimePicker1.DateTime=InitialDT then ADOQueryPers['ad_ved_date']:=NULL else ADOQueryPers['ad_ved_date']:=DateTimePicker1.DateTime;
         if CheckBox1.Checked Then ADOQueryPers['fit']:=1 else ADOQueryPers['fit']:=0;

         if ADUsersForm.sel_aduser_id=-1 then
            ADOQueryPers['ad_id']:=null
         else
            ADOQueryPers.FieldByName('ad_id').AsInteger:=ADUsersForm.sel_aduser_id;
         ADOQueryPers.Post;
         ADOQueryPers.Requery;
         ADOQueryPers.Locate('tab;f;i;o',VarArrayOf([Edit1.Text,Edit2.Text,Edit3.Text,Edit4.Text]),[]);
     end;
  end;
End;

Procedure TDM.EditPersonal;
Begin
  if not AccessIsGranted(acs_personal_change) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  with AddPersonalForm do begin
     Caption:='�������� ������������ ���';
     pers_id:=ADOQueryPers['pers_id'];

     if ADOQueryPers['serv_id']<>NULL Then serv_id:=ADOQueryPers['serv_id'] else serv_id:=-1;
     if ADOQueryPers['serv_grp']<>NULL Then serv_grp:=ADOQueryPers['serv_grp'] else serv_grp:='-';
     if ADOQueryPers['serv_cat']<>NULL Then serv_cat:=ADOQueryPers['serv_cat'] else serv_cat:='-';
     if ADOQueryPers['place_id']<>NULL Then place_id:=ADOQueryPers['place_id'] else place_id:=-1;
     if ADOQueryPers['prompl_id']<>NULL Then prompl_id:=ADOQueryPers['prompl_id'] else prompl_id:=-1;
     if ADOQueryPers['tab']<>NULL Then Edit1.Text:=ADOQueryPers['tab'] else Edit1.Text:='';
     if ADOQueryPers['f']<>NULL Then Edit2.Text:=ADOQueryPers['f'] else Edit2.Text:='';
     if ADOQueryPers['i']<>NULL Then Edit3.Text:=ADOQueryPers['i'] else Edit3.Text:='';
     if ADOQueryPers['o']<>NULL Then Edit4.Text:=ADOQueryPers['o'] else Edit4.Text:='';
     if ADOQueryPers['dol']<>NULL Then Edit5.Text:=ADOQueryPers['dol'] else Edit5.Text:='';
     if ADOQueryPers['serv_name']<>NULL Then Edit6.Text:=ADOQueryPers['Serv_name'] else Edit6.Text:='';
     Edit7.Text:=String(ADOQueryPers['town_name'])+', '+String(ADOQueryPers['prompl_name'])+', '+String(ADOQueryPers['Build_name'])+', ���.�'+String(ADOQueryPers['Kab_n'])+', ('+String(ADOQueryPers['Kab_name'])+')';
     if ADOQueryPers['ad_ved_n']<> NULL Then Edit8.Text:=ADOQueryPers['ad_ved_n'] else Edit8.Text:='';
     if ADOQueryPers['ad_ved_date']<> NULL Then DateTimePicker1.DateTime:=ADOQueryPers['ad_ved_date'] else DateTimePicker1.DateTime:=InitialDT;

     checkBox1.Checked:=(ADOQueryPers['fit']=1);
     checkbox2.OnClick:=nil;
     checkBox2.Checked:=not (ADOQueryPers['ad_id']=null);
     checkbox2.OnClick:=CheckBox2Click;

     if ADOQueryPers['sn']<> NULL Then Edit10.Text:=ADOQueryPers['sn'] else Edit10.Text:='';
     if ADOQueryPers['GivenName']<> NULL Then Edit11.Text:=ADOQueryPers['GivenName'] else Edit11.Text:='';
     if ADOQueryPers['initials']<> NULL Then Edit12.Text:=ADOQueryPers['initials'] else Edit12.Text:='';
     if ADOQueryPers['Login']<> NULL Then Edit9.Text:=ADOQueryPers['Login'] else Edit9.Text:='';
     if ADOQueryPers['Title']<> NULL Then Edit13.Text:=ADOQueryPers['Title'] else Edit13.Text:='';
     if ADOQueryPers['Department']<> NULL Then Edit14.Text:=ADOQueryPers['Department'] else Edit14.Text:='';
     if ADOQueryPers['TelephoneNumber']<> NULL Then Edit15.Text:=ADOQueryPers['TelephoneNumber'] else Edit15.Text:='';

     if ADOQueryPers['ad_id']<>NULL Then ADUsersForm.sel_aduser_id:=ADOQueryPers['ad_id'] else ADUsersForm.sel_aduser_id:=-1;

     if (ShowModal=mrOk) Then Begin
         ADOQueryPers.Edit;
         ADOQueryPers['tab']:=Edit1.Text;
         ADOQueryPers['f']:=Edit2.Text;
         ADOQueryPers['i']:=Edit3.Text;
         ADOQueryPers['o']:=Edit4.Text;
         ADOQueryPers['dol']:=Edit5.Text;
         ADOQueryPers['serv_id']:=Serv_id;
         ADOQueryPers['place_id']:=place_id;

         if CheckBox1.Checked Then ADOQueryPers['fit']:=1 else ADOQueryPers['fit']:=0;

         ADOQueryPers['ad_ved_n']:=Edit8.Text;
         if  DateTimePicker1.DateTime=InitialDT then ADOQueryPers['ad_ved_date']:=NULL else ADOQueryPers['ad_ved_date']:=DateTimePicker1.DateTime;

         if ADUsersForm.sel_aduser_id=-1 then
            ADOQueryPers.FieldByName('ad_id').AsVariant:=NULL
         else
            ADOQueryPers.FieldByName('ad_id').AsInteger:=ADUsersForm.sel_aduser_id;

         ADOQueryPers.Post;
         ADOQueryPers.Requery;
         ADOQueryPers.Locate('pers_id',pers_id,[]);
     end;
  end;
End;

Procedure TDM.DelPersonal;
Var pers_id : integer;
    bm    : TBookmark;
Begin
  if not AccessIsGranted(acs_personal_change) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if Not ADOQueryPers.Eof Then
  if MessageDlg('������� ������?',mtConfirmation,[mbYes, mbNo],0)=mrYes
  then begin
     bm:=ADOQueryPers.GetBookmark;
     pers_id:=ADOQueryPers['pers_id'];
     try
       ADOQueryDynamic.SQL.Clear;
       ADOQueryDynamic.SQL.Add(sql_delPersonal);
       ADOQueryDynamic.Parameters.ParamByName('pers_id').Value:=pers_id;
       ADOQueryDynamic.Prepared:=True;
       ADOQueryDynamic.ExecSQL;
       ADOQueryPers.Requery();
        try ADOQueryPers.GotoBookmark(bm); except end;
     finally
        ADOQueryPers.FreeBookmark(bm);
     end;
  end;
End;

Function TDM.RegisterADUser : boolean;
Var mr : boolean;
Begin
  With ADUsersForm do begin
       sel_aduser_id:=-1;
       sel_Login:='';
       sel_sn:='';
       sel_GivenName:='';
       sel_initials:='';
       sel_title:='';
       sel_Department:='';
       sel_tel:='';
  end;
  mr:=SelectADUser(ADOQueryPers['f']);
  Result:=mr;
End;

Function TDM.UnRegisterADUser : Boolean;
Var mr : boolean;
Begin
  mr:=(MessageDlg('����� ���������� � ����������� � Active Directory?',mtConfirmation,[mbYes, mbNo],0)=mrYes);

  if mr then
  With ADUSersForm do begin
       sel_aduser_id:=-1;
       sel_Login:='';
       sel_sn:='';
       sel_GivenName:='';
       sel_initials:='';
       sel_title:='';
       sel_Department:='';
       sel_tel:='';
  end;

  Result:=mr;
End;

Procedure TDM.ADRefresh;
var ADOsp : TADOStoredProc;
    bm : TBookmark;
Begin
//  if (ActiveUser.s_access and (1 shl acs_adrefresh)) = 0 then begin
//    MessageDlg(msg_noRights,mtInformation,[mbOk],0);
//    exit;
//  end;
//  if MessageDlg('�������� ������ Active Directory?',mtConfirmation,[mbYes, mbNo],0)=mrYes
//  then begin
//    bm:=ADOQuery13.GetBookmark;
//  try
//    ADOsp:=TADOStoredProc.Create(nil);
//    ADOsp.Connection:=ADOConnection1;
//    ADOsp.ProcedureName:=sp_ADRefresh;
//    ADOsp.Prepared:=True;
//    ADOsp.ExecProc;
//    ADOsp.Free;
//    ADOQuery13.Requery;
//    try ADOQuery13.GotoBookmark(bm); except end;
//   finally
//    ADOQuery13.FreeBookmark(bm);
//   end;
//  end;
End;

Procedure TDM.ShowADUsersWindow;
Var sql : String;
Begin
 ADOQueryADUsers.SQL.Clear;
 if ADUSersForm.CheckBox1.Checked
 Then sql:=sql_getADUsers2 else sql:=sql_getADUsers;
 ADOQueryADUsers.SQL.Add(sql);
 ADOQueryADUsers.Open;
 With ADUsersForm Do begin
      isSelectForm:=False;
      DBGrid1.DataSource:=DataSourceADUsers;
      ShowModal;
      DBGrid1.DataSource:=nil;
 End;
 ADOQueryADUsers.Close;
End;

Procedure TDM.ReloadADUsers;
Var sql : String;
Begin
 if Not pDatabaseIsOpen Then Exit;
 ADOQueryADUsers.Close;
 ADOQueryADUsers.SQL.Clear;
 if ADUSersForm.CheckBox1.Checked
 Then sql:=sql_getADUsers2 else sql:=sql_getADUsers;
 ADOQueryADUsers.SQL.Add(sql);
 ADOQueryADUsers.Open;
End;

Function TDM.SelectADUser(f : string) : Boolean;
var mr : Boolean;
    sql: String;
Begin
 ADOQueryADUsers.SQL.Clear;
 if ADUsersForm.CheckBox1.Checked
 Then sql:=sql_getADUsers2 else sql:=sql_getADUsers;
 ADOQueryADUsers.SQL.Add(sql);
 ADOQueryADUsers.Open;
 DM.ADOQueryADUsers.Locate('sn',f,[loCaseInsensitive, loPartialKey]);
 With ADUsersForm Do begin
      isSelectForm:=True;
      DBGrid1.DataSource:=DataSourceADUsers;
       mr:=(ShowModal=mrOk);
       if mr Then begin
          sel_aduser_id:=ADOQueryADUsers['aduser_id'];
          sel_Login:=ADOQueryADUsers['Login'];
          sel_sn:=ADOQueryADUsers['sn'];
          sel_GivenName:=ADOQueryADUsers['GivenName'];
          sel_initials:=ADOQueryADUsers['initials'];
          sel_title:=ADOQueryADUsers['title'];
          sel_Department:=ADOQueryADUsers['Department'];
          sel_tel:=ADOQueryADUsers['telephoneNumber'];
         end;
      DBGrid1.DataSource:=nil;
 End;
 ADOQueryADUsers.Close;
 Result:=mr;
End;

Procedure TDM.LocateADUsers(strSearch : String);
Begin
  ADOQueryADUsers.Locate('Login','%'+strSearch,[loCaseInsensitive, loPartialKey]);
End;

Procedure TDM.AddADUser;
Begin
//
End;

Procedure TDM.UpdateADUser;
Begin
//
End;

Procedure TDM.OpenPanelOrgtech;
Begin
 ADOQueryObjects.SQL.Clear;
 ADOQueryObjects.SQL.Add(sql_getObjects);
 ADOQueryObjects.Open;
 MainForm.DBGridOrgtech.DataSource:=DataSourceObjects;
End;

Procedure TDM.ClosePanelOrgtech;
Begin
 MainForm.DBGridOrgtech.DataSource:=nil;
 ADOQueryObjects.Close;
End;

procedure TDM.ADOQueryObjectsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
Var str,search : String;
    obj_std, obj_nowork, obj_nosit, obj_spis : boolean;
begin
  Accept:=True;
  search:=ANSIUPPERCASE(MainForm.SearchEdit.Text);
  // ���� �������� ������ ���������� ����� �������� �������� ����������� � SearchEdit.Text
  if (MainForm.Action6.Checked and (search<>'')) then begin
     Accept:=False;
     if Assigned(DataSet.FieldByName('sstr')) and (DataSet.FieldByName('sstr').Value<>NULL) then
        Accept:= Accept or (Pos(search, ANSIUPPERCASE(DataSet.FieldByName('sstr').Value))<>0);
  end;
  // � ����� ������ ��������� ������ ��� ���������
  obj_spis:=((DataSet.FieldByName('f_spis').Value<>NULL) and (DataSet.FieldByName('f_spis').Value<>0));
  obj_nosit:=not obj_spis and ((DataSet.FieldByName('f_sit').Value=NULL) or (DataSet.FieldByName('f_sit').Value=0));
  obj_nowork:=not obj_spis and ((DataSet.FieldByName('f_nowork').Value<>NULL) and (DataSet.FieldByName('f_nowork').Value<>0));
  obj_std:=not obj_spis and not obj_nosit and not obj_nowork;

  obj_std:=obj_std and  MainForm.CheckBox4.checked;
  obj_nowork:=obj_nowork and  MainForm.CheckBox6.checked;
  obj_nosit:=obj_nosit and  MainForm.CheckBox5.checked;
  obj_spis:=obj_spis and  MainForm.CheckBox7.checked;

  Accept:=Accept and (obj_std or obj_nosit or obj_nowork or obj_spis);
end;

Procedure TDM.PanelSearch(SearchText : String; panel : Integer);
Begin
  // ������ ���������� ������������ ����� ����, ��� Locate ����� ���������� ���������������
  // ������ �� ������, ������� ������ ��� ������ ������� onFiterRecord. ��� ���� ��������� Run-Time ������
  // "�����" ������ ��� ������ try..except
  try
  case Panel of
      panOrgtech: ADOQueryObjects.Locate('sstr','%'+SearchText,[loCaseInsensitive, loPartialKey]);
      panUsers: ADOQueryPers.Locate('f','%'+SearchText,[loCaseInsensitive, loPartialKey]);
  end;
  Except
  end;
End;

Procedure TDM.PanelFilter(panel : Integer);
Begin
  case Panel of
      panOrgtech: Begin ADOQueryObjects.Filtered:=False; ADOQueryObjects.Filtered:=true; End;
      panUsers: Begin ADOQueryPers.Filtered:=False; ADOQueryPers.Filtered:=true; End;
  end;
End;

Procedure TDM.PrihodOrgAdd(iscopy : boolean);
var ADOsp : TADOStoredProc;
    obj_id : Integer;
    i      : Integer;
Begin
  if not AccessIsGranted(acs_prihod_add) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  With PrihodOrgForm do begin
     if not isCopy then begin
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
       Caption:='������ ����������';
     end else Caption:='������ ���������� (�����)';

     if ShowModal=mrOk Then begin
        ADOsp:=TADOStoredProc.Create(nil);
        ADOsp.Connection:=ADOConnection1;
        ADOsp.ProcedureName:=sp_AddPrihod;
        For i:=0 to 17 do ADOsp.Parameters.Add;
        ADOsp.Parameters[0].Value:=type_id;
        ADOsp.Parameters[1].Value:=vendor_id;
        ADOsp.Parameters[2].Value:=suppl_id;
        ADOsp.Parameters[3].Value:=Edit2.text;                  // obj_name
        ADOsp.Parameters[4].Value:=mark_id;
        ADOsp.Parameters[5].Value:=Edit5.text;                  // invN
        ADOsp.Parameters[6].Value:=Edit8.text;                  // invN_comment
        ADOsp.Parameters[7].Value:=Edit6.text;                  // SN
        ADOsp.Parameters[8].Value:=Edit7.text;                  // PN
        ADOsp.Parameters[9].Value:=Edit9.text;                  // nnakl
        ADOsp.Parameters[10].Value:=DateTimePicker1.DateTime;   // d_prih
        ADOsp.Parameters[11].Value:=DateTimePicker2.DateTime;   // d_gar
        ADOsp.Parameters[12].Value:=Memo1.Text;                 // prim
        ADOsp.Parameters[13].Value:=Edit11.Text;                // hostname
        if checkbox1.checked then ADOsp.Parameters[14].Value:=0 else ADOsp.Parameters[14].Value:=1;
        if checkbox2.checked then ADOsp.Parameters[15].Value:=1 else ADOsp.Parameters[15].Value:=0;
        if checkbox3.checked then ADOsp.Parameters[16].Value:=1 else ADOsp.Parameters[16].Value:=0;
        ADOsp.Parameters[17].DataType:=ftInteger;
        ADOsp.Parameters[17].Direction:=pdOutput;
        ADOsp.Prepared:=True;
        ADOsp.ExecProc;
        obj_id:=ADOsp.Parameters[17].value;
        ADOsp.Free;
        ADOQueryObjects.Requery;
        try ADOQueryObjects.Locate('obj_id',obj_id,[]); except; end;
     end;
  end;
End;

Procedure TDM.PrihodOrgEdit;
var ADOsp : TADOStoredProc;    obj_id : Integer;    i      : Integer;Begin  if not AccessIsGranted(acs_prihod_edit) then begin     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;
  With PrihodOrgForm do begin     if ADOQueryObjects['type_id']<>NULL then type_id:=ADOQueryObjects['type_id'] else type_id:=-1;     if ADOQueryObjects['vendor_id']<>NULL then vendor_id:=ADOQueryObjects['vendor_id'] else vendor_id:=-1;     if ADOQueryObjects['suppl_id']<>NULL then suppl_id:=ADOQueryObjects['suppl_id'] else suppl_id:=-1;     if ADOQueryObjects['mark_id']<>NULL then mark_id:=ADOQueryObjects['mark_id'] else mark_id:=-1;     if ADOQueryObjects['d_prih']<>NULL then DateTimePicker1.Date:=ADOQueryObjects['d_prih'] else DateTimePicker1.Date:=InitialDT;     if ADOQueryObjects['d_gar']<>NULL then DateTimePicker2.Date:=ADOQueryObjects['d_gar'] else DateTimePicker2.Date:=InitialDT;     if ADOQueryObjects['type_name']<>NULL then Edit1.Text:=ADOQueryObjects['type_name'] else Edit1.Text:='';     if ADOQueryObjects['obj_name']<>NULL then Edit2.Text:=ADOQueryObjects['obj_name'] else Edit2.Text:='';     if ADOQueryObjects['vendor_name']<>NULL then Edit3.Text:=ADOQueryObjects['vendor_name'] else Edit3.Text:='';     if ADOQueryObjects['mark_name']<>NULL then Edit4.Text:=ADOQueryObjects['mark_name'] else Edit4.Text:='';     if ADOQueryObjects['InvN']<>NULL then Edit5.Text:=ADOQueryObjects['InvN'] else Edit5.Text:='';     if ADOQueryObjects['sn']<>NULL then Edit6.Text:=ADOQueryObjects['sn'] else Edit6.Text:='';     if ADOQueryObjects['pn']<>NULL then Edit7.Text:=ADOQueryObjects['pn'] else Edit7.Text:='';     if ADOQueryObjects['InvN_comment']<>NULL then Edit8.Text:=ADOQueryObjects['InvN_comment'] else Edit8.Text:='';     if ADOQueryObjects['nnakl']<>NULL then Edit9.Text:=ADOQueryObjects['nnakl'] else Edit9.Text:='';     if ADOQueryObjects['suppl_name']<>NULL then Edit10.Text:=ADOQueryObjects['suppl_name'] else Edit10.Text:='';     if ADOQueryObjects['hostname']<>NULL then Edit11.Text:=ADOQueryObjects['hostname'] else Edit11.Text:='';     if ADOQueryObjects['prim']<>NULL then Memo1.Text:=ADOQueryObjects['prim'] else Memo1.Clear;     if ADOQueryObjects['f_sit']=0 then checkBox1.Checked:=true else CheckBox1.Checked:=false;     if ADOQueryObjects['f_nowork']=1 then checkBox2.Checked:=True else CheckBox2.Checked:=false;     if ADOQueryObjects['f_ad']=1 then checkBox3.Checked:=True else CheckBox3.Checked:=false;     obj_id:=ADOQueryObjects['obj_id'];     Caption:='��������� ���������� �� �������';     if ShowModal=mrOk Then begin        ADOsp:=TADOStoredProc.Create(nil);
        ADOsp.Connection:=ADOConnection1;
        ADOsp.ProcedureName:=sp_EditPrihod;
        For i:=0 to 17 do ADOsp.Parameters.Add;
        ADOsp.Parameters[0].Value:=type_id;
        ADOsp.Parameters[1].Value:=vendor_id;
        ADOsp.Parameters[2].Value:=suppl_id;
        ADOsp.Parameters[3].Value:=Edit2.text;                  // obj_name
        ADOsp.Parameters[4].Value:=mark_id;
        ADOsp.Parameters[5].Value:=Edit5.text;                  // invN
        ADOsp.Parameters[6].Value:=Edit8.text;                  // invN_comment
        ADOsp.Parameters[7].Value:=Edit6.text;                  // SN
        ADOsp.Parameters[8].Value:=Edit7.text;                  // PN
        ADOsp.Parameters[9].Value:=Edit9.text;                  // nnakl
        ADOsp.Parameters[10].Value:=DateTimePicker1.DateTime;   // d_prih
        ADOsp.Parameters[11].Value:=DateTimePicker2.DateTime;   // d_gar
        ADOsp.Parameters[12].Value:=Memo1.Text;                 // prim
        ADOsp.Parameters[13].Value:=Edit11.Text;                // hostname
        if checkbox1.checked then ADOsp.Parameters[14].Value:=0 else ADOsp.Parameters[14].Value:=1;
        if checkbox2.checked then ADOsp.Parameters[15].Value:=1 else ADOsp.Parameters[15].Value:=0;
        if checkbox3.checked then ADOsp.Parameters[16].Value:=1 else ADOsp.Parameters[16].Value:=0;
        ADOsp.Parameters[17].value:=obj_id;
        ADOsp.Prepared:=True;
        ADOsp.ExecProc;
        ADOsp.Free;
        ADOQueryObjects.Requery;
        try ADOQueryObjects.Locate('obj_id',obj_id,[]); except; end;
     end;
  end;End;Procedure TDM.SpisOrg;var ADOsp : TADOStoredProc;
    obj_id : Integer;
    i,pocount      : Integer;
Begin
  if not AccessIsGranted(acs_spis_object) then begin
     MessageDlg(msg_noRights,mtInformation,[mbOk],0);
     exit;
  end;

  if ADOQueryObjects['f_spis']=1 then begin
     MessageDlg('��������� ������ ��� ������',mtInformation,[mbOk],0);
     Exit;
  end;

  obj_id:=ADOQueryObjects['obj_id'];

//  pocount:=GetPOcount(obj_id);
//  if pocount=-1 then begin
//    MessageDlg('������ ����������� ���������� �������������� �� �� ���!',mtError,[mbOk],0);
//    exit;
//  end;
//  if pocount>0 then begin
//    MessageDlg('����� ��������� ���������� ������� �� � ��� ('+inttostr(pocount)+' ������������)!',mtInformation,[mbOk],0);
//    exit;
//  end;

  With SpisForm do begin
     Edit1.Text:='';
     obj_id:=ADOQueryObjects['obj_id'];
     Caption:='�������� ����������';
     if ShowModal=mrOk Then begin
        ADOsp:=TADOStoredProc.Create(nil);
        ADOsp.Connection:=ADOConnection1;
        ADOsp.ProcedureName:=sp_SpisObject;
        For i:=0 to 1 do ADOsp.Parameters.Add;
        ADOsp.Parameters[0].Value:=obj_id;
        ADOsp.Parameters[1].Value:=Edit1.Text;
        ADOsp.ExecProc;
        ADOsp.Free;
        ADOQueryObjects.Requery;
        try ADOQueryObjects.Locate('obj_id',obj_id,[]); except; end;
     end;
  end;
End;

Procedure TDM.MoveOrgDialog;
Begin
  MoveObjectForm.ShowModal;
End;

end.

