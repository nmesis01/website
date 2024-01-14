<?php
$conn=mysqli_connect("sql310.epizy.com","epiz_33517673","Fb2RsTo2Omup1","epiz_33517673_learn");
$conn->set_charset("utf8");
$color = $_POST["color"];
$wght = $_POST["wght"];
$blog = $_POST["blog"];
$styl = $_POST["styl"];
$decoration = $_POST["decoration"];
$texts = $_POST["texts"];
$header = $_POST["header"];
mysqli_query($conn,"INSERT INTO $blog (id,color,wght,styl,decoration,texts,header) VALUES(NULL,'$color','$wght','$styl','$decoration','$texts','$header')");
?>