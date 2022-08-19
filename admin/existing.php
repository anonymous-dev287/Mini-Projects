

<?php





$conn = mysqli_connect("localhost","root","");
$db = mysqli_select_db('fk', $conn);

if(isset($_REQUEST['rollno'])){

$rollno = $_REQUEST['rollno'];	
$sql = "select roll_no from dcom where roll_no=$rollno";
$run = mysqli_query($sql);

//now resourse id is returned just convert it to array
$row=mysqli_fetch_array($run);
$check=$row['roll_no'];
}


else if (isset($_REQUEST['email'])) {
	

$email = $_REQUEST['email'];	

$sql = "select Email from dcom";
$run2 = mysqli_query($sql);
$check="";
//now resourse id is returned just convert it to array
while ($row=mysqli_fetch_array($run2)){

										if($email==$row['Email']){
																	$check=1;break;
																}

									}
}

if ($check!="") { 	echo "1";	}




?>