<?php
//controleur
class ViewController
{
	public function homePage()
	{
        $view = new Vue('Home');
        $view->generer(array());
	}

}