
Set-StrictMode -Version latest
$ErrorActionPreference = 'Stop'

try
{
  $myConn = New-Object -TypeName System.Data.SqlClient.SqlConnection
  $myConn.ConnectionString = 'Server=tcp:trgsqlsrv.database.windows.net,1433;Initial Catalog=dbMIP;Persist Security Info=False;User ID=sqladmin;Password=securePa$$w0rd;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;'
  $myConn.Open()
  
  $myQuery = "Select * From SalesLT.Customer Where CustomerID=30119"
  
  $myDataAdapter = New-Object -TypeName System.Data.SqlClient.SqlDataAdapter($myQuery,$myConn)
  $mySqlBuilder = New-Object -TypeName System.Data.SqlClient.SqlCommandBuilder($myDataAdapter)
  $myDataTable = New-Object -TypeName System.Data.DataTable
  $rowsAffected = $myDataAdapter.Fill($myDataTable)
  "Records returned: $rowsAffected"
  
  $myDataTable | Format-Table -Property customerID,FirstName,LastName,SalesPerson
  
  $myDatatable.rows[0].SalesPerson = 'adventure-works\jillian0'
  
  $myDataAdapter.Update($myDataTable)  
  
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




