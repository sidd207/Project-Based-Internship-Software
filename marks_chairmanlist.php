
<?php
session_start();
  echo'<div style="opacity:0.9;margin:0;border-radius:10px;width:100%;">';
    include 'main_student.php'; 
		echo '<div style="" id="head">';
if(isset($_SESSION["status"]) and $_SESSION["status"]=="LoggedIn")
	
$user=$_SESSION['username'];

echo ".";
  if(1)
  {
/*Connect to mysql server*/
include('db_conn.php');
/*Create query*/
$qry = "SELECT R.RO_NO,R.REPORT_NAME,R.TYPE,R.MARKS FROM REPORT R ";
/*Execute query*/
$result = mysqli_query($link,$qry);


/*Show the rows in the fetched resultset one by one*/
while ($row = mysqli_fetch_assoc($result))
{
	$report_name=$row['REPORT_NAME'];

	echo '
	<br><br><br><br>
   	

		
	
	<div class="wrapper row3">
  <main class="container clear"> 
<ul><li> '.$row['RO_NO'].'</li>
  <ul><li> <a href="design_lab/'.$report_name.'">'.$row['REPORT_NAME'].' </a>   </li>   
   <ul><li>   Type : '.$row['TYPE'].' </li>
   <li>   Marks : '.$row['MARKS'].' </li>
   </ul>
   </ul>

</ul>
			</p>
			</div>
			
			</div><br>';
}

echo ' </table></div>';

include ('footer.php');
 }
 else
  { 

	exit();
	}
?>
