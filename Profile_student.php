<?php
	
	$result=$_GET['id'];
	echo $result;
	if(1) {
		if($result=="Logout"){
			session_start();
			session_unset();
			session_destroy();
			header("Location: index.php");
			die();
		}
		if($result=="UpdateProfile_student"){
			header("location:Update_student.php");
		}
		if($result=="ViewProfile_student")
		{
			header("location:ViewProfile_student.php");
		}
		
		}
	

?>
