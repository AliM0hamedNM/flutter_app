<?php
require 'dbcon.php';
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <title>Appointment View</title>
</head>
<body>

    <div class="container mt-5">

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Appointment View Details 
                            <a href="index.php" class="btn btn-danger float-end">BACK</a>
                        </h4>
                    </div>
                    <div class="card-body">

                        <?php
                        if(isset($_GET['ID']))
                        {
                            $student_id = mysqli_real_escape_string($con, $_GET['ID']);
                            $query = "SELECT * FROM tblappointment WHERE ID='$student_id' ";
                            $query_run = mysqli_query($con, $query);

                            if(mysqli_num_rows($query_run) > 0)
                            {
                                $student = mysqli_fetch_array($query_run);
                                ?>
                                
                                    <div class="mb-3">
                                        <label>AppointmentNumber</label>
                                        <p class="form-control">
                                            <?=$student['AppointmentNumber'];?>
                                        </p>
                                    </div>
                                    <div class="mb-3">
                                        <label>Name</label>
                                        <p class="form-control">
                                            <?=$student['Name'];?>
                                        </p>
                                    </div>
                                    <div class="mb-3">
                                        <label>Email</label>
                                        <p class="form-control">
                                            <?=$student['Email'];?>
                                        </p>
                                    </div>
                                    <div class="mb-3">
                                        <label>Doctor</label>
                                        <p class="form-control">
                                            <?=$student['Doctor'];?>
                                        </p>
                                    </div>
                                    <div class="mb-3">
                                        <label>Message</label>
                                        <p class="form-control">
                                            <?=$student['Message'];?>
                                        </p>
                                    </div>
                                    <div class="mb-3">
                                        <label>Status</label>
                                        <p class="form-control">
                                            <?=$student['Status'];?>
                                        </p>
                                    </div>

                                <?php
                            }
                            else
                            {
                                echo "<h4>No Such Id Found</h4>";
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>