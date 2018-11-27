
$x = 0

Set-location C:\

while ($x -eq 0){

    $yes = read-host 'Do you want to exit? (y or n)'
	if($yes -eq 'y'){
		$x = 1}

	else{ 
		$serverlist = Import-Csv serverlist.csv

	foreach($serverlist in $servers.name){

   Start-job -scriptblock {test-connection -Computername $serverlist -content} -
}