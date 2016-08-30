<?php

$username=$_POST['username']; // Mysql username
$password=$_POST['password']; // Mysql password

	if(empty($_POST["username"])  or empty($_POST["password"]) )
	{	
		echo "<center><h3><b>all fields are mandatory</h3></b></centers>";
		include("login.html");
		$valid = false;
		die();
	}
include('db_conn.php');

$sql="SELECT * FROM LOGIN_PBI WHERE USER_ID='$username' AND PASSWORD='$password' ";
$result=mysqli_query($link,$sql);

// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row

if($count==1){

// Register $myusername, $mypassword and redirect to file "login_success.php"

session_start();
$_SESSION["status"]="LoggedIn";
$_SESSION["username"]=$username;
$row = mysqli_fetch_assoc($result);

if($row['TYPE']=='FACULTY'){
 header("location:login_success_faculty.php");
}
if($row['TYPE']=='CHAIRMAN'){
 header("location:login_success_chairman.php");
}
if($row['TYPE']=='STUDENT')
 header("location:login_success_student.php");

}
else {
echo "<center><b>Wrong Username or Password</b></center>";
 include('login.html');
}
?>

?>
