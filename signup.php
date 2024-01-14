<?php session_start() ?>
<?php if(isset($_SESSION["username"])){header("Location: /");} ?>
<?php $conn=mysqli_connect("sql310.epizy.com","epiz_33517673","/","epiz_33517673_learn");$conn->set_charset("utf8"); ?>
<?php ob_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="bootstrap/bootstrap.css">
    <script src="bootstrap/bootstrap.js"></script>
    <link rel="stylesheet" href="index.css">
    <script src="jquery.js"></script>

</head>
<body style="background-color: #ffc107;">
        <div class="container" >
            <div class="row" style="height: 100vh;">
                <div class="col-10 col-md-4 my-auto mx-auto">
                <?php if(isset($_GET["log"])&&$_GET["log"]=="null"){echo('<div class="alert alert-warning" style="margin-bottom: 20px" role="alert">Please Enter All Information !</div>');} elseif(isset($_GET["log"])&&$_GET["log"]=="same"){echo('<div class="alert alert-warning" role="alert" style="margin-bottom: 20px">This Username Has Been Taken !</div>');}?>
                    <form method="post" action='safe_sign.php'>
                        <div class="mb-3">
                            <label style="font-size: large; font-weight: bold; text-align: center; width: 100%" for="exampleInputEmail1" class="form-label">Email address</label>
                            <input type="email" name="name_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label style="font-size: large; font-weight: bold; text-align: center; width: 100%" class="form-label" for="usernameid">Username</label>
                            <input type="text" name="name_username" id="usernameid" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="mb-3">
                            <label style="font-size: large; font-weight: bold; text-align: center; width: 100%" for="exampleInputPassword1" class="form-label">Password</label>
                            <input type="password" name="name_password" class="form-control" id="exampleInputPassword1">
                        </div>
                        <button name="btn1" style="background-color: #4CAF50" type="submit" class="btn w-100">Sign Up</button>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>
<?php ob_end_flush();?>