<?php
// Variables

$User = "root";
$Password = "";
$Database = "fkdatesheet";
$Host = "localhost";
$sqlDate = date('Y-m-d H:i:s'); 

		// Connect to the server
		$conn = mysqli_connect($Host, $User, $Password) or die (mysqli_error()); 
		//Check connectivity
		mysqli_select_db($conn,$Database) or die(mysqli_error());
		// Delete data into DB
		
		$del_rec = $_GET['del'];
		
		$query = "DELETE FROM dcom WHERE id='$del_rec'";
		
		if(mysqli_query($conn,$query)){
			echo "<script>window.open('dcomdsview.php?deleted=Record Deleted ','_self')</script>";
		}
		
		
		
		
		
?>
		