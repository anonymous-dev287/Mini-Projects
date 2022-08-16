<?php

session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !==true)
{
    header("location: login.php");
}


?>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <title></title>
</head>

<body>
  <!-- Image and text -->
  <div class="container-sm">
    <nav class="navbar navbar-light " style="background-color: #e3f2fd;">
      <a class="navbar-brand" href="#">
        <img src="assets/images/logo.png" width="70" height="50" class="" alt="">


        <b>STATIONARY</b>
      </a>


  <!-- <li class="nav-item active"> -->
        <a class= "nav-link"  href="#"  > <img src="https://img.icons8.com/metro/26/000000/guest-male.png"  > <?php echo "Welcome ". $_SESSION['username']?></a>
      <!-- </li> -->
  
      <a class="btn btn-outline-primary" id="login" href="logout.php" role="button"><b>Logout</b></a>
    </nav>


    <nav class="navbar navbar-expand-lg navbar-light bg-light">

      <!-- <a class="navbar-brand" href="#">Navbar</a> -->

      <button class="navbar-toggler-dark" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse-light" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item active">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              All Categories
            </a>

            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Books</a>
              <a class="dropdown-item" href="#">Videos</a>
              <a class="dropdown-item" href="#">Notes</a>
              <a class="dropdown-item" href="#">Query Section</a>
            </div>
          </li>
          <a class="nav-link" href="#">About <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="categories.php"> <img src="https://img.icons8.com/material-outlined/24/000000/camera--v2.png"/>Sell</a>

          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Buy</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Obectives</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact Us</a>
          </li>



        </ul>
      </div>
    </nav>
    <div mt-5 id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="assets/images/carousel1.jpg" class="d-block w-100" alt="Responsive image" width="1146px"
            height="350px">
        </div>
        <div class="carousel-item">
          <img src="assets/images/carousel2.jpg" class="d-block w-100" alt="Responsive image" width="1146px"
            height="350px">
        </div>
        <div class="carousel-item">
          <img src="assets/images\img1.jpg" class="d-block  w-100" alt="third" width="1146px"
            height="350px">
        </div>
        <div class="carousel-item">
          <img src="assets/images\img2.jpg" class="d-block  w-100" alt="third" width="1146px"
            height="350px">
        </div>
      </div>


      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <div class="row mt-5">
      <div class="col-sm-3">
        <div class="card">
          <img src="assets/images/logo.png " class="card-img-top" width="100" height="200" alt="...">
          <div class="card-body">
            <h5 class="card-title">Stationary</h5>

            <a href="stationary.php" class="btn btn-primary">Let's Go</a>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="card">
          <img src="assets/images/img3.jpg" class="card-img-top" width="100" height="200" alt="...">
          <div class="card-body">
            <h5 class="card-title">Books</h5>

            <a href="books.php" class="btn btn-primary " style="float: right">Let's Go</a>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="card">
          <img src="assets/images/img4.jpg" class="card-img-top" width="100" height="200" alt="...">
          <div class="card-body">
            <h5 class="card-title">Videos</h5>

            <a href="vlectures.php" class="btn btn-primary">Let's Go</a>
          </div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="card">
          <img src="assets/images/img5.jpg " class="card-img-top" width="100" height="200" alt="...">
          <div class="card-body">
            <h5 class="card-title">It's Chatting Time</h5>

            <a href="#" class="btn btn-primary">Let's Clear Doubt</a>
          </div>
        </div>
      </div>



      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>

</html>