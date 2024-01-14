<?php $conn=mysqli_connect("sql310.epizy.com","epiz_33517673","/","epiz_33517673_learn");$conn->set_charset("utf8");?>
<?php ob_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="logo.ico" type="image/x-icon" />
    <script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
    <link rel="stylesheet" href="bootstrap/bootstrap.css">
    <script src="bootstrap/bootstrap.js"></script>
    <link rel="stylesheet" href="index.css">
    <script src="jquery.js"></script>
    <script src="https://kit.fontawesome.com/e48dcdba45.js" crossorigin="anonymous"></script>
</head>
<body class="bg-light">
    <div class="container-fluid m-0 p-0">
        <div class="row m-0 p-0">
            <div class="col m-0 p-0">
                <nav class="navbar navbar-expand-lg navbar-dark bg-warning" style="border-bottom-left-radius: 22px; border-bottom-right-radius: 22px;">
                    <div class="container-fluid">
                      <a class="navbar-brand" href="index.php"><h1 class="h1">Learn</h1></a>
                      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                      </button>
                      <div class="collapse navbar-collapse justify-content-center" id="navbarNavAltMarkup">
                        <div class="navbar-nav">
                          <a class="nav-link" id="homepage" aria-current="page" href="index.php">Home</a>
                          <a class="nav-link" id="list" href="lists.php">Lists</a>
                          <a class="nav-link" id="your" href="mylist.php">My List</a>
                          <a class="nav-link" id="betapage" href="betapage.php">Oxford Dictionary</a>
                          <a class="nav-link" id="chat" href="blogger/">Blog <sub>beta</sub></a>
                        </div>
                      </div>
                    </div>
                    <form class="container-fluid justify-content-end">
                      <?php
                        if (isset($_SESSION["username"]))
                        {
                          echo('<a href="login.php?log=out"><button class="btn btn-outline-dark" type="button">Log Out</button></a>');
                        }
                        else
                        {
                          echo(' 
                              <div class="btn-group-vertical-sm">
                                <a href="login.php"><button class="btn btn-outline-primary" type="button">Login</button></a>
                                <a href="signup.php"><button class="btn btn-outline-success" type="button">Sign Up</button></a>
                              </div>'
                              );
                        }
                      ?>
                    </form>
                  </nav>
            </div>
        </div>
</body>