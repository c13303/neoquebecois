<?php

/* file created by charles.torris@gmail.com */
require('sys/sql.php');
require('classes/mot.php');
require('classes/phrase.php');

$v=time();

function phrase_prepare($phrase,$mot){
    $phrase = str_replace($mot,'<b>'.$mot.'</b>',$phrase);
    $phrase = '<em>'.$phrase.'</em>';
    return($phrase);
}

function suggest($url, $ip) {
    global $mysqli;
    
    $c = 'SELECT count(id) AS c FROM suggestions WHERE ip="' . $ip . '"';
    $co = $mysqli->query($c);
    $cou = mysqli_fetch_array($co);
    if($cou['c']>5){
        return null;
    }


    $q = 'SELECT id FROM suggestions WHERE url="' . $url . '" LIMIT 1';   
    
    $result = $mysqli->query($q);
     $id = mysqli_fetch_array($result);
    if ($id['id']) {
        return(false);
    } else {
        $q = 'INSERT INTO suggestions (url,ip) VALUES("'.$url.'","'.$ip.'")';
      
        $mysqli->query($q);
    }
}
