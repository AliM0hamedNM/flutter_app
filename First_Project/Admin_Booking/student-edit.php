<?php
session_start();
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

    <title>Appointment Edit</title>
</head>
<body>
  
    <div class="container mt-5">

        <?php include('message.php'); ?>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Appointment Edit
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
                                <form action="code.php" method="POST">
                                    <input type="hidden" name="student_id" value="<?= $student['ID']; ?>">

                                    <div class="mb-3">
                                        <label>AppointmentNumber</label>
                                        <input type="text" name="AppointmentNumber" value="<?=$student['AppointmentNumber'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Name</label>
                                        <input type="text" name="Name" value="<?=$student['Name'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Email  </label>
                                        <input type="email" name="Email" value="<?=$student['Email'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Doctor</label>
                                        <input type="text" name="Doctor" value="<?=$student['Doctor'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Message</label>
                                        <input type="text" name="Message" value="<?=$student['Message'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Status</label>
                                        <input type="text" name="Status" value="<?=$student['Status'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <button type="submit" name="update_student" class="btn btn-primary">
                                            Update Appointment
                                        </button>
                                    </div>

                                </form>
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