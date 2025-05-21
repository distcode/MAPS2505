
Set-StrictMode -Version latest
$ErrorActionPreference = 'Stop'

try
{
  $myConn = New-Object -TypeName System.Data.SqlClient.SqlConnection
  $myConn.ConnectionString = 'Server=tcp:trgsqlsrv.database.windows.net,1433;Initial Catalog=dbMIP;Persist Security Info=False;User ID=sqladmin;Password=securePa$$w0rd;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;'
  $myConn.Open()
  
  $myQuery = "Select * From SalesLT.Customer Where SalesPerson='adventure-works\jillian0'"
  
  $myDataAdapter = New-Object -TypeName System.Data.SqlClient.SqlDataAdapter($myQuery,$myConn)
  $mySqlBuilder = New-Object -TypeName System.Data.SqlClient.SqlCommandBuilder($myDataAdapter)
  $myDataTable = New-Object -TypeName System.Data.DataTable
  $rowsAffected = $myDataAdapter.Fill($myDataTable)
  "Records returned: $rowsAffected"
  
  $myDataRow = $myDataTable.NewRow()
  $myDataRow.CustomerID = 30119
  $myDataRow.FirstName = 'Venti'
  $myDataRow.LastName = 'Lator'
  $myDataRow.NameStyle = $false
  $myDataRow.PasswordHash = 'anyHash'
  $myDataRow.PasswordSalt = 'anySalt'
  $myDataRow.RowGuid = (New-Guid).Guid.tostring()
 
  $myDataTable.Rows.Add($myDataRow)
  
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




