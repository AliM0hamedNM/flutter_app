<?php
session_start();
//error_reporting(0);
include('doctor/includes/dbconnection.php');
    if(isset($_POST['submit']))
  {
 $name=$_POST['name'];
$mobnum=$_POST['phone'];
 $email=$_POST['email'];
 $appdate=$_POST['date'];
 $aaptime=$_POST['time'];
 $specialization=$_POST['specialization'];
  $doctorlist=$_POST['doctorlist'];
 $message=$_POST['message'];
 $aptnumber=mt_rand(100000000, 999999999);
 $cdate=date('Y-m-d');

if($appdate<=$cdate){
       echo '<script>alert("Appointment date must be greater than todays date")</script>';
} else {
$sql="insert into tblappointment(AppointmentNumber,Name,MobileNumber,Email,AppointmentDate,AppointmentTime,Specialization,Doctor,Message)values(:aptnumber,:name,:mobnum,:email,:appdate,:aaptime,:specialization,:doctorlist,:message)";
$query=$dbh->prepare($sql);
$query->bindParam(':aptnumber',$aptnumber,PDO::PARAM_STR);
$query->bindParam(':name',$name,PDO::PARAM_STR);
$query->bindParam(':mobnum',$mobnum,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':appdate',$appdate,PDO::PARAM_STR);
$query->bindParam(':aaptime',$aaptime,PDO::PARAM_STR);
$query->bindParam(':specialization',$specialization,PDO::PARAM_STR);
$query->bindParam(':doctorlist',$doctorlist,PDO::PARAM_STR);
$query->bindParam(':message',$message,PDO::PARAM_STR);

 $query->execute();
   $LastInsertId=$dbh->lastInsertId();
   if ($LastInsertId>0) {
    echo '<script>alert("Your Appointment Request Has Been Send. We Will Contact You Soon")</script>';
echo "<script>window.location.href ='index.php'</script>";
  }
  else
    {
         echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }
}
}
?>
<!doctype html>
<html lang="en">
    <head>
        <title>Doctor Appointment Management System || Home Page</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/owl.carousel.min.css" rel="stylesheet">

        <link href="css/owl.theme.default.min.css" rel="stylesheet">

        <link href="css/templatemo-medic-care.css" rel="stylesheet">



<!-- ssssssssssssss -->
        <link rel="stylesheet" type="text/css" href="Homestyle.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- ddddddddddddddddddddd-- -->



        <script>
function getdoctors(val) {
  //  alert(val);
$.ajax({

type: "POST",
url: "get_doctors.php",
data:'sp_id='+val,
success: function(data){
$("#doctorlist").html(data);
}
});
}
</script>
<style>
    #container{
    display: flex;
    /* background-color: #1fb9ec; */
    align-content:center;
    justify-content:center;
  }
 #container div {
    background-color: #247CFF;
       align-items: center;
       margin:20px;
       width: 100%;
       color:white;
       border: 2px solid #1fb9ec;  
       border-radius: 20px; 
       
 }
 #container span {
    background-color: ;
       align-items: center;
       margin:20px;
       width: 100%;
       color:white;
       /* border: 2px solid #1fb9ec;  
       border-radius: 2px;  */
       
 }
 .doc_link {
  padding: 10px;
  text-decoration: none;
  color: white;
  margin-left: -12px;
}
.doc_link:hover {
  color: white;
}









/* /////////////////////////////////////////////////////////////////// */



.buttonn {
  position: relative;
  transition: all 0.3s ease-in-out;
  box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
  padding-block: 0.5rem;
  padding-inline: 1.25rem;
  background-color: rgb(0 107 179);
  border-radius: 9999px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #ffff;
  gap: 10px;
  font-weight: bold;
  border: 3px solid #ffffff4d;
  outline: none;
  overflow: hidden;
  font-size: 15px;
}

.icon {
  width: 24px;
  height: 24px;
  transition: all 0.3s ease-in-out;
}

.buttonn:hover {
  transform: scale(1.10);
  border-color: #fff9;
}

.buttonn:hover .icon {
  transform: translate(4px);
}

