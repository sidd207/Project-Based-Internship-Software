<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Basic Form</title>

	<link rel="stylesheet" href="assets/demo.css">
	<link rel="stylesheet" href="assets/form-basic.css">

</head>



<body>


    <div class="main-content">

        <!-- You only need this form and the form-basic.css -->

        <form class="form-basic" method="post" action="Update_Pbi.php">

            <div class="form-title-row">
                <h1>Upload PBI</h1>
            </div>

   
			 <div class="form-row">
                <label>
                    <span>TOPIC NAME</span>
                    <input type="text" name="topic_name">
                </label>
            </div> 
			
		
			 <div class="form-row">
                <label>
                    <span>PBI ID</span>
                    <input type="number" name="pbi_id">
                </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Description</span>
                    <textarea name="description"></textarea>
                </label>
            </div>
			
            <div class="form-row">
                <button type="update" name="update" value="update">Upload</button>
            </div>

        </form>

    </div>

</body>
</html>
