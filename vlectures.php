<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="assets/css/stylesheet.css">
    <title>stationary</title>
  </head>
  <body>
    
  <!-- Image and text -->
  <!-- <div class="container"> -->
    <nav class="navbar navbar-dark sticky-top" style="background-color: #8f48c9;">
      <a class="navbar-brand" href="index.html">
        <img src="assets/images/logo.png" width="70" height="50" class="" alt="">
           <b>STATIONARY</b>
      </a>
      <!-- <a class="btn btn-outline-secondary-dark" id="login" href="login.html" role="button"><b>Login</b></a> -->
    </nav>

<div class="container-fluid mt-3">
  <div class="row">

  <?PHP

  $conn = mysqli_connect('localhost','root');
  mysqli_select_db($conn,'mpl');

  // if($con){
  //  echo "connection succussful";
  // }else{
  //  echo "no connection";
  // }


  $query = " SELECT `title`, `image`, `created_at` , `description` FROM `product`WHERE Category='VIDEOS' order by created_at ";

  $queryfire = mysqli_query($conn, $query);

  $num = mysqli_num_rows($queryfire);

  if($num > 0){
    while($product = mysqli_fetch_array($queryfire)){
      ?>
      
    <div class="col-lg-4 col-md-3 col-sm-12 mt-2" >
      
      <form>
        <div class="card">
          <h6 class="card-title bg-info text-white p-2 text-uppercase"> <?php echo
           $product['title'];  ?>   </h6>

          <div class="card-body" >
           
<video width="320" height="240" controls>
  <source src="assets/videos/<?php echo 
           $product['image'];  ?>" type="video/mp4">
  <source src= "assets/videos/<?php echo 
           $product['image'];  ?>" type="video/ogg">
    <source src= "assets/videos/<?php echo 
           $product['image'];  ?>" type="video/webm">
  Your browser does not support the video tag.
</video>
<!-- 
           <h6> &#8377; <?php echo $product['price'];  ?> </h6>  -->

          <!--  <h6 class="badge badge-success"> 4.4 <i class="fa fa-star"> </i> </h6> -->

        <p class="card-text"><small class="text-muted" > Updated on: <?php echo $product['created_at'];  ?></small></p>

        

          </div>
          

        </div>
      </form>

    </div>


  <?php   
    }
  }
  ?>


</div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>