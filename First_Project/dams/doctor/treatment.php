<?php
session_start();
$number = $_GET["number"];
//error_reporting(0);
include('./includes/dbconnection.php');
    if(isset($_POST['submit']))
  {
 $name=$_POST['name'];
 $name2=$_POST['name2'];


$sql="insert into treatment (patient_id,drug_id) values(:name,:name2)";
$query=$dbh->prepare($sql);
$query->bindParam(':name',$name,PDO::PARAM_INT);
$query->bindParam(':name2',$name2,PDO::PARAM_INT);

 $query->execute();
   $LastInsertId=$dbh->lastInsertId();
   if ($LastInsertId>0) {
    echo '<script>alert("Your Appointment Request Has Been Send. We Will Contact You Soon")</script>';
// echo "<script>window.location.href ='treatment.php'</script>";
  }
  else
    {
         echo '<script>alert("Something Went Wrong. Please try again")</script>';
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

        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <link href="../css/bootstrap-icons.css" rel="stylesheet">

        <link href="../css/owl.carousel.min.css" rel="stylesheet">

        <link href="../css/owl.theme.default.min.css" rel="stylesheet">

        <link href="../css/templatemo-medic-care.css" rel="stylesheet">



<!-- ssssssssssssss -->
        <link rel="stylesheet" type="text/css" href="../Homestyle.css"/>
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
    background-color: #0033cc;
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

</style>
    </head>
    
    <body id="top">
    
        <main>

        <?php

$sql = "SELECT * FROM drugs";
$query = $dbh->prepare($sql);
$query->execute();
$results = $query->fetchAll(PDO::FETCH_OBJ);
?>



            

            <section class="section-padding" id="booking">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-lg-8 col-12 mx-auto">
                            <div class="booking-form">
                                
                                <h2 class="text-center mb-lg-3 mb-2">Add a treatment</h2>
                            
                                <form role="form" method="post">
                                    <div class="row">

                                    <div class="col-lg-6 col-12">
                                            <input type="hidden" type="text" name="name" id="name" class="form-control" placeholder="Full name" value="<?php echo $number ?>" required='true'>
                                        </div>

                                        <div class="col-12">
    <select name="name2" class="form-select" aria-label="Default select example"  id="name2">
  <?php foreach ($results as $appointment): ?>
    <option value="<?php echo $appointment->id; ?>">
      <?php echo $appointment->NAME; ?>
    </option>
  <?php endforeach; ?>
</select>
                                        </div>                                   


                                        <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                            <button type="submit" class="form-control" name="submit" id="submit-button" style="background: #247cff;border-radius: 33px;">ADD</button>
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