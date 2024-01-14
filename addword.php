<?php
$conn=mysqli_connect("sql310.epizy.com","epiz_33517673","/","epiz_33517673_learn");
$conn->set_charset("utf8");
$en=trim($_POST["en"]);
$tr=$_POST["tr"];
$list=$_POST["list"];
mysqli_query($conn,"INSERT INTO $list (id,word_ing,word_tr) VALUES(NULL,'$en','$tr')");

?>