
$OU = 'OU=DemoUsers,dc=maps,dc=at'
$pwrd = ConvertTo-SecureString -String 'Pa55w.rd' -AsPlainText -Force


for ( $i = 21 ; $i -le 20000; $i++ ) {

  $GivenName = 'Rudi' + $i.ToString().PadLeft(5,'0')
  $SurName = 'Tester'
  $upn = "$GivenName@maps.at"
  
  New-ADUser -Path $OU `
    -Name "$Givenname $SurName" `
    -GivenName $GivenName `
    -Surname $SurName `
    -AccountPassword $pwrd `
    -Enabled $true `
    -UserPrincipalName $upn `
    -SamAccountName $GivenName
}

$Users = Get-ADUser -Filter * -SearchBase 'ou=demousers,dc=maps,dc=at' -ResultSetSize 5500

foreach ( $user in $Users) {
  Add-ADGroupMember -Identity LocalDetectives -Members $user
}