.buttonn:hover::before {
  animation: shine 1.5s ease-out infinite;
}

.buttonn::before {
  content: "";
  position: absolute;
  width: 100px;
  height: 100%;
  background-image: linear-gradient(
    120deg,
    rgba(255, 255, 255, 0) 30%,
    rgba(255, 255, 255, 0.8),
    rgba(255, 255, 255, 0) 70%
  );
  top: 0;
  left: -100px;
  opacity: 0.6;
}

@keyframes shine {
  0% {
    left: -100px;
  }

  60% {
    left: 100%;
  }

  to {
    left: 100%;
  }
}
</style>
    </head>
    
    <body id="top">
    
        <main>

            <?php include_once('includes/header.php');?>

            <section class="hero" id="hero">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <div id="myCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="images/slider/portrait-successful-mid-adult-doctor-with-crossed-arms.jpg" class="img-fluid" alt="">
                                        
                                    </div>

                                    <div class="carousel-item">
                                        <img src="images/slider/young-asian-female-dentist-white-coat-posing-clinic-equipment.jpg" class="img-fluid" alt="">
                                    </div>

                                    <div class="carousel-item">
                                        <img src="images/slider/doctor-s-hand-holding-stethoscope-closeup.jpg" class="img-fluid" alt="">
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </section>

            <section class="section-padding" id="about">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-6 col-12">
                            <?php
$sql="SELECT * from tblpage where PageType='aboutus'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                            <h2 class="mb-lg-3 mb-3"><?php  echo htmlentities($row->PageTitle);?></h2>

                            <p><?php  echo ($row->PageDescription);?>.</p>

                           <?php $cnt=$cnt+1;}} ?>
                        </div>

                        <div class="col-lg-4 col-md-5 col-12 mx-auto">
                            <div class="featured-circle bg-white shadow-lg d-flex justify-content-center align-items-center">
                                <p class="featured-text"><span class="featured-number">13</span> Years<br> of Experiences</p>
                            </div>
                        </div>

                    </div>
                </div>
            </section>











<!-- kjkkkkkkkkkkkkkkkk -->


<!-- <center>
<p class="docheading">Select The Category of Doctors</p>
<table>
    <tr>
        <td><a href="#">aaaaaaaaaaa</a></td>
        .<td><a href="#">aaaaaaaaaaa</a></td>
        <td><a href="#">aaaaaaaaaaa</a></td>
    </tr>
</table>

</center> -->




            <center style="background-color: white;padding-bottom: 100px;">
    <p class="docheading">Select The Category of Doctors</p>

    <br>
    <br>


    <div id="container" >
<a href="./Card Slider/Cards/Doctor-1/index.php"><button class="buttonn" style="margin-left:39px;">
  Obstetrics and Gynecology
 </button></a>
 <a href="./Card Slider/Cards/Doctor-2/index.php"><button class="buttonn" style="    margin-left: 29px;">
 Internal Medicine - Cardiology
 </button></a>
 <a href="./Card Slider/Cards/Doctor-3/index.php"><button class="buttonn" style="    margin-left: 29px;">
 medical diagnostic radiology -board
 </button></a>
 <a href="./Card Slider/Cards/Doctor-4/index.php"><button class="buttonn" style="    margin-left: 29px;">
 Dentistry
 </button></a>
 <a href="./Card Slider/Cards/Doctor-5/index.php"><button class="buttonn" style="    margin-left: 29px;">
 Cancer Specialty
 </button></a>
  </div>



  <div id="container" style="margin-top:40px">
<a href="./Card Slider/Cards/Doctor-6/index.php"><button class="buttonn" style="margin-left:39px;">
Kidney Surgery - Urology
  </button></a>
 <a href="./Card Slider/Cards/Doctor-7/index.php"><button class="buttonn" style="    margin-left: 29px;">
 Brain Surgery - Spine - Neurospinal
    
 </button></a>
 <a href="./Card Slider/Cards/Doctor-8/index.php"><button class="buttonn" style="    margin-left: 29px;">
 Dental Treatment
 </button></a>
 <a href="./Card Slider/Cards/Doctor-9/index.php"><button class="buttonn" style="    margin-left: 29px;">
 Pediatric Medicine
 </button></a>
 <a href="./Card Slider/Cards/Doctor-10/index.php"><button class="buttonn" style="    margin-left: 29px;">
 Rheumatology Board
 </button></a>
  </div>



  <div id="container" style="margin-top:40px">
