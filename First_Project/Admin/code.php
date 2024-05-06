<?php
session_start();
require 'dbcon.php';

if(isset($_POST['delete_student']))
{
    $student_id = mysqli_real_escape_string($con, $_POST['delete_student']);

    $query = "DELETE FROM tbldoctor WHERE ID='$student_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Doctor Deleted Successfully";
        header("Location: index.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Doctor Not Deleted";
        header("Location: index.php");
        exit(0);
    }
}

if(isset($_POST['update_student']))
{
    $student_id = mysqli_real_escape_string($con, $_POST['student_id']);

    $name = mysqli_real_escape_string($con, $_POST['FullName']);
    $email = mysqli_real_escape_string($con, $_POST['MobileNumber']);
    $phone = mysqli_real_escape_string($con, $_POST['Email']);
    $course = mysqli_real_escape_string($con, $_POST['Specialization']);
    $Password = mysqli_real_escape_string($con, $_POST['Password']);


    $query = "UPDATE tbldoctor SET FullName='$name', MobileNumber='$email', Email='$phone', Specialization='$course',Password='$Password' WHERE ID='$student_id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['message'] = "Doctor Updated Successfully";
        header("Location: index.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Doctor Not Updated";
        header("Location: index.php");
        exit(0);
    }

}


if(isset($_POST['save_student']))
{
    $name = mysqli_real_escape_string($con, $_POST['FullName']);
    $email = mysqli_real_escape_string($con, $_POST['MobileNumber']);
    $phone = mysqli_real_escape_string($con, $_POST['Email']);
    $course = mysqli_real_escape_string($con, $_POST['Specialization']);
    $Password = mysqli_real_escape_string($con, $_POST['Password']);

    $query = "INSERT INTO tbldoctor (FullName , MobileNumber , Email  , Specialization ,Password) VALUES ('$name', '$email','$phone', '$course','$Password')";

    $query_run = mysqli_query($con, $query);
    if($query_run)
    {
        $_SESSION['message'] = "Doctor Created Successfully";
        header("Location: student-create.php");
        exit(0);
    }
    else
    {
        $_SESSION['message'] = "Doctor Not Created";
        header("Location: student-create.php");
        exit(0);
    }
}

?>