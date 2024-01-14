<?php
$conn=mysqli_connect("sql310.epizy.com","epiz_33517673","Fb2RsTo2Omup1","epiz_33517673_learn");
$first_header = $_POST["firstheader"];
$blog = $_POST["blog"];
mysqli_query($conn,"DELETE FROM $blog WHERE header='$first_header'");
?>