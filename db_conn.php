<?php
	$link = mysqli_connect('dbms.iiitdmj.ac.in','2013208','pod2013208');
	if(!$link)
		die('Failed to connect to server: ' . mysqli_error($link)); 
	$db = mysqli_select_db($link,'test_2013208');
	if(!$db)
	{ 
		die("Unable to select database"); 
	}
?>
