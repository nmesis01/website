<?php session_start() ?>
<?php if(isset($_GET["log"])&&$_GET["log"]=="out"){session_unset(); header("Location: /");} elseif(isset($_SESSION["username"])){header("Location: /");} ?>
<?php $conn=mysqli_connect("sql310.epizy.com","epiz_33517673","/","epiz_33517673_learn");$conn->set_charset("utf8"); ?>
<?php ob_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In</title>
    <link rel="stylesheet" href="bootstrap/bootstrap.css">
    <script src="bootstrap/bootstrap.js"></script>
    <link rel="stylesheet" href="index.css">
    <script src="jquery.js"></script>
    <script src="https://kit.fontawesome.com/e48dcdba45.js" crossorigin="anonymous"></script>
</head>
<body style="background-color: #ffc107;">

<div class="container" >
    <div class="row" style="height: 100vh;">
        <div class="col-10 col-md-4 my-auto mx-auto">
        <?php if(isset($_GET["log"])&&$_GET["log"]=="true"){echo('<div class="alert alert-success" role="alert">Registration Completed !</div>');} elseif(isset($_GET["log"])&&$_GET["log"]=="null"){echo('<div class="alert alert-warning" style="margin-bottom: 20px" role="alert">Please Enter All Information !</div>');} elseif(isset($_GET["log"])&&$_GET["log"]=="wrong"){echo("<div class='alert alert-danger' role='alert' style='margin-bottom: 20px'>We didn't recognize your details. Please try again.</div>");} ?>
            <form method="post">
                <div class="mb-3">
                    <label style="font-size: large; font-weight: bold; width: 100%; text-align: center" class="form-label" for="usernameid">Username</label>
                    <input type="text" name="name_username" id="usernameid" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <div class="mb-3">
                    <label style="font-size: large; font-weight: bold; width: 100%; text-align: center" for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" name="name_password" class="form-control" id="exampleInputPassword1">
                </div>
                <button name="btn1" style="background-color: #4CAF50" type="submit" class="btn w-100">Log In</button>
            </form>
        </div>
    </div>
</div>

        <?php
            if(isset($_POST["btn1"]) && isset($_POST["name_username"]))
            {
                $sign=$_POST["name_username"];
                $password=$_POST["name_password"];
                $query=mysqli_query($conn,"SELECT * FROM users WHERE BINARY username='$sign'");
                $querys=mysqli_fetch_assoc($query);
                if(isset($querys["username"]) && $querys["password"]==$password && isset($_GET["location"])&& $_GET["location"]=="mylist")
                {
                    $_SESSION["username"]=$querys["username"];
                    header("Location: mylist.php");
                    exit();
                }
                elseif(isset($querys["username"]) && $querys["password"]==$password && isset($_GET["location"])&& $_GET["location"]=="oxford"){
                    $_SESSION["username"]=$querys["username"];
                    header("Location: betapage.php");
                    exit();
                }
                elseif(isset($querys["username"]) && $querys["password"]==$password)
                {
                    $_SESSION["username"]=$querys["username"];
                    header("Location: /");
                    exit();
                }
                elseif(empty($sign) || empty($password))
                {
                    header("Location: login.php?log=null");
                    session_unset();
                    exit();
                }
                else
                {
                    session_unset();
                    header("Location: login.php?log=wrong");
                    exit();
                }
            }
        ?>
</body>
</html>
<?php ob_end_flush();?>