<?php
            require_once ('vendor/autoload.php');
            use \Statickidz\GoogleTranslate;

            $post=$_POST["word"];

            $source = 'en';
            $target = 'tr';
            $text = $post;

            $trans = new GoogleTranslate();
            $result = $trans->translate($source, $target, $text);
            echo $result;
?>