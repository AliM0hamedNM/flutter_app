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

    <title>Doctor Edit</title>
</head>
<body>
  
    <div class="container mt-5">

        <?php include('message.php'); ?>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Doctor Edit
                            <a href="index.php" class="btn btn-danger float-end">BACK</a>
                        </h4>
                    </div>
                    <div class="card-body">

                        <?php
                        if(isset($_GET['ID']))
                        {
                            $student_id = mysqli_real_escape_string($con, $_GET['ID']);
                            $query = "SELECT * FROM tbldoctor WHERE ID='$student_id' ";
                            $query_run = mysqli_query($con, $query);

                            if(mysqli_num_rows($query_run) > 0)
                            {
                                $student = mysqli_fetch_array($query_run);
                                ?>
                                <form action="code.php" method="POST">
                                    <input type="hidden" name="student_id" value="<?= $student['ID']; ?>">

                                    <div class="mb-3">
                                        <label>Doctor Name</label>
                                        <input type="text" name="FullName" value="<?=$student['FullName'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Mobile Edit</label>
                                        <input type="text" name="MobileNumber" value="<?=$student['MobileNumber'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Email Edit</label>
                                        <input type="email" name="Email" value="<?=$student['Email'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Specialization Edit</label>
                                        <input type="text" name="Specialization" value="<?=$student['Specialization'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label>Edit Password</label>
                                        <input type="text" name="Password" value="<?=$student['Password'];?>" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <button type="submit" name="update_student" class="btn btn-primary">
                                            Update Doctor
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