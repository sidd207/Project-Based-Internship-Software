
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
$qry = "SELECT DISTINCT (S.ROLL_NO), S.SNAME,S.BRANCH,S.EMAIL,S.P_ID FROM STUDENT S ";
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
<li> Name : '.$row['SNAME'].'</li>
<li> Roll No: '.$row['ROLL_NO'].'</li>
<li> Branch: '.$row['BRANCH'].'</li>
<li> Email: '.$row['EMAIL'].'</li>
<li> PBI ID: '.$row['P_ID'].'</li>

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
