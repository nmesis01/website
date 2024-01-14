<?php
$conn=mysqli_connect("sql310.epizy.com","epiz_33517673","Fb2RsTo2Omup1","epiz_33517673_learn");
$conn->set_charset("utf8");
$first_header = $_POST["firstheader"];
$color = $_POST["color"];
$wght = $_POST["wght"];
$blog = $_POST["blog"];
$styl = $_POST["styl"];
$decoration = $_POST["decoration"];
$texts = $_POST["texts"];
$header = trim($_POST["header"]);
mysqli_query($conn,"UPDATE $blog SET color = '$color' , wght='$wght' , styl='$styl' , decoration='$decoration' ,texts='$texts',header='$header' WHERE BINARY header='$first_header'");
?>