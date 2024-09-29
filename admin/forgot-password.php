<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['submit']))
  {
    $contactno=$_POST['contactno'];
    $email=$_POST['email'];

        $query=mysqli_query($con,"select ID from tbladmin where  Email='$email' and MobileNumber='$contactno' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['contactno']=$contactno;
      $_SESSION['email']=$email;
     header('location:reset-password.php');
    }
    else{
      $msg="Invalid Details. Please try again.";
    }
  }
  ?>
<!DOCTYPE html>
<html lang="zxx">
<head>
    
    <title>CPS-Forgot Page</title>
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/app.css">
    <style>
        .loader {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: #F5F8FA;
            z-index: 9998;
            text-align: center;
        }

        .plane-container {
            position: absolute;
            top: 50%;
            left: 50%;
        }
        .btn1{

border-radius: .5rem;
border: 10px;
margin-top: 2rem;
text-size-adjust: 20%;
background-color:lightblue;
text-align: center;
border-width: 2rem;
width: 15rem;
/*  font-weight: bold;*/
line-height : var(--system-14-line-height);
}
.btn2{

border-radius: .5rem;
border: 10px;
margin-top: 2rem;
margin-left: 2rem;
text-size-adjust: 20%;
background-color:lightblue;
text-align: center;
width: 10rem;
/*font-weight: bolder;*/
line-height : var(--system-14-line-height);
}
.fp{
    font-weight: bold;
}

    </style>
</head>
<body class="light">
<!-- Pre loader -->
<div id="loader" class="loader">
    <div class="plane-container">
        <div class="preloader-wrapper small active">
            <div class="spinner-layer spinner-blue">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div><div class="gap-patch">
                <div class="circle"></div>
            </div><div class="circle-clipper right">
                <div class="circle"></div>
            </div>
            </div>

            <div class="spinner-layer spinner-red">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div><div class="gap-patch">
                <div class="circle"></div>
            </div><div class="circle-clipper right">
                <div class="circle"></div>
            </div>
            </div>

            <div class="spinner-layer spinner-yellow">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div><div class="gap-patch">
                <div class="circle"></div>
            </div><div class="circle-clipper right">
                <div class="circle"></div>
            </div>
            </div>

            <div class="spinner-layer spinner-green">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div><div class="gap-patch">
                <div class="circle"></div>
            </div><div class="circle-clipper right">
                <div class="circle"></div>
            </div>
            </div>
        </div>
    </div>
</div>
<div id="app">
<main>
    <div id="primary" class="blue4 p-t-b-100 height-full responsive-phone">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <img src="assets/img/icon/icon-plane.png" alt="">
                </div>
                <div class="col-lg-6 p-t-100">
                    <div class="text-white">
                     <h1 class="fp">Forgot Password</h1>
                        <p class="s-18 p-t-b-20 font-weight-lighter" ><b>Hey Buddies, If You Forgot Your Password Reset From Here!!</p></b>
                    </div>
                   <form method="post" action="">
                    <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group has-icon"><i class="icon-envelope-o"></i>
                                    <input type="text" class="form-control form-control-lg"
                               placeholder="Email Address" name="email" required="true">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group has-icon"><i class="icon-user-secret"></i>
                                    <input type="text" name="contactno" required="true" class="form-control form-control-lg no-b"
                                           placeholder="Mobile Number"  maxlength="10" pattern="[0-9]+">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <input type="submit" class="btn btn-success btn-lg btn-block" name="submit" value="Reset"><button class="btn1">
                                <p class="forget-pass text-black"><a href="login.php">Already have an Account</a></p></button>
                                <button class="btn2">
                                <p class="forget-pass text-black"><a href="../index.php"> Back to Home!!</a></p></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- #primary -->
</main>

<div class="control-sidebar-bg shadow white fixed"></div>
</div>
<!--/#app -->
<script src="assets/js/app.js"></script>
</body>
</html>