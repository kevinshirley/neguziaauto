<?php 

class Form
{
	public function insertHiremeForm($name, $email, $website, $subject, $message){
	    $bdd = SingletonPDO::getInstance();
	    $donnees = $bdd->prepare(
            'INSERT INTO formdata (name, email, website, subject, message) VALUES (:name, :email, :website, :subject, :message)'
        );
	    $donnees->bindParam(':name', $name, PDO::PARAM_STR);
	    $donnees->bindParam(':email', $email, PDO::PARAM_STR);
	    $donnees->bindParam(':website', $website, PDO::PARAM_STR);
	    $donnees->bindParam(':subject', $subject, PDO::PARAM_STR);
	    $donnees->bindParam(':message', $message, PDO::PARAM_STR);
        $donnees->execute();
        return true;
	}

	public function insertHomeForm($email){
	    $bdd = SingletonPDO::getInstance();
	    $donnees = $bdd->prepare(
            'INSERT INTO emailresponsivedecision ( email ) VALUES (:email)'
        );
	    $donnees->bindParam(':email', $email, PDO::PARAM_STR);
        $donnees->execute();
        return $email;
	}
}