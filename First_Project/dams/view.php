<?php
session_start();
//error_reporting(0);
include('doctor/includes/dbconnection.php');

$number = $_GET["number"]; // Access the value using the key "number"

echo "The number you sent is: " . $number;



?>

<div class="widget-body">
						<div class="table-responsive">
							<table class="table table-bordered table-hover js-basic-example dataTable table-custom">
								<thead>
									<tr>
										<th>S.No</th>
										<th>Appointment Number</th>
										
									</tr>
								</thead>
							
								<tbody>
            <?php
                          $docid=$_SESSION['damsid'];
$sql="SELECT patient_id,drug_id from  treatment where patient_id= $number";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
									<tr>
										<td><?php  echo htmlentities($row->patient_id);?></td>
										<td><?php  echo htmlentities($row->drug_id);?></td>
										
									</tr>
								 <?php $cnt=$cnt+1;}} ?> 
	
								</tbody>
                  <tfoot>
                  <tr>
                  <th>S.No</th>
										<th>Appointment Number</th>
                  </tr>
                </tfoot>
							</table>
						</div>
					</div><!-- .widget-body -->