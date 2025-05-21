
Set-StrictMode -Version latest
$ErrorActionPreference = 'Stop'

try
{
  $myConn = New-Object -TypeName System.Data.SqlClient.SqlConnection
  $myConn.ConnectionString = 'Server=tcp:trgsqlsrv.database.windows.net,1433;Initial Catalog=dbMIP;Persist Security Info=False;User ID=sqladmin;Password=securePa$$w0rd;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;'
  $myConn.Open()
  
  $myQuery = "Select * From SalesLT.Customer Where SalesPerson='adventure-works\jillian0'"
  # myQuery = "Select * From SalesLT.Customer"
  
  $myDataAdapter = New-Object -TypeName System.Data.SqlClient.SqlDataAdapter($myQuery,$myConn)
  $myDataTable = New-Object -TypeName System.Data.DataTable
  
  $rowsAffected = $myDataAdapter.Fill($myDataTable)
  
  "Records returned: $rowsAffected"
  
  "`nCUSTOMERS"
  
  # $myDataTable | Where-Object { $_.salesPerson -eq 'adventure-works\jillian0' } | Format-Table -Property FirstName, LastName,CompanyName, SalesPerson  
  $myDataTable | Sort-Object -Descending CustomerID | Select-Object -first 3 | Format-Table -Property CustomerID,FirstName, LastName,CompanyName, SalesPerson
  
  "`n**** FINISHED ****"
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




