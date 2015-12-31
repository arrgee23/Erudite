
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" language="javascript">

function isNumberKey(evt) {
  var charCode = (evt.which) ? evt.which : event.keyCode
  if (charCode > 31 && (charCode < 48 || charCode > 57)) { return false; }
  return true;
}

function checkid(str)
{	if (str=="")
  	{	document.getElementById("subject").innerHTML="";
  		 return;
  	} 
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
			document.getElementById("subject").innerHTML=xmlhttp.responseText;
				//document.getElementById("email").value=xmlhttp.responseText;
			}
		  }
	xmlhttp.open("GET","getSubjectFromSegmentId.php?id="+str,true);
	xmlhttp.send();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tutor's Corner</title>
<meta name="keywords" content="free css templates, education, school, college, university" />
<meta name="description" content="Education template is for academic related websites" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body><div id="content"></div>


<div id="templatemo_content_wrapper">
      <h2 style="margin-left:20px;">Tutors Corner</h2>
       <div id="templatemo_content_wrapper_about">
           <div class="message">
           </div>
         <!--<h2>Dynamic Pages................</h2>-->
                 <form action="teacher_submit.php" method="post" onsubmit="return validate_terms();">
                    <table width="529" height="469" border="0" class="registration-table">
                        <tr>
                            <td width="210" class="label">Full Name »</td>
                            <td width="309"><input type="text" name="tname" class="text-box" required="required" /></td>
                        </tr>
                        <tr>
                            <td class="label">Contact no. »</td>
                            <td><input type="text" name="cno" class="text-box" required="required" onkeypress="return isNumberKey(event);" /> </td>
                        </tr>
                         <tr>
                            <td class="label">Date of Birth »</td>
                            <td><input type="text" name="dob" id="datepicker" class="text-box" required="required" /> </td>
                        </tr>
                        <tr>
                            <td class="label">Gender »</td>
                            <td class="label">Male<input type="radio" name="gender" value="male" checked="checked" />
                            Female<input type="radio" name="gender" value="female"/> </td>
                        </tr>
                          <tr>
                            <td class="label">Tutor Address »</td>
                            <td><textarea name="address" cols="22" rows="5" ></textarea> </td>
                        </tr>
                        <tr>
                            <td class="label">Pin »</td>
                            <td><input type="text" name="pin" class="text-box" onkeypress="return isNumberKey(event);" /> </td>
                        </tr>
                         <tr>
                            <td class="label">Email id »</td>
                            <td><input type="email" name="email" class="text-box" required="required" /> </td>
                        </tr>
                        
                        <tr>
                            <td class="label">Subject Category »</td>
                           
                                <td>
	                                <select name="category" onchange="checkid(this.value);">
	                               
	                                <!-- <option value="3">Class VII - X</option> -->

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


		                                $sql = "select * from segment";


		                                $result = $conn->query($sql);
		                                $one = "<option value='";
		                                $three = "'>";
		                                $five = "</option>";

		                                if ($result->num_rows > 0) {
		                                    // output data of each row
		                                    while($row = $result->fetch_assoc()) {
		                                    	$two=$row["id"];
		                                    	$four=$row["name"];

		                                        echo $one.$two.$three.$four.$five;
		                                    }
		                                } else {
		                                    echo "0 results";
		                                }	
		                                $conn->close();



	                                ?>
	                                </select>
                            	</td>
                        </tr>
                       
                        <tr>
                            <td class="label">Subjects »</td>
                            <td id="subject" class="label"><!--<input type="text" name="subject" class="text-box" required="required" />--> </td>
                        </tr>
                        
                        <tr>
                            <td class="label">Qualification Details »</td>
                            <td><textarea name="qualify" cols="22" rows="5" ></textarea> </td>
                        </tr>
                        

                        <tr>
                            <td class="label">Teaching Experience »</td>
                            <td><input type="text" name="teaching" class="text-box" required="required" /> </td>
                        </tr>
                         <tr>
                            <td class="label">Visiting Areas »</td>
                            <td><textarea name="visit" cols="22" rows="5" ></textarea> </td>
                        </tr>
                        <tr>
                        <td class="label" colspan="2">*Kindly send your updated CV with latest 
                        photograph to complete enrollment process at foobar@gmail.com
                        </td>
                        </tr>
                        <tr class="label"><td colspan="4" align="center">
                        <input type="submit" name="submit" id="submit" value="SUBMIT"  style="width:130px; height:40px; float:left; margin-left:205px;"/></td>				
                        </tr>
                    </table>                   
                    </form>       
       </div>
      
</div>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script>
  $(function() {
    $( "#datepicker" ).datepicker({ dateFormat: 'yy-mm-dd'});
  });
  </script>
  
</body>
</html>