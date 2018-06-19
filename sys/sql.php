<?php

/* file created by charles.torris@gmail.com */
/* sql */
require('params.php');
global $mysqli;
$mysqli = mysqli_connect($mysqlserver,$mysqlloggin,$mysqlpassword,$mysqlmaindb);
if (mysqli_connect_errno($mysqli)) {
    echo "Echec lors de la connexion à MySQL : " . mysqli_connect_error();
}