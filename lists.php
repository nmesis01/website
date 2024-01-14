<?php session_start() ?>
<?php include("header.php") ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lists</title>
    <script>
        $(document).ready(function(){
            $("#list").addClass("active")
        })
    </script>
    <link rel="stylesheet" href="lists.css">
</head>
<body>
    <div class="container-fluid">
        <div class="srchbox bg-light">
            <form action="">
            <input name="q" class="bg-light" type="text" id="search" placeholder="search">
            </form>
            <i class="fa fa-search"></i>
        </div>
        <div class="row mainbox mx-auto">
            <?php
                if (!isset($_GET["q"]))
                {
                    $query = mysqli_query($conn,"SELECT * FROM listnames");
                    while ($querys = mysqli_fetch_assoc($query))
                    {
                        $list = $querys["listname"];
                        $ticket = $querys["ticket"];
                        $query1 = mysqli_query($conn,"SELECT * FROM $ticket");
                        $txt="";
                        for ($i=1; $i < 11 ; $i++)
                        {
                            $querys1 = mysqli_fetch_assoc($query1);
                            $txt = $txt." ".$querys1["word_ing"];
                        }
                        echo("
                            <div class='col-sm-6 col-xl-4 mt-3'>
                                <a href='word.php?list=$list' style='text-decoration: none; color: black;'>
                                    <div class='card'>
                                        <div class='card-body'>
                                        <h5 class='card-title text-center h2 text-danger'>$list</h5>
                                        <p class='card-text'>$txt</p>
                                        </div>
                                    </div>
                                </a>
                            </div>"
                
                            );
                    } 
                }
                else
                {
                    $veri = $_GET["q"];
                    $query=mysqli_query($conn,"SELECT * FROM listnames WHERE listname LIKE '%$veri%'");
                    if (empty(mysqli_fetch_assoc($query)))
                    {
                        echo('<div  class="alert alert-danger text-center" role="alert">Arama Sonucu Bulunamadı!</div>');
                    }
                    else
                    {
                        $query=mysqli_query($conn,"SELECT * FROM listnames WHERE listname LIKE '%$veri%'");
                        while ($querys=mysqli_fetch_assoc($query))
                        {
                            $list = $querys["listname"];
                            $ticket = $querys["ticket"];
                            $query1 = mysqli_query($conn,"SELECT * FROM $ticket");
                            $txt="";
                            for ($i=1; $i < 11 ; $i++)
                            {
                                $querys1 = mysqli_fetch_assoc($query1);
                                $txt = $txt." ".$querys1["word_ing"];
                            }
                            echo("
                                <div class='col-sm-6 col-xl-4 mt-3'>
                                    <a href='word.php?list=$list' style='text-decoration: none; color: black;'>
                                        <div class='card'>
                                            <div class='card-body'>
                                            <h5 class='card-title text-center h2 text-danger'>$list</h5>
                                            <p class='card-text'>$txt</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>"
                    
                                );
                        }
                    }
                   
                }
                
            ?>
        </div>
    </div>
</body>
</html>