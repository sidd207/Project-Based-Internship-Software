<html>
<head>
</head>
<body style="margin:0;background-repeat:no-repeat;background-size:150% 155%;" >

</body>
</html>
<?php
session_start();
 
    include ('index_header_student.php'); 
		echo '<div style="" id="head">';
if(isset($_SESSION["status"]) and $_SESSION["status"]=="LoggedIn")

echo ".";
  if(1)
  {
/*Connect to mysql server*/
include('db_conn.php');
/*Create query*/
$qry = "SELECT DISTINCT(P.PBI_ID),P.TOPIC_NAME,P.DESCRIPTION,F.FNAME FROM  PBI_UPLOAD P, FACULTY F  WHERE P.FAC_ID=F.FACULTY_ID";
/*Execute query*/
$result = mysqli_query($link,$qry);


/*Show the rows in the fetched resultset one by one*/
while ($row = mysqli_fetch_assoc($result))
{
	echo '
	<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
		
	
	<div class="wrapper row3">
  <main class="container clear"> 

		
<ul>
<li> PBI ID: '.$row['PBI_ID'].'</li>
<li> Topic : '.$row['TOPIC_NAME'].'</li>
<li> Faculty: '.$row['FNAME'].'</li>
<li> Description: '.$row['DESCRIPTION'].'</li>
</ul>
			
		
			</div>
			
			</div>';
}


include('footer.php');

 }
 else
  { 

	exit();
	}
?>