<a href="./Card Slider/Cards/Doctor-11/index.php"><button class="buttonn" style="margin-left:39px;">
Dermatology - Cosmetic -  Laser
  </button></a>
 
  </div>






  <br> 






    <!-- <div id="container">
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-1/index.php">Obstetrics and Gynecology</a></div>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-2/index.php">Internal Medicine - Cardiology</a></div>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-3/index.php">medical diagnostic radiology -board</a></div>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-4/index.php">Dentistry</a></div>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-5/index.php">Cancer Specialty</a></div>
    </div>
    <div id="container">
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-6/index.php">Kidney Surgery - Urology</a></div>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-7/index.php">Brain Surgery - Spine - Neurospinal</a></div>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-8/index.php">Dental Treatment</a></div>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-9/index.php">Pediatric Medicine</a></div>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-10/index.php">Rheumatology Board</a></div>
    </div>
    &nbsp;
    <div id="container">
      <span></span>
      <span></span>
      <div><a class="doc_link" href="./Card Slider/Cards/Doctor-11/index.php"><span>Dermatology - Cosmetic -  Laser</span></a></div>
      <span></span>
      <span></span>
    </div> -->
   
  </center>
            <!-- <section class="gallery">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-6 ps-0">
                            <img src="images/gallery/medium-shot-man-getting-vaccine.jpg" class="img-fluid galleryImage" alt="get a vaccine" title="get a vaccine for yourself">
                        </div>

                        <div class="col-lg-6 col-6 pe-0">
                            <img src="images/gallery/female-doctor-with-presenting-hand-gesture.jpg" class="img-fluid galleryImage" alt="wear a mask" title="wear a mask to protect yourself">
                        </div>

                    </div>
                </div>
            </section> -->


            

            

            <section class="section-padding" id="booking">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-lg-8 col-12 mx-auto">
                            <div class="booking-form">
                                
                                <h2 class="text-center mb-lg-3 mb-2">Book an appointment</h2>
                            
                                <form role="form" method="post">
                                    <div class="row">
                                        <div class="col-lg-6 col-12">
                                            <input type="text" name="name" id="name" class="form-control" placeholder="Full name" required='true'>
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required='true'>
                                        </div>
                                   
                                        <div class="col-lg-6 col-12">
                                            <input type="telephone" name="phone" id="phone" class="form-control" placeholder="Enter Phone Number" maxlength="10">
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <input type="date" name="date" id="date" value="" class="form-control">
                                            
                                        </div>

                                            <div class="col-lg-6 col-12">
                                            <input type="time" name="time" id="time" value="" class="form-control">
                                            
                                        </div>

    <div class="col-lg-6 col-12">
<select onChange="getdoctors(this.value);"  name="specialization" id="specialization" class="form-control" required>
<option value="">Select specialization</option>
<!--- Fetching States--->
<?php
$sql="SELECT * FROM tblspecialization";
$stmt=$dbh->query($sql);
$stmt->setFetchMode(PDO::FETCH_ASSOC);
while($row =$stmt->fetch()) { 
  ?>
<option value="<?php echo $row['ID'];?>"><?php echo $row['Specialization'];?></option>
<?php }?>
</select>
</div>


    <div class="col-lg-6 col-12">
<select name="doctorlist" id="doctorlist" class="form-control">
<option value="">Select Doctor</option>
</select>
</div>



                                        <div class="col-12">
                                            <textarea class="form-control" rows="5" id="message" name="message" placeholder="Additional Message"></textarea>
                                        </div>

                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            <button type="submit" class="form-control" name="submit" id="submit-button">Book Now</button>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </main>
        <?php include_once('includes/footer.php');?>
        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/scrollspy.min.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>