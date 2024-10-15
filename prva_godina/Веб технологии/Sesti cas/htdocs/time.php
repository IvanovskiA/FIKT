<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Server Side Scripting со PHP</title>
</head>
<body>
<?php
if (isset($_GET['grad'])) {
	date_default_timezone_set('Asia/'.$_GET['grad']); 
	echo '<h1>Часот во ', $_GET['grad'], ' e: ', date('H:i'), '</h1>'; 
}
?>
</body>
</html>