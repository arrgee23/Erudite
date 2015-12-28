<?php
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
	
	$segid = $_GET["id"];



	
	
	$sql = "SELECT segmentsubject.id,subject.name FROM segmentsubject JOIN subject on subject.id=segmentsubject.subjectId ". "WHERE segmentsubject.segmentId=".$segid;
	//echo $sql;

	
	$result = $conn->query($sql);
	$count=1;
	if ($result->num_rows > 0) {
	    // output data of each row
	    while($row = $result->fetch_assoc()) {
	    	//$var=$row["id"];
	        //echo $var;
	        echo "<input type='checkbox' name='chk[]' value='".$row["id"]."''>".$row["name"]."<br>";
	    	$count=$count+1;
	    }
	} else {
	    echo "0 results";
	}	
	$conn->close();
	
	
	

?>