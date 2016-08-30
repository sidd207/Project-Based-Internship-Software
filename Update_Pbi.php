

<?php

if($_POST['update']=='update')
{
	session_start();
	$user=$_SESSION['username'];
	
	if(empty($_POST["topic_name"]) or empty($_POST["pbi_id"]) or empty($_POST["description"])  )
	{	
		echo "<h3><b>all fields are mandatory</h3></b>";
		include("Insert_pbi.php");
		$valid = false;
		die();
	}
	$topic_name = "'".$_POST["topic_name"]."'";
	$pbi_id = "'".$_POST["pbi_id"]."'";
	$description = "'".$_POST["description"]."'";

	
	include('db_conn.php');	
$query = "INSERT INTO PBI_UPLOAD (TOPIC_NAME,PBI_ID,DESCRIPTION,FAC_ID) VALUES ($topic_name,$pbi_id,$description, $user)";

	$results = mysqli_query($link,$query);
	
if($results == FALSE) 
	echo mysqli_error($link) . '<br>';
include('index_faculty.php');
}
?>
