<?php
	//echo $_GET['chk'];
	$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "erudite";

		// Create connection
		$conn = new mysqli($servername, $username, $password,$dbname);

		// Check connection
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		} 
		/*$name
		$contact
		$dob
		$gender
		$address
		$pin
		$email*/
		$segment= $_POST['category'];
		$subject=$_POST['chk']
		/*$qualification
		$experience
		$covering_area*/

		$sql = "INSERT INTO teachersegmentsubject (id,)
	VALUES ('John', 'Doe', 'john@example.com')";

	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();
?>