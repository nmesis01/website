<?php
$conn=mysqli_connect("sql310.epizy.com","epiz_33517673","Fb2RsTo2Omup1","epiz_33517673_learn");
$conn->set_charset("utf8");
?>
<?php ob_start();?>
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
    <title>Writee'</title>
    <link rel="stylesheet" href="addwrite.css">
    <script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
    <link rel="stylesheet" href="../bootstrap/bootstrap.css">
    <script src="../bootstrap/bootstrap.js"></script>
    <script src="../jquery.js"></script>
    <script src="https://kit.fontawesome.com/e48dcdba45.js" crossorigin="anonymous"></script>
    <script>

        var header = "<?php
            $query = mysqli_query($conn,"SELECT * FROM $blog");
            while($querys = mysqli_fetch_assoc($query)){
                $header = $querys["header"];
                echo($header.",");
            }
        ?>";
        var list = header.split(",");
        $(document).ready(function(){
            $("#kayit").click(function(){
                var x = $("#h").text();
                if(list.indexOf(x) == -1){
                var blogname = "<?php $blog = "blog".$user; echo($blog); ?>";
                $.ajax({type:"POST", url:"kayit.php", data:{blog : blogname , color : $("#exampleFormControlTextarea1").css("color"), wght: $("#exampleFormControlTextarea1").css("font-weight"),styl: $("#exampleFormControlTextarea1").css("font-style"), decoration : $("#exampleFormControlTextarea1").css("text-decoration"),texts : $("#exampleFormControlTextarea1").val(), header: x} ,success: function(){	
$(location).attr('href', 'index.php')}});
                }
                else{
                    alert("Başlık Aynı!!");
                }
            });
        });

        function change(){
            var x = document.getElementById("exampleColorInput").value;
            document.getElementById("exampleFormControlTextarea1").style.color = x;
        }

        $(document).ready(function(){
                $("#adding").click(function(){
                    var m = $("#text1").val();
                    $("#h").text(m);
                    $("#labeldiv").css("display","block");
                });

            });
    </script>
    <script>
                function i(){
            if(document.getElementById("exampleFormControlTextarea1").style.fontStyle == "italic"){
                document.getElementById("exampleFormControlTextarea1").style.fontStyle = "normal";
            }
            else{
                document.getElementById("exampleFormControlTextarea1").style.fontStyle = "italic";
            }
        }
        function b(){
            if(document.getElementById("exampleFormControlTextarea1").style.fontWeight == "bold"){
                document.getElementById("exampleFormControlTextarea1").style.fontWeight = "normal";
            }
            else{
                document.getElementById("exampleFormControlTextarea1").style.fontWeight = "bold";
            }
        }
        function u(){
            if(document.getElementById("exampleFormControlTextarea1").style.textDecoration == "underline"){
                document.getElementById("exampleFormControlTextarea1").style.textDecoration = "none";
            }
            else{
                document.getElementById("exampleFormControlTextarea1").style.textDecoration = "underline";
            }
         }
         function del(){
            if(document.getElementById("exampleFormControlTextarea1").style.textDecoration == "line-through"){
                document.getElementById("exampleFormControlTextarea1").style.textDecoration = "none";
            }
            else{
                document.getElementById("exampleFormControlTextarea1").style.textDecoration = "line-through";
            }
         }
    </script>
</head>
<body class="bg-dark">
    <div class="container-fluid">
        <div class="row">
            <div class="mainbox w-75 mx-auto mt-5 ">
                <div class="form-group">
                    <div align="center" id="labeldiv" style="display:none"><h1 id="h" style="color: white" class="display-5">none</h1></div>
                    <div class="row">
                    <div class="col-11 p-0 m-0">
                    <textarea onclick="change()" class="form-control" id="exampleFormControlTextarea1" rows="20">&nbsp &nbsp </textarea>
                    </div>
                    <div class="col-1 p-0" style="vertical-align: center;">
                        <a href="#" onclick="i()" style="text-decoration: none; color:white; display:block; padding-left:5%"><i>italik<i></a>
                        <a href="#" onclick="b()" style="text-decoration: none; color:white; display:block; padding-left:5%"><b>kalın<b></a>
                        <a href="#" onclick="u()" style="text-decoration: none; color:white; display:block;padding-left:5%"><u>altıçizili<u></a>
                        <a href="#" onclick= "del()" style="text-decoration: none; color:white; display:block;; padding-left:5%"><del>üstüçizili<del></a>
                    </div>
                    <div class="row" style="width: 95%">
                    <div class="mt-2 w-auto col"><input type="color" class="form-control form-control-color" id="exampleColorInput" value="#000000" title="Choose your color"></div>
                    <div class="w-auto col mt-2">
                    <div id="baslik" align="center"><a style="width: 90%" class="btn btn-outline-light w-50 mb-2" data-bs-toggle="modal" href="#exampleModalToggle" role="button">Başlık</a></div>
                    </div>
                    <div class="col">
                      <div align="right" class="mt-2"><button id="kayit" type="button" class="btn btn-success">Kaydet</button></div>
                    </div>
                
                <!-- MODAL -->
                <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalToggleLabel">Başlık</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="input-group mb-3">
                                <input id="text1" type="text" class="form-control"  aria-describedby="button-addon2">
                                <button id="adding" class="btn btn-outline-secondary" type="button" id="button-addon2">Ekle</button>
                            </div>
                        </div>
                        <div class="modal-footer">
                        </div>
                        </div>
                    </div>
                </div>
                <!-- MODAL -->
                </div>
                </div>
            </div>
        </div>
</body>
</html>