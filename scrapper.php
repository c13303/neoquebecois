<?php require('adminheader.php'); ?>

<h1>NEOQUEB_SCRAPPER</h1>

<?php
$url = filter_input(INPUT_POST, 'url', FILTER_SANITIZE_URL);
$classe = filter_input(INPUT_POST, 'classe', FILTER_SANITIZE_STRING);
$decode = filter_input(INPUT_POST, 'decode', FILTER_SANITIZE_STRING);
$content = filter_input(INPUT_POST, 'content');

if ($url) {
    tweet($url, $classe,$decode,$content);
}
?>



<form action="" method="post">
    <input type="text" class="url" name="url" placeholder="URL à scrapper" value="<?= $url; ?>"/><br/>
    <input type="text" name="classe" placeholder="element à scrapper (default = p)" value="<?= $classe; ?>"/><br/>
    <input type="checkbox" name="decode" checked="checked" value="true" /><br/>
    <textarea name="content"><?= $content; ?></textarea>
    <input type="submit" value="scrap mon fesse" />
</form>
<pre>
   

doctissimo : .post_content
skyblog : .text-image-container  , .comment-item
</pre>
<?php require('footer.php'); ?>