<?php require('header.php'); ?>

<h1><a href="/">NEOQUEBECOIS</a> SCRAPPER</h1>

<?php
$url = filter_input(INPUT_POST, 'url', FILTER_SANITIZE_URL);
$nada = filter_input(INPUT_POST, 'nada', FILTER_SANITIZE_STRING);
if ($url && !$nada) {
    
    suggest($url,$_SERVER['REMOTE_ADDR']);
    ?>
<h2>Merci pour votre participation ! L'URL est en cours de scrapping de son Néoquébécois.</h2>
<?php 

} else {
?>



<form action="" method="post">
    <input type="text" class="url" name="url" placeholder="URL à scrapper" value=""/><br/>
    <input type="text" class="nada" name="nada" placeholder="Your email" value="" style="display:none;"/><br/>

    <input type="submit" value="scrap mon fesse" />
</form>

<?php } require('footer.php'); ?>