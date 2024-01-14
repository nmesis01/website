<?php session_start() ?>
<?php if (!isset($_SESSION["username"])){header("Location: login.php?location=mylist");} ?>
<?php include("header.php") ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo(ucwords($_GET["word"]));?></title>
</head>
<body>
    <?php        

    $user=$_SESSION["username"];
    $list = "listof".$user;
    $en=$_GET["word"];
    $query=mysqli_query($conn,"SELECT * FROM $list WHERE BINARY word_ing='$en'");
    $assoc=mysqli_fetch_assoc($query);
    $tr=$assoc["word_tr"];
    if (isset($_GET["eng"]))
    {
        $cen=$_GET["eng"];
        $ctr=$_GET["trk"];
        mysqli_query($conn,"UPDATE $list SET word_ing='$cen', word_tr='$ctr' WHERE BINARY word_ing='$en' ");
        header("Location: mylist.php");
    }
    ?>
    <div class="container">
        <div class="row" style="height: 100vh;">
            <div class="col-sm-6 col-12 mx-auto my-auto">
                <form action="" method="get">
                <input style="display: none;" name="word" type="text" value="<?php echo($_GET["word"]) ?>">
                    <div class="mb-3">
                        <label style="font-size: large; font-weight: bold; width: 100%; text-align: center" for="en" class="form-label">English</label>
                        <input id="en" name="eng" type="text" class="form-control" value="<?php echo($en) ?>" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="mb-3">
                        <label style="font-size: large; font-weight: bold; width: 100%; text-align: center" for="tr" class="form-label">Türkçe</label>
                        <input id="tr" name="trk" type="text" class="form-control" value="<?php echo($tr) ?>" aria-label="Username" aria-describedby="basic-addon2">
                    </div>
                    <button type="submit" class="btn btn-danger w-100">Güncelle</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>