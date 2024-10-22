<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['login']))
  {
    $adminuser=$_POST['username'];
    $password=md5($_POST['password']);
    $query=mysqli_query($con,"select ID,AdminName from tbladmin where  UserName='$adminuser' && Password='$password' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['crmsaid']=$ret['ID'];
      $_SESSION['fname']=$ret['AdminName'];
     header('location:dashboard.php');
    }
    else{
    $msg="Invalid Details.";
    }
  }
  ?>
<!DOCTYPE html>
<html lang="zxx">
<head>
    
    <title>CPS-Admin Login</title>
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/app.css">
  <!--  <link rel="stylesheet" href="assets/css/login.css"> -->
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
            width: 10rem;
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
                    <img src="assets/img/icon/icon-plane.png" alt="" >
                   
                   
                   
                </div>
                <div class="col-lg-6 p-t-100">
                    <div class="text-white">
                       <strong><i> <h1>Welcome </h1></strong></i>
                        <p class="s-18 p-t-b-20 font-weight-lighter" ><strong> Buddies Welcome back to Campus Placement System AdminPanel !</p></strong>
                    </div>
                   <form method="post" action="">
                    <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group has-icon"><i class="icon-user-o"></i>
                                    <input type="text" class="form-control form-control-lg no-b"
                                          name="username" id="username" placeholder="Username" required="true">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group has-icon"><i class="icon-user-secret"></i>
                                    <input type="password" name="password" required="true" class="form-control form-control-lg no-b"
                                           placeholder="Password">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <input type="submit" class="btn btn-success btn-lg btn-block" name="login" value="Let me enter">
                                <p class="forget-pass text-black"><button class="btn1" ><a href="forgot-password.php">  FORGOT PASSWORD? </a></p>
                                </button> 
                                <button class="btn2" > <p class="forget-pass text-black"><a href="../index.php" >BACK TO HOME!!</a></p> 
                                </button>
                               
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