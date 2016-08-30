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

        <form class="form-basic" method="post" action="UpdateProfile_faculty.php">

            <div class="form-title-row">
                <h1>Update Profile faculty</h1>
            </div>

   
			 <div class="form-row">
                <label>
                    <span>Full name</span>
                    <input type="text" name="fname">
                </label>
            </div> 
			
		     <div class="form-row">
                <label>
                    <span>Email</span>
                    <input type="text" name="email">
                </label>
            </div> 
            <div class="form-row">
                <label>
                    <span>Department</span>
                    <select name="department">
                        <option>CSE</option>
                        <option>ECE</option>
                        <option>MEC</option>
                    </select>
                </label>
            </div>

			 <div class="form-row">
                <label>
                    <span>Phone number</span>
                    <input type="text" name="phone_number">
                </label>
            </div>
			
			
            <div class="form-row">
                <button type="update" name="update" value="update">Update</button>
            </div>

        </form>

    </div>

</body>
</html>
