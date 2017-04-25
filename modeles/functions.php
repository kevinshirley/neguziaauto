<?php


	$connexion = connectDB();

##################################################
// Conection a la base de donnee
##################################################

	function connectDB()
	{
		$c = mysqli_connect("localhost", "root", "");

		mysqli_query($c, "SET character_set_results=utf8");
	    mb_language('uni'); 
	    mb_internal_encoding('UTF-8');
	    mysqli_select_db($c, "developer");
	    mysqli_query($c, "set names 'utf8'");

		if(!$c)
		{
			die("Erreur de connexion : " . mysqli_connect_error());
		}

		$selection = mysqli_select_db($c, "developer");
		if(!$selection)
		{
			die("La base de données n'existe pas.");
		}

		return $c;
	}

##################################################
// Filtre
##################################################

	function filtre($variable)
	{
		global $connexion;
		$variable = mysqli_real_escape_string($connexion, $variable);
		return $variable;
	}

##############################################
// insertFormData
##############################################
	function insertFormData($name, $email, $website, $subject, $message)
	{
		global $connexion;
		$requete = "INSERT INTO formData(name, email, website, subject, message) VALUES ('" . filtre($name) . "', '" . filtre($email) . "', '" . filtre($website) . "', '" . filtre($subject) . "', '" . filtre($message) . "')";
		$resultat = mysqli_query($connexion, $requete);
		return true;
		// var_dump($resultat);
	}

##############################################
// 
##############################################

	

##################################################
// Authentification
##################################################

	function authentification($usager, $motdepasse)
	{
		global $connexion;
		
		$requete = "SELECT usager, motdepasse 
		FROM loginAdmin 
		WHERE usager = '" .  filtre($usager) . "' 
		AND motdepasse = '" . filtre($motdepasse)  . "'";
		
		$resultat = mysqli_query($connexion, $requete);
		// echo $requete;
		if($rangee = mysqli_fetch_assoc($resultat))
		{
			return 1;	
		}
		else
		{
			return 0;
		}
	}

##################################################
// Deconnection
##################################################

	function deconnection()
	{
		$_SESSION = array();

		// If it's desired to kill the session, also delete the session cookie.
		// Note: This will destroy the session, and not just the session data!
		if (ini_get("session.use_cookies")) {
			$params = session_get_cookie_params();
			setcookie(session_name(), '', time() - 42000,
				$params["path"], $params["domain"],
				$params["secure"], $params["httponly"]
			);
		}

		// Finally, destroy the session.
		session_destroy();

	}

?>