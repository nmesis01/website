<?php
$conn=mysqli_connect("sql310.epizy.com","epiz_33517673","/","epiz_33517673_learn");
$conn->set_charset("utf8");
if(isset($_POST["btn1"]))
{
    if(isset($_POST["name_username"])&&$_POST["name_username"]!=""&&isset($_POST["name_email"])&&$_POST["name_email"]!=""&&isset($_POST["name_password"])&&$_POST["name_password"]!="")
    {
        $user_name=$_POST["name_username"];
        $user_password=$_POST["name_password"];
        $user_email=$_POST["name_email"];
        $select=mysqli_query($conn,"SELECT * FROM users WHERE BINARY username='$user_name'");
        $get_select=mysqli_fetch_assoc($select);
        if(!empty($get_select["username"]))
        {
            header("Location: signup.php?log=same");
        }
        else
        {
            $blog = "blog".$user_name;
            $new=mysqli_query($conn,"CREATE TABLE $blog(id INT AUTO_INCREMENT PRIMARY KEY, color VARCHAR(50) NOT NULL, wght VARCHAR(50) NOT NULL, styl VARCHAR(50) NOT NULL, decoration VARCHAR(50) NOT NULL, texts TEXT NOT NULL, header VARCHAR(50) NOT NULL)");
            $add=mysqli_query($conn,"INSERT INTO users (username, password, mail) VALUES ('$user_name', '$user_password', '$user_email')");
            $list = "listof".$user_name;
            $entoen = "entoen".$user_name;
            mysqli_query($conn,"CREATE TABLE $list(id INT AUTO_INCREMENT PRIMARY KEY, word_ing VARCHAR(50) NOT NULL, word_tr VARCHAR(50) NOT NULL)");
            mysqli_query($conn,"CREATE TABLE $entoen(id INT AUTO_INCREMENT PRIMARY KEY, word TEXT NOT NULL, definitions TEXT NOT NULL, examples TEXT NOT NULL)");
            header("Location: login.php?log=true");
        }
    }
    else
    {
        header("Location: signup.php?log=null");
    }
}
else{
    header("signup.php");
}
?>