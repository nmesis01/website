<?php session_start() ?>
<?php include("header.php") ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo($_GET["list"]); ?></title>
    <link rel="stylesheet" href="word.css">
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
</head>
<body>
    <div class="container-fluid">
        <div class="mainbox row mx-auto">
            <div class="col text-center">
            <?php
                $listnames=$_GET["list"];
                $query=mysqli_query($conn,"SELECT * FROM listnames WHERE listname='$listnames'");
                $assoc=mysqli_fetch_assoc($query);
                $ticket=$assoc["ticket"];
                $query=mysqli_query($conn,"SELECT * FROM $ticket");
                $sayac=0;
                while ($assoc=mysqli_fetch_assoc($query)) 
                {
                    $kelime_tr=$assoc["word_tr"];
                    $kelime_ing=$assoc["word_ing"];
                    $id=$sayac;
                    echo("<audio controls style='display: none' id='tr_".$sayac."' onended='next($id)'><source src='' type='audio/mpeg'></audio>");
                    echo("<audio controls style='display: none' id='en_".$sayac."' onended='tr($id,\"$kelime_tr\")'><source src='' type='audio/mpeg'></audio>");
                    echo("<div class='mainword d-inline-block'><label data-bs-toggle='popover' title='$kelime_tr'>$kelime_ing</label><button id='click_$id' onclick='play($id,\"$kelime_ing\")'><i class='fas fa-play'></i></button></div>");
                    $sayac++;
                }
            ?>
            </div>
        </div>
    </div>
    <script>
        var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
        var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {return new bootstrap.Popover(popoverTriggerEl)})
    </script>
</body>
</html>