
<?php
	session_start();
	$result=$_GET['id'];
	
	if(1) {
		if($result=="Logout"){
			session_unset();
			session_destroy();
			header("Location: index.php");
			die();
		}
		if($result=="UpdateProfile_faculty"){
			include('Update_faculty.php');
		}
		if($result=="ViewProfile_faculty"){
			header("location:ViewProfile_faculty.php");
		}
		
		}
	

?>
