<html>
<head>
</head>
<body style="margin:0;background-repeat:no-repeat;background-size:150% 155%;" >
</body>
</html>
<?php
session_start();
  echo'<div style="opacity:0.9;margin:0;border-radius:10px;width:100%;">';
    include 'main_faculty.php'; 
		echo '<div style="" id="head">';
if(isset($_SESSION["status"]) and $_SESSION["status"]=="LoggedIn")
	
$user=$_SESSION['username'];

echo ".";
  if(1)
  {
/*Connect to mysql server*/
include('db_conn.php');
/*Create query*/
$qry = "SELECT F.FNAME,F.FACULTY_ID,F.DEPARTMENT,F.EMAIL,F.F_P_NUMBER FROM FACULTY F  WHERE $user=F.FACULTY_ID";
/*Execute query*/
$result = mysqli_query($link,$qry);


/*Show the rows in the fetched resultset one by one*/
while ($row=mysqli_fetch_assoc($result))
{
	echo '
		<br><br><br><br>
   	

		
	
	<div class="wrapper row3">
  <main class="container clear"> 
<ul>
<li> Name : '.$row['FNAME'].'</li>
<li> Faculty ID: '.$row['FACULTY_ID'].'</li>
<li> Department: '.$row['DEPARTMENT'].'</li>
<li> Email: '.$row['EMAIL'].'</li>
<li> Phone number: '.$row['F_P_NUMBER'].'</li>

</ul>
			</p>
			</div>
			
			</div>';
}

echo ' </div>';
include 'footer.php';
 }
 else
  { 

	exit();
	}
?>
