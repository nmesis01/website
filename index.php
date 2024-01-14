<?php session_start() ?>
<?php include("header.php") ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ana Sayfa</title>
    <script>
        $(document).ready(function(){
            $("#homepage").addClass("active")
        })
    </script>
</head>
<body>
    <div class="container-fluid m-0 pb-5 p-0 bg-light ">
        <div class="row text-center mt-6 me-0 p-0">
          <h1 class="display-1 font-monospace text-decoration-underline"><?php if(isset($_SESSION["username"])){$user = $_SESSION["username"];echo("Welcome; <br> $user");} else{echo("Look, Listen, Learn");} ?></h1>
      </div>
      <div class="row mt-5 me-0 p-0">
          <div class="align-self-center col-sm-8 col-md-9 mb-3 mb-sm-0"><h1 class="text-center">Ready Lists For You ✓</h1></div>
          <div class="col-sm-4 col-md-3"><div class=" d-flex justify-content-center"><img class="img-fluid" style="height: 200px;" src="list.png" alt=""></div></div>
      </div>
      <div class="row mt-5 me-0 p-0">
          <div class="align-self-center col-sm-8 col-md-9 mb-3 mb-sm-0"><h1 class="text-center">Possibility to Create Your Own List ✓</h1></div>
          <div class="col-sm-4 col-md-3"><div class=" d-flex justify-content-center"><img class="img-fluid" style="height: 200px;" src="pen.png" alt=""></div></div>
      </div>
      <div class="row mt-5 me-0 p-0">
          <div class="align-self-center col-sm-8 col-md-9 mb-3 mb-sm-0"><h1 class=" text-center">Practice by Listening ✓</h1></div>
          <div class="col-sm-4 col-md-3"><div class=" d-flex justify-content-center"><img class="img-fluid" style="height: 200px;" src="headphones.png" alt=""></div></div>
      </div>
      </div>
</body>
</html>