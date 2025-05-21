
New-AzResourceGroup -ResourceGroupName RG-DB-SF -Location 'North Europe'
$cred = New-Object -TypeName pscredential -ArgumentList 'sqladmin',(ConvertTo-SecureString -String 'mapsPa55w.rd' -AsPlainText -Force)
New-AzSqlServer -Location 'North Europe' -SqlAdministratorCredentials $cred -ResourceGroupName rg-db-sf -ServerName sqlsrv-sf -AsJob
New-AzSqlDatabase -ResourceGroupName RG-DB-sf -ServerName sqlsrv-sf -DatabaseName db01 -SampleName AdventureWorksLT -RequestedServiceObjectiveName 'GP_S_Gen5_1' -AsJob
