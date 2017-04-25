<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Vente de véhicule d'occasion et neuf | Neguzia Auto</title>
    <meta name="author" content="">
	<meta name="description" content="">
    <meta name="keywords" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Heebo:300" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link rel="shortcut icon" href="ui/img/favicon.ico" type="image/x-icon">
    <!-- <script src="ux/main.js"></script> -->
    <!-- <script src="ux/modernizr.js"></script> -->
    <!-- <link rel="stylesheet" href="ui/animate.css"> -->
    <link rel="stylesheet" type="text/css" href="ui/main.css">
    <!-- <link rel="stylesheet" type="text/css" href="ui/style.css"> -->
</head>
<body>
<div class="fullcontainer">

	<nav class="headMenu">
		<div class="logo">
			<a href="index.php"><img src="ui/img/neguziaLogo.png" alt="Neguzia Auto"></a>
		</div>
		<div class="info">
			<h1>Neguzia Auto</h1>
			<p>9590 Henri-Bourassa East Unit# 101, Montreal, QC, H1E2S4 | <a href="tel:855-532-9281" id="phone">✆</a></p>
		</div>
	</nav>
	<nav class="headNav">
		<div class="navList">
			<a href="#">Inventaire ▾</a>
			<a href="#">Financement</a>
			<a href="#">Garantie</a>
			<a href="#">Nous Joindre</a>
		</div>
	</nav>

    <?php echo $contenu; ?>

	<footer class="footer">
		<div class="foot-1">
			<div><a href="index.php?action=portfolio">Portfolio</a></div>
			<div><a href="index.php?action=services">Services</a></div>
			<div><a href="index.php?action=home">Blog</a></div>
			<div><a href="index.php?action=hireme">Hire Me</a></div>
			<div><a href="index.php?action=sitemap">Sitemap</a></div>
		</div>
		<div class="foot-2">
			<div class="copyright"><p>&copy; <?php echo date("Y"); ?> Neguzia Auto, All rights reserved.</p></div>

			<div class="ksShout">
				<div class="shoutContainer">
					<p>Propulsé par <div id="ksLogo"><img src="ui/img/ks.png" alt="Kevin Shirley Logo"></div><a href="http://kevinshirley.com" id="ksTag">Kevin Shirley</a></p>
				</div>
			</div>
		</div>
	</footer>
</div>

</body>