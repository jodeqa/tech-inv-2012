unit queryes;

interface
Const
sql_GetLoginInfo    = 'SELECT RTRIM(UPPER(SUSER_SNAME())) as UserName, @@SERVERNAME as ServerName, @@VERSION as ServerVersion, '+
                      'HOST_NAME() as HostName ,HOST_ID() as IP ,DB_NAME() as DBname';
sql_GetFilialInfo   = 'SELECT fil_id, fil_code, fil_name from ti_filials where active=1';
sql_GetFilials      = 'SELECT * FROM ti_filials order by fil_id';
sql_getrights       = 'select * from ti_Users where uname=:uname';


implementation

end.
