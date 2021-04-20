<?php
// Скрипт проверки
$var = "<div>\n</div>";

echo "ROSBANK";
echo $var;
echo "Hostname is ";
echo  gethostname();

if(isset($_POST['submit']))
{
    header("Location: index.php"); exit();
}

?>
<form method="POST">
<input name="submit" type="submit" value="Выйти">
</form>
