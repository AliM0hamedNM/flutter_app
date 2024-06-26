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
      <div class="swiper-wrapper content">

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
$sql = "select ID,Email from tbldoctor where ID=1";
$result = mysqli_query($conn,$sql);

if (mysqli_num_rows($result) > 0) 
{
    while($row = mysqli_fetch_assoc($result)){
        $id=$row["ID"];
        echo "" .$row["Email"]."<br>";
    }

}
  else {
        echo "0 results";
    }


    mysqli_close($conn);
?></span>





              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
            </div>
          </div>
        </div>
        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/small-revolution-remote-jobs-web-developer.jpg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
            </div>
          </div>
        </div>
        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/full-stack-developer-salary.jpg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
            </div>
          </div>
        </div>
        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/web-developer-types.jpeg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
            </div>
          </div>
        </div>
        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/learning-how-to-become-a-web-developer-could-be-the-best-move-you-can-make.jpeg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
            </div>
          </div>
        </div>
        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/main-qimg-f31821a454ac2c4345515be307bfef45-lq.jpg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
            </div>
          </div>
        </div>
        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/male-professional-web-designer-1024.jpg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
            </div>
          </div>
        </div>
        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/NTI5NzE_yO9RrR6SnCrwhNbe-2173-NOC.jpg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
            </div>
          </div>
        </div>
        <div class="swiper-slide card">
          <div class="card-content">
            <div class="image">
              <img src="img/Office-Worker-Girl.jpg" alt="">
            </div>

            <div class="social-media">
              <i class="fa-brands fa-facebook"></i>
              <i class="fa-brands fa-twitter"></i>
              <i class="fa-brands fa-github"></i>
            </div>

            <div class="name-profession">
              <span class="name">Someone Name</span>
              <span class="profession">Web Developer</span>
            </div>

            <div class="rating">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>

            <div class="button">
              <button class="aboutMe">About Me</button>
              <button class="hireMe">Hire Me</button>
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