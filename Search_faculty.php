
<?php
session_start();
  echo'<div style="opacity:0.9;margin:0;border-radius:10px;width:100%;">';
    include 'main_chairman.php'; 
		echo '<div style="" id="head">';
if(isset($_SESSION["status"]) and $_SESSION["status"]=="LoggedIn")
	
$user=$_SESSION['username'];

echo ".";
  if(1)
  {
/*Connect to mysql server*/
include('db_conn.php');
/*Create query*/
$qry = "SELECT DISTINCT (
P.PBI_ID
), F.FNAME, F.FACULTY_ID, F.DEPARTMENT, F.EMAIL, P.TOPIC_NAME
FROM FACULTY F, PBI P
WHERE F.FACULTY_ID = P.FA_ID
LIMIT 0 , 30";
/*Execute query*/
$result = mysqli_query($link,$qry);


/*Show the rows in the fetched resultset one by one*/
while ($row=mysqli_fetch_assoc($result))
{
	echo '
	
	  		<br><br><br><br>
   	

		
	
	<div class="wrapper row3">
  <main class="container clear"> 
	<p style="margin-left:50px">
<ul>
<li> Name : '.$row['FNAME'].'</li>
<li> Faculty ID : '.$row['FACULTY_ID'].'</li>
<li> Department: '.$row['DEPARTMENT'].'</li>
<li> PBI ID: '.$row['PBI_ID'].'</li>
<li> Email: '.$row['EMAIL'].'</li>
<li> Topic: '.$row['TOPIC_NAME'].'</li>

</ul>
			</p>
			</div>
			
			</div>';
}

echo ' </table></div>';
include 'footer.php';
 }
 else
  { 

	exit();
	}
?>
