<?php
	session_start();
	$result=$_GET['id'];
	echo $result;
	if(1) {
		if($result=="student_list")
		{
			header("Location: Search_student.php");
		}
		if($result=="faculty_list"){
			header("location: Search_faculty.php");
		}
		if($result=="pbi_list.php"){
			header("location:  Search_pbi.php");
		}
		
		}
	
?>