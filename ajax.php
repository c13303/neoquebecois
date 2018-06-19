<?php require('adminfunctions.php'); 

$action = filter_input(INPUT_POST,"action",FILTER_SANITIZE_STRING);
$word = filter_input(INPUT_POST,"mot",FILTER_SANITIZE_STRING);
$phrasepost = filter_input(INPUT_POST,"phrase",FILTER_SANITIZE_STRING);
$url = filter_input(INPUT_POST,"url",FILTER_SANITIZE_STRING);

if($action == 'pardon'){
    if(!$word)die('rrerur no mot');
    
    $mot = new mot;
    $mot->setMot($word);
    $mot->pardon();
    die(json_encode(array('mot'=>$word)));
}

if($action == 'save'){
    if(!$word || !$phrasepost)
        die('rrerur no mot');
    $phrase = new phrase;
    $phrase->setPhrase($phrasepost);
    $phrase->setUrl($url);
    $phrase->save();
    
    $mot = new mot;
    $mot->setMot($word);
    $mot->save();
    
    $mot->linkToPhrase($phrase->getId());
    
    die(json_encode(array('mot'=>$word)));
}