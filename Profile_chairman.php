<?php
	session_start();
	$result=$_GET['id'];
	echo $result;
	if(1) {
		if($result=="Logout"){
			session_unset();
			session_destroy();
			header("Location: index.php");
			die();
		}
		if($result=="UpdateProfile_chairman"){
			header("location:Update_chairman.php");
		}
		if($result=="ViewProfile_chairman"){
			header("location:ViewProfile_chairman.php");
		}
		
		}
	
?>