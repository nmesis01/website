        <?php
            require_once ('vendor/autoload.php');
            use \Statickidz\GoogleTranslate;

            $post=$_POST["word"];

            $source = 'tr';
            $target = 'en';
            $text = $post;

            $trans = new GoogleTranslate();
            $result = $trans->translate($source, $target, $text);
            echo $result;
        ?>