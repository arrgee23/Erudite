<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "erudite";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}


	$chk=$_POST['chk'];
	for ($i=0; $i<sizeof(chk);$i++){
	 	$sql= "INSERT INTO admin (name) values('".$chk[$i]."')";


	 	if ($conn->query($sql) === TRUE) {
	 	    echo "New record created successfully";
	 	} else {
	 	    echo "Error: " . $sql . "<br>" . $conn->error;
	 	}
	}

	$conn->close();
?>