<?php
session_start();
//error_reporting(0);
include('doctor/includes/dbconnection.php');

$number = $_GET["number"]; // Access the value using the key "number"

// echo "The number you sent is: " . $number;

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

    </head>
    
    <body id="top">
    
        <main>

            <?php include_once('includes/header.php');?>

          
       
            

            

            <section class="section-padding" id="booking">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-lg-12 col-12 mx-auto">
                            <div class="booking-form">
                                
                            


                            </div>

 
							<div class="widget-body">
						<div class="table-responsive">
							<table class="table table-bordered table-hover js-basic-example dataTable table-custom">
								<thead>
									<tr>
										<th style="width:400px;">Treatment Name</th>
										<th>price</th>
										<th>company </th>
									</tr>
								</thead>
							
								<tbody>
            <?php
                        //   $docid=$_SESSION['damsid'];
$sql="SELECT NAME,SELLING_PRICE,COMPANY_NAME from  treatment
JOIN drugs ON treatment.drug_id =drugs.id
where patient_id= $number";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
									<tr>
										<td><?php  echo htmlentities($row->NAME);?></td>
										<td><?php  echo htmlentities($row->SELLING_PRICE);?></td>
										<td><?php  echo htmlentities($row->COMPANY_NAME);?></td>
										
									</tr>
								 <?php $cnt=$cnt+1;}} ?> 
	
								</tbody>
                   
							</table>
						</div>
					</div><!-- .widget-body -->
                  
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