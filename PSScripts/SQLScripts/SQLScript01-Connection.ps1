
Set-StrictMode -Version latest
$ErrorActionPreference = 'Stop'

try
{
  $myConn = New-Object -TypeName System.Data.SqlClient.SqlConnection
  $myConn.ConnectionString = 'Server=tcp:trgsqlsrv.database.windows.net,1433;Initial Catalog=dbMIP;Persist Security Info=False;User ID=sqladmin;Password=securePa$$w0rd;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;'
  $myConn.Open()
  
  $myConn.State

}
catch
{
  "Error was $_"
  $line = $_.InvocationInfo.ScriptLineNumber
  "Error was in Line $line"
}
finally
{
  $myConn.Close()

}




