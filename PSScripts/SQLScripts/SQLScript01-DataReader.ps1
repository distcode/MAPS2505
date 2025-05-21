
Set-StrictMode -Version latest
$ErrorActionPreference = 'Stop'

try
{
  $myConn = New-Object -TypeName System.Data.SqlClient.SqlConnection
  $myConn.ConnectionString = 'Server=tcp:trgsqlsrv.database.windows.net,1433;Initial Catalog=dbMIP;Persist Security Info=False;User ID=sqladmin;Password=securePa$$w0rd;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;'
  $myConn.Open()
  
  $myComm = New-Object -TypeName System.Data.SqlClient.SqlCommand
  $myComm.CommandText = 'Select * From SalesLT.Customer'
  $myComm.Connection = $myConn
  
  $myDataReader = $myComm.ExecuteReader()
  
  "Fields found: $($myDataReader.FieldCount)"
  
  $i = 0
  
  while ( $myDataReader.Read() )
  {
    "$($myDataReader.Item('Firstname')) $($myDataReader.Item('Lastname')), $($myDataReader.Item('CompanyName'))" 
    $i++
  }
  
  "Records returned: $i"

  '**** FINISHED ****'
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




