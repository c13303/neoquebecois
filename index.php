<?php require('header.php'); ?>

<h1>NEOQUEBECOIS</h1>

<p>Dictionnere de la langue destinée à grand-remplacer le français durant les anner 2000</p>
<?php
$p = filter_input(INPUT_GET, 'p', FILTER_SANITIZE_STRING);

$actulettre = null;
?>

<?php if (!$p): ?>
    <?php
    $mots = $mysqli->query('SELECT * FROM mots ORDER BY mot ASC');
    if ($mots) {
        while (($row = mysqli_fetch_array($mots))) {
            $qq = ''
                    . 'SELECT * FROM phrases p '
                    . 'JOIN relation r '
                    . 'ON p.id = r.idp '
                    . 'WHERE r.idm = ' . $row['id'];
            // echo $qq;
            $citationsQ = $mysqli->query($qq);

            $lettre = substr($row['mot'], 0, 1);

            if ($actulettre != $lettre) {
                ?><h2><?= ucfirst($lettre); ?></h2> <?php
            }
            $actulettre = $lettre;
            ?>
            <div class="def motcontainer-<?= $row['mot']; ?>">
                <a href="#m" class="mot" data-mot="<?= $row['mot']; ?>">
                    <h3><?= ucfirst(strtolower($row['mot'])); ?></h3>
                </a>
            <?php while ($ci = mysqli_fetch_array($citationsQ)) : ?>
                    <p class="phrase"><?= phrase_prepare($ci['phrase'], $row['mot']); ?>
                        <br/><span class="source">
                            <a target="_blank" href="<?= $ci['url']; ?>">(source)</a>
                        </span>

                    </p>
            <?php endwhile; ?>
            </div>
            <?php
        }
    }
    ?>
<?php endif; ?>
<hr/>

<p>Vous acceptez de participer ? Suggérez les URL à scrapper <a href="suggest.php">sur cette page !</a></p>
<hr/>
<?php require('footer.php'); ?>