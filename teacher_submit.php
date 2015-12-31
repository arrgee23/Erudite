<?php
error_reporting(E_ALL ^ E_DEPRECATED);
$link=mysql_connect("localhost","root","")or die("can not connect");
		mysql_select_db("erudite",$link) or die("can not select database");
	$chk=$_POST['chk'];
	
	
		for ($i=0; $i<sizeof(chk);$i++){
		 	$query= "INSERT INTO admin (name) values('".$chk[$i]."')";
			mysql_query($query,$link)or die(mysql_error());
			}
		mysql_close($link);
		echo "<script>alert('Data stored successfully!')</script>";
		

?>