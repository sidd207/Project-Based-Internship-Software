<html>
<head>
</head>
<body style="margin:0;background-repeat:no-repeat;background-size:150% 155%;" >

</body>
</html>
<?php
session_start();
 
    include ('index_header.php'); 
		echo '<div style="" id="head">';
if(isset($_SESSION["status"]) and $_SESSION["status"]=="LoggedIn")

echo ".";
  if(1)
  {
/*Connect to mysql server*/
include('db_conn.php');
/*Create query*/
$qry = "SELECT P.TOPIC_NAME,P.DESCRIPTION,F.FNAME FROM  PBI P, FACULTY F  WHERE P.FA_ID=F.FACULTY_ID";
/*Execute query*/
$result = mysqli_query($link,$qry);


/*Show the rows in the fetched resultset one by one*/

	echo '
	<br>	<br>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
	
	<div class="wrapper row3">
  <main class="container clear"> 

		
<p>
<ol>
    <li>Each PBI will fall under one of the groups - ECE, ME, CSE and Interdisciplinary depending on the topic of the PBI.
   </li><br><li> The Internship Board (IB) will classify the PBI group before the mid semester evaluation. For PBI evaluation, three member committees will be constituted to grade the end semester evaluation (final presentation) and the recommendation will be send to IB. The PBI guide of a student will not be a member of the evaluation committee. In case a student’s PBI falls under a group which is going to be evaluated by a committee having his PBI guide, the guide will be replaced by another faculty member/ external expert
</li><br>
    <li>There will be four evaluations during the entire PBI period, first interim, mid semester, second interim and end semester. The guides will award interims, mid-term and end term grades to the academic office as per the format with numeric value as follows:
         </li><br>
   <ul><li>		 Excellent (A): 10</li>
          <li>  Good (B): 8</li>
           <li> Average(C): 6</li>
           <li> Satisfactory (D): 4</li>
            <li>Unsatisfactory (F): 2</li>
</ul>
    <li>The final grading will be awarded by the evaluation committees by weightage average of the interims, mid-term and end-term grades which will be the SPI for the PBI of 16 credits
</li><br>
  <li>  The weightages of interims, mid-term and end-term will be as follows:
      <ul><li>          First Interim by Supervisor(s): 15%
             </li><li>   Mid-term by Supervisor(s): 20%
               </li><li> Second Interim by Supervisor(s): 20%
                </li><li>End term by Supervisor(s): 20%
                </li><li>End term by Evaluation committee: 25%
        </li>
		</ul>
		</li><br>
    <li>The final grade will be sent to academic office duly forwarded by the Chairman, IB.

   </li><br><li>For any discrepancy/ review etc. on PBI grading, Chairman, IB will be authorized to take a decision

    </li><br><li>The grades may be lowered in exceptional cases with reasons to be specified by IB. At this point members opined that the spirit of recognition to the work and encouragement be maintained while awarding the grades. Also, it was suggested by the senate that the PBI reports would be archived.
    </li><br><li>The student is required to submit a progress report to supervisor(s) (internal and/or external) and to the academic office in 15 days interval after starting of project in addition to the reviews mentioned above.
    </li><br><li>Students will be required to submit a copy of the mid semester PBI Report to each member of the evaluation committee before a week from the date of mid-semester evaluation and final project report before one week of the end semester evaluation.
    </li><br><li>The students will be required to submit a hard copy of the project report in the academic office with softcopies to each of the member of evaluation committee
</li></ol>
<br>
<h3>Notes:</h3>
<ol>
    <li> If PBI starts before 29th May and completed before 28th Nov 2014,
       15  days report will be submitted in 15 days interval(trip@iiitdmj.ac.in).</li>
     <li>If PBI starts before 20th May and continued upto 28th Nov 2014, 
       15 days  report will be submitted as per the PBI calender. </li>
    <li> If PBI starts after 20th May, 15 days report will be submitted 
       as per  the PBI calender. </li>
    <li> The period of PBI should be 25 weeks and it will be counted 
       up to 28th  Nov 2014 only.If some one is leaving for external PBI after 20th May,
       he/she has to continue here in IIITDM Jabalpur up to his/her departure 
       along with internal supervisor. </li>
    <li> Interims and midterm reports will be submitted as per the calender.</li>
    <li> Each student is required to submit seprate report. </li>
	</ol>


</p>
			
		
			</div>
			
			</div>';



include('footer.php');

 }
 else
  { 

	exit();
	}
?>
