<?php

/* file created by charles.torris@gmail.com */

class mot {

    /**
     * PROPDESCRIPTION
     * 
     * @access public
     * @var PROPTYPE
     */
    public $id;

    /**
     * PROPDESCRIPTION
     * 
     * @access public
     * @var PROPTYPE
     */
    public $mot;

    /**
     * METHODDESCRIPTION
     * 
     * @access public
     * @return RETURNTYPE RETURNDESCRIPTION
     */
    public function getId() {
        return $this->id;
    }

    /**
     * METHODDESCRIPTION
     * 
     * @access public
     * @param ARGTYPE $id ARGDESCRIPTION
     */
    public function setId($id) {
        $this->id = $id;
    }

    /**
     * METHODDESCRIPTION
     * 
     * @access public
     * @return RETURNTYPE RETURNDESCRIPTION
     */
    public function getMot() {
        return $this->mot;
    }

    /**
     * METHODDESCRIPTION
     * 
     * @access public
     * @param ARGTYPE $mot ARGDESCRIPTION
     */
    public function setMot($mot) {
        $this->mot = $mot;
    }
    
    public function isPardonnable(){
         global $mysqli;
         $q = 'SELECT id FROM pardon WHERE pardon="' . $this->mot . '" LIMIT 1';
         $result = $mysqli->query($q);        
         
         if(!$result){
             return(false);
         } else {
             $result = $result->fetch_array();
             return($result['id']);
         }
    }
    
    public function pardon(){
        global $mysqli;
        if(!$this->isPardonnable()){
            $result = $mysqli->query('INSERT INTO pardon(id,pardon) VALUES(null,"'.$this->mot.'")');   
            if(!$result){
                echo $mysqli->error;
            }
        }
    }

    public function isExist() {
        global $mysqli;
        $result = $mysqli->query('SELECT id FROM mots WHERE mot="' . $this->mot . '" LIMIT 1');     
        if(!$result){
            die($mysqli->error);
        }
        $id = mysqli_fetch_array($result);
        if($id['id'])
        {
            $this->id = $id['id'];
        } else {
            return(false);
        }        
    }
    
    public function save(){
        global $mysqli;
        $this->isExist();

        if($this->id){
             $mysqli->query('UPDATE mots SET mot = "' . $this->mot . '" WHERE id = '.$this->id);
        } else {
            $q = 'INSERT INTO mots (id,mot) VALUES(null,"' . $this->mot . '")';
            if(!$mysqli->query($q)){
                echo $q .' : '.$mysqli->error;
            }
            $this->id = $mysqli->insert_id;            
        }
    }
    
    public function linkToPhrase($idp){
        global $mysqli;
         $q = 'SELECT count(idm) AS c FROM relation WHERE idm=' . $this->id . ' AND idp='.$idp.' LIMIT 1';
         $id = mysqli_fetch_array($mysqli->query($q));
        if($id['c']<1){
              $q = 'INSERT INTO relation (idm,idp) VALUES(' . $this->id . ',' . $idp . ')';
            if(!$mysqli->query($q)){
                echo $q .' : '.$mysqli->error;
            }
         } 
    }

}
