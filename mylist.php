<?php
    session_start();
    if(!isset($_SESSION["username"])) 
    {
        header("Location: login.php?location=mylist");
    }
?>
<?php include("header.php") ?>
<?php
$ctrl=0;
    $user=$_SESSION["username"];
    $query=mysqli_query($conn,"SELECT * FROM users WHERE BINARY username='$user'");
    $assoc=mysqli_fetch_assoc($query);
    $list = "listof".$user;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My List</title>
    <link rel="stylesheet" href="mylist.css">
    <script>
        $(document).ready(function(){
            $('#text1').keypress(function (e) {
            var key = e.which;
            if(key == 13)  // the enter key code
            {
                $('#adding').click();
                return false;  
            }
            });
            $('#text2').keypress(function (e) {
            var key = e.which;
            if(key == 13)  // the enter key code
            {
                $('#add').click();
                return false;  
            }
            });   
        });
        $(document).ready(function(){
            $("#your").addClass("active")
        })
    </script>

        <script type="text/javascript">
        $(document).ready(function(){
            $("#adding").click(function(){
            var text=$("#text1").val();
            if (text=="")
            {  
                $("#text1").attr("placeholder","Burası Boş Bırakılamaz!");
            }
            else
            {
            var ulist="<?php $list="listof".$user; echo($list)?>";
            $.post("translate/translate2.php",{word: text},function(x){
                console.log(x);
                $.ajax({type:"POST",url:"addword.php",data:{list: ulist, tr: x, en: text},beforeSend: function(){$("#div1").css("display","block")},success: function(){document.location.reload(true)}})
            });}
            });
            $("#add").click(function(){
            var text=$("#text2").val();
            if (text=="")
            {  
                $("#text2").attr("placeholder","Burası Boş Bırakılamaz!");
            }
            else
            {
            var ulist="<?php $list="listof".$user; echo($list)?>";
            $.post("translate/translate.php",{word: text},function(x){
                $.ajax({type:"POST",url:"addword.php",data:{list: ulist, en: x, tr: text},beforeSend: function(){$("#div2").css("display","block")},success: function(){document.location.reload(true)}})
            });}
            });
        });
        function del(x)
            {
            var ulist="<?php $list="listof".$user; echo($list); ?>";
            $.ajax({type:"POST",url:"deleteword.php",data:{word_en: x,ulist: ulist},beforeSend: function(){$("#spin").css("display","block")},success: function(){document.location.reload(true)}});
            }
        </script>


    <script type="text/javascript">
        function tr(x,y)
        {
          $("audio").trigger("pause");
          x="tr_"+x;
          document.getElementById(x).src="https://www.ingilizceturkce.gen.tr/speak.php?word="+y+"&lang=tr";
          setTimeout(function(){document.getElementById(x).play()}, 1500);
        }
        function play(x,y)
        {
              $("audio").trigger("pause");
                d= "en_"+x;
                document.getElementById(d).src="https://www.ingilizceturkce.gen.tr/speak.php?word="+y+"&lang=en";
                document.getElementById(d).play();
        }
        function next(x)
        {
            x=x+1;
            x="click_"+x;
            document.getElementById(x).click();
        }
    </script>
    <script>
     function getFocus1() {
        document.getElementById("text1").focus();
        }
    function getFocus2() {
        document.getElementById("text2").focus();
    }
    </script>
</head>
<body>
    <div class="container-fluid">
    <a onclick='setTimeout(function() { getFocus1(); }, 500);' class="btn btn-primary" data-bs-toggle="modal" href="#exampleModalToggle" role="button">English</a>
    <button onclick='setTimeout(function() { getFocus2(); }, 500);' class="btn btn-primary float-end" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal" data-bs-dismiss="modal">Türkçe</button>
        <!-- MODAL1 -->
    <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel">English</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <input id="text1" type="text" class="form-control"  aria-describedby="button-addon2">
                        <button id="adding" class="btn btn-outline-secondary" type="button" id="button-addon2">Add</button>
                    </div>
                </div>
                <div class="modal-footer">
                    <div id="div1" class="spinner-border" role="status">
                        <span class="visually-hidden">Loading...</span>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <!-- MODAL1 -->

        <!-- MODAL2 -->
        <div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel2">Türkçe</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <input id="text2" type="text" class="form-control"  aria-describedby="button-addon3">
                        <button id="add" class="btn btn-outline-secondary" type="button" id="button-addon3">Ekle</button>
                    </div>
                </div>
                <div class="modal-footer">
                <div id="div2" class="spinner-border" role="status">
                            <span class="visually-hidden">Loading...</span>
                        </div>
                </div>
                </div>
            </div>
        </div>
        <!-- MODAL2 -->

    <div class="mainbox row mx-auto">
        <div class="col text-center">
        <?php
        $user = $_SESSION["username"];
        $list = "listof".$user;
        $query = mysqli_query($conn,"SELECT * FROM $list");
        $sayac=0;
        while ($querys = mysqli_fetch_assoc($query))
        {
            $id = $sayac;
            $en = $querys["word_ing"];
            $tr = $querys["word_tr"];
            echo("<audio controls style='display: none' id='tr_".$sayac."' onended='next($id)'><source src='' type='audio/mpeg'></audio>");
            echo("<audio controls style='display: none' id='en_".$sayac."' onended='tr($id,\"$tr\")'><source src='' type='audio/mpeg'></audio>");
            echo("<div class='myword d-inline-block'><label data-bs-toggle='popover' title='$tr'>$en</label><div class='btn-group' role='group'><a href='changeword.php?word=$en'><button type='button' class='btn btn-secondary'><i class='fas fa-redo'></i></button></a><button onclick='del(\"$en\")' type='button' class='btn btn-secondary'><i class='fas fa-ban'></i></button><button id='click_$id' onclick='play($id,\"$en\")'><i class='fas fa-play'></i></button></div></div>");
            $sayac++;
        }
        if ($sayac == 0)
        {
            echo('<p class="h1 text-center">Buralar Boş Gözüküyor...</p>');
        }
        ?>
        </div>
    </div>

    <script>
        var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
        var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {return new bootstrap.Popover(popoverTriggerEl)})
    </script>
</body>
</html>