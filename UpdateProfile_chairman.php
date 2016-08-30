

<?php

if($_POST['update']=='update')
{
	session_start();
	$user=$_SESSION['username'];
	
	if(empty($_POST["fname"])  or empty($_POST["phone_number"]) or empty($_POST["email"]) )
	{	
		echo "<h3><b>all fields are mandatory</h3></b>";
		include("Update_chairman.php");
		$valid = false;
		die();
	}
	$fname = "'".$_POST["fname"]."'";
	$email = "'".$_POST["email"]."'";
	$phone_number = "'".$_POST['phone_number']."'";
	
	include('db_conn.php');	
$query = "UPDATE CHAIRMAN SET CNAME=$fname,  EMAIL=$email, C_P_NUMBER=$phone_number WHERE $user=CH_ID";

	$results = mysqli_query($link,$query);
	
if($results == FALSE) 
	echo mysqli_error($link) . '<br>';
include('index_chairman.php');
}
?>
