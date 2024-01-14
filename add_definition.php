<?php
$conn=mysqli_connect("sql310.epizy.com","epiz_33517673","/","epiz_33517673_learn");
$conn->set_charset("utf8");
$word=trim($_POST["word"]);
$def=$_POST["definition"];
$examples = $_POST["examples"];
$list="entoen".$_POST["user"];
$def = htmlentities($def, ENT_QUOTES, "UTF-8");
$examples = htmlentities($examples, ENT_QUOTES, "UTF-8");
mysqli_query($conn,"INSERT INTO $list (id,word,definitions,examples) VALUES(NULL,'$word','$def','$examples')");
?>