<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Card Slider HTML CSS | Codehal</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

  <section>
    <div class="swiper mySwiper container">
      <div class="swiper-wrapper content" style="margin-left: 326px;">

        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/1.jpg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name"><?php
include('./dbconnection.php');
$sql = "select ID,FullName,MobileNumber,Specialization from tbldoctor where ID=1";

$result = mysqli_query($conn,$sql);

if (mysqli_num_rows($result) > 0) 
{
    while($row = mysqli_fetch_assoc($result)){
        $id=$row["ID"];
        echo "<br>";
        // echo "" .$row["FullName"]."<br>";
        // echo "" .$row["MobileNumber"]."<br>";
        // echo "" .$row["Specialization"]."<br>";
        echo "<tr>";
            echo "<td><a href='#' style='font-size: 15px;text-decoration: none;color: black;' >" .$row["FullName"] . "</a></td>";
            echo "<br>";
            echo "<td><a href='#' style='font-size: 15px;text-decoration: none;color: black;margin-left: 63px;' >" .$row["MobileNumber"] . "</a></td>";
 
            echo "<td><a href='#' style='font-size: 15px;text-decoration: none;color: black;' >" .$row["Specialization"] . "</a></td>";
            echo "</tr>";
    }

}
  else {
        echo "0 results";
    }


    mysqli_close($conn);
?>








<?php
include('./dbconnection.php');
$sql = "SELECT ID,Specialization FROM tblspecialization WHERE ID=1;";

$result = mysqli_query($conn,$sql);

if (mysqli_num_rows($result) > 0) 
{
    while($row = mysqli_fetch_assoc($result)){
        $id=$row["ID"];
        echo "<br>";
        // echo "" .$row["FullName"]."<br>";
        // echo "" .$row["MobileNumber"]."<br>";
        // echo "" .$row["Specialization"]."<br>";
        echo "<tr>";
            
            echo "<td><a href='#' style='font-size: 15px;text-decoration: none;color: black;' >" .$row["Specialization"] . "</a></td>";
            echo "</tr>";
    }

}
  else {
        echo "0 results";
    }


    mysqli_close($conn);
?>















</span>





              <span class="profession"></span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">Book now</button>
              <!-- <button class="hireMe">Hire Me</button> -->
            </div>
          </div>
        </div>
         

      </div>
    </div>

    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
  </section>

  <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
  <script src="js/main.js"></script>
</body>

</html>