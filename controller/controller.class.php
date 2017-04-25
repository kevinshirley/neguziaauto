<?php

class Controller {

    private $_ctrlView;

    public function __construct() {
        if(!isset($_GET['action'])){
            $_GET['action'] = 'home';
        }

        $this->_ctrlView = new ViewController();
    }

    public function router() {

        switch($_GET['action']){
            case 'home':
                $this->_ctrlView->homePage();
                break;
            default:
                $this->_ctrlView->homePage();

        }//fin du switch section
    }
    
    /**
    * Lorsque la requête demande la page d'accueil
    * @access public
    */

}