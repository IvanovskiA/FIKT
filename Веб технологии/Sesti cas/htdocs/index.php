<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Server Side Scripting со PHP</title>
</head>
<body>
<?php
echo '<h1>Овој наслов е генериран со PHP</h1><br />';
echo '<h2>Часот во Битола е: ', date('H:i'), '</h2>';
date_default_timezone_set('America/New_York');
echo '<h2>Часот во Њујорк е: ', date('H:i'), '</h2><br />';
?>

Провери колку е часот во:
<form method="get" action="/time.php" style="text-align:right; background-color:lightblue; width:400px; padding:30px">
    <label for="grad">Внеси град во Азија</label>
    <input type="text" id="grad" name="grad" /><br><br>
    <input type="submit" value="Прикажи">
    </form>

</body>
</html>