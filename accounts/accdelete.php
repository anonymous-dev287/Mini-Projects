<?php
// Variables

$User = "root";
$Password = "";
$Database = "forum";
$Host = "localhost";
$sqlDate = date('Y-m-d H:i:s'); 

		// Connect to the server
		mysqli_connect($Host, $User, $Password) or die (mysqli_error()); 
		//Check connectivity
		mysqli_select_db($Database) or die(mysqli_error());
		// Delete data into DB
		
		$del_rec = $_GET['del'];
		
		$query = "DELETE FROM user WHERE uid='$del_rec'";
		
		if(mysqli_query($query)){
			echo "<script>window.open('accountpanel.php?deleted=Record Deleted ','_self')</script>";
		}
		
		
		
		
		
?>
		