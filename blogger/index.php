<?php $conn=mysqli_connect("sql310.epizy.com","epiz_33517673","Fb2RsTo2Omup1","epiz_33517673_learn");$conn->set_charset("utf8"); ?>
<?php
    session_start();
    if(!isset($_SESSION["username"])) 
    {
        header("Location: ../login.php?location=blog");
    }
    else{
        $user = $_SESSION["username"];
        $blog = "blog".$user;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Writes</title>
    <link rel="stylesheet" href="mywrites.css">
    <script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
    <link rel="stylesheet" href="../bootstrap/bootstrap.css">
    <script src="../bootstrap/bootstrap.js"></script>
    <script src="../jquery.js"></script>
    <script src="https://kit.fontawesome.com/e48dcdba45.js" crossorigin="anonymous"></script>
</head>
<body class="bg-dark">
    <div class="container-fluid">
        <div class="row">
            <a href="addwrite.php"><div align="center" ><img style="height:25vh" src="plus.png"></div></a>
        </div>
        <div class="row">
            <div class="mainbox">
            <?php
                echo("<div class='row mx-auto'>");
                $query = mysqli_query($conn,"SELECT * FROM $blog");
                while($querys = mysqli_fetch_assoc($query)){
                    $color = $querys["color"];
                    $wght = $querys["wght"];
                    $styl = $querys["styl"];
                    $decoration = $querys["decoration"];
                    $texts = $querys["texts"];
                    $header = $querys["header"];
                    $satir = explode("\n", $texts);
                    echo($satir);
                    echo("<div align='center' class='mt-3'><a style='text-decoration:none;' href='edit.php?write=$header'><div class='card' style='width: 75%; font-style: $styl;text-decoration: $decoration; color: $color; font-weight: $wght; '>
                    <div class='card-body'>
                        <div align='center'><h5 class='card-title'>$header</h5></div>
                        ");
                        for ($i=0; $i < count($satir); $i++) { 
                            echo("<p>$satir[$i]</p>");
                            echo("\n");
                        }
                        echo("
                    </div>
                    </div></a></div>");
                }
                echo("</div>")
            ?>
            </div>
        </div>
    </div>
</body>
</html>