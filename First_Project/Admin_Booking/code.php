<?php
session_start();
require 'dbcon.php';

if(isset($_POST['delete_student']))
{
    $student_id = mysqli_real_escape_string($con, $_POST['delete_student']);

    $query = "DELETE FROM tblappointment WHERE ID='$student_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Appointment Deleted Successfully";
        header("Location: index.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Appointment Not Deleted";
        header("Location: index.php");
        exit(0);
    }
}

if(isset($_POST['update_student']))
{
    $student_id = mysqli_real_escape_string($con, $_POST['student_id']);

    $name = mysqli_real_escape_string($con, $_POST['AppointmentNumber']);
    $email = mysqli_real_escape_string($con, $_POST['Name']);
    $phone = mysqli_real_escape_string($con, $_POST['Email']);
    $course = mysqli_real_escape_string($con, $_POST['Doctor']);
    $Password = mysqli_real_escape_string($con, $_POST['Message']);
    $Statuss = mysqli_real_escape_string($con, $_POST['Status']);


    $query = "UPDATE tblappointment SET AppointmentNumber='$name', Name='$email', Email='$phone', Doctor='$course',Message='$Password',Status='$Statuss' WHERE ID='$student_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Appointment Updated Successfully";
        header("Location: index.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Appointment Not Updated";
        header("Location: index.php");
        exit(0);
    }

}


if(isset($_POST['save_student']))
{
    $name = mysqli_real_escape_string($con, $_POST['AppointmentNumber']);
    $email = mysqli_real_escape_string($con, $_POST['Name']);
    $phone = mysqli_real_escape_string($con, $_POST['Email']);
    $course = mysqli_real_escape_string($con, $_POST['Doctor']);
    $Password = mysqli_real_escape_string($con, $_POST['Message']);
    $Statuss = mysqli_real_escape_string($con, $_POST['Status']);

    $query = "INSERT INTO tbldoctor (AppointmentNumber , Name , Email  , Doctor ,Message,Status) VALUES ('$name', '$email','$phone', '$course','$Password',$Statuss)";

    $query_run = mysqli_query($con, $query);
    if($query_run)
    {
        $_SESSION['message'] = "Appointment Created Successfully";
        header("Location: student-create.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Appointment Not Created";
        header("Location: student-create.php");
        exit(0);
    }
}

?>