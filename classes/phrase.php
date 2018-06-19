<?php

/* file created by charles.torris@gmail.com */

class phrase {
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
    public $phrase;
    
    
    /**
     * PROPDESCRIPTION
     * 
     * @access public
     * @var PROPTYPE
     */
    public $url;

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
    public function getPhrase() {
        return $this->phrase;
    }

    /**
     * METHODDESCRIPTION
     * 
     * @access public
     * @param ARGTYPE $phrase ARGDESCRIPTION
     */
    public function setPhrase($phrase) {
        $this->phrase = $phrase;
        $this->isExist();
    }
    
    
      /**
     * METHODDESCRIPTION
     * 
     * @access public
     * @return RETURNTYPE RETURNDESCRIPTION
     */
    public function getUrl() {
        return $this->url;
    }

    /**
     * METHODDESCRIPTION
     * 
     * @access public
     * @param ARGTYPE $phrase ARGDESCRIPTION
     */
    public function setUrl($url) {
        $this->url = $url;
    }
    
    
    
    
    public function isExist() {
        global $mysqli;
        $q = 'SELECT id FROM phrases WHERE phrase="' . $this->phrase . '" LIMIT 1';
        $result = $mysqli->query($q);        
        $id = mysqli_fetch_array($result);
        if($id['id'])
        {
            $this->id = $id['id'];
        } else {
            return(false);
        }        
    }
    
    
    
    
    
    
    
    
    
    public function loadFromPhrase() {
        global $mysqli;
        
        $result = $mysqli->query('SELECT id FROM phrases WHERE phrase="' . $this->phrase . '"');
        $id = mysqli_fetch_array($result);
        if($id['id'])
        {
            return($id['id']);
        } else {
            return(false);
        }        
    }
    
    public function save(){
        global $mysqli;
        if($this->id){
             $mysqli->query('UPDATE phrases SET phrase = "' . $this->phrase . '",url = "'.$this->url.'" WHERE id = '.$this->id);
        } else {
            if(!$r = $mysqli->query('INSERT INTO phrases (id,phrase,url) VALUES (null,"' . $this->phrase . '","'.$this->url.'")')) echo $mysqli->error;
            $this->id = $mysqli->insert_id;            
        }
    }
}
