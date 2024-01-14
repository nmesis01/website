<?php
$conn=mysqli_connect("sql310.epizy.com","epiz_33517673","/","epiz_33517673_learn");
$conn->set_charset("utf8");
$word_en=$_POST["word_en"];
$ulist=$_POST["ulist"];
mysqli_query($conn,"DELETE FROM $ulist WHERE word_ing='$word_en'");
?>