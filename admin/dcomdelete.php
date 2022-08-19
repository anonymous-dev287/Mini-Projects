<?php
// Variables

$User = "root";
$Password = "";
$Database = "fk";
$Host = "localhost";
$sqlDate = date('Y-m-d H:i:s'); 

		// Connect to the server
		mysqli_connect($Host, $User, $Password) or die (mysqli_error()); 
		//Check connectivity
		mysqli_select_db($Database) or die(mysqli_error());
		// Delete data into DB
		
		$del_rec = $_GET['del'];
		
		$query = "DELETE FROM dcom WHERE sid='$del_rec'";
		
		if(mysql_query($query)){
			echo "<script>window.open('dcomview.php?deleted=Record Deleted ','_self')</script>";
		}
		
		
		
		
		
?>
		