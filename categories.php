<?php
include("db.php");
?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>SELL</title>
  </head>
  <body>
    <!-- Image and text -->
  <div class="container-fluid">
    <nav class="navbar navbar-dark ">
      <a class="navbar-brand" href="index.html">
        <img src="assets/images/logo.png" width="70" height="50" class="" alt="">


        <b>STATIONARY</b>
      </a>
    </nav>
  </div>
      
    <h3 class="text-center mt-1"><u>POST AD</u></h3>
    <div class="container mt-3 border">
    

   <form  action="#" method="POST">

  <div class="form-group mt-3">
    <label for="exampleFormControlSelect1">Category:</label>
    <select class="form-control" id="example"  name="category">
       <option><selected>Choose..</selected></option>
      <option>Books</option>
      <option>Videos</option>
      <option>Stationary</option>
      <option>Notes</option>
      <option>Others</option>
    </select>
  </div>
  <div class="custom-control custom-radio custom-control-inline">
  <input type="radio" id="customRadioInline1" name="purpose" value="SELL" class="custom-control-input">
  <label class="custom-control-label" for="customRadioInline1">SELL</label>
</div>
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" id="customRadioInline2" name="purpose" value="RENT" class="custom-control-input">
  <label class="custom-control-label" for="customRadioInline2">RENT</label>
</div>
  
 <!--  <div class="form-group mt-3">
    <label for="exampleFormControlInput1">Email address</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div> -->
   <div class="form-group mt-2">
    <label for="exampleFormControlTextarea1">Add Title*</label>
    <textarea class="form-control" placeholder="Mention the key features of your item (e.g. brand, model, age, type)" id="title" name="title" rows="1"  ></textarea>
  </div>
   <div class="form-group">
    <label for="exampleFormControlTextarea1">Description*</label>
    <textarea class="form-control" placeholder="Include condition, features and reason for selling..." id="description" name="description" rows="4"  ></textarea>
  </div>
   <div class="form-group">
    <label for="exampleFormControlTextarea1">Set Price</label>
    <textarea class="form-control mr-3" id="price"  name="price" rows="1" ></textarea>
  </div>
 
  <div class="form-group">
    <label for="exampleFormControlFile1">Select Picture</label>
    <input type="file" class="form-control-file"  name="image" id="image">
  </div>
   <button type="submit"  name="submit" class="btn btn-primary">Submit</button></form>


  


</div>
</div>

<?php
if(isset($_POST['submit'])) {

$category=$_POST['category'];
$purpose=$_POST['purpose'];
$title=$_POST['title'];
$description=$_POST['description'];
$price=$_POST['price'];
$image=$_POST['image'];


$sql = "INSERT INTO  product (`category`, `purpose`, `title`, `description`, `price`, `image`)
VALUES ('$category', '$purpose', '$title' , '$description' ,'$price' , '$image') ";


 echo "$sql";
 
mysqli_query($conn,$sql);
}
 ?>
  <!--  -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>