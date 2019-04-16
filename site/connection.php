<?php
	$HOST="localhost";
	$USER="root";
	$PASSWORD="root";
	$DB="music";
	
	$connection = mysqli_connect($HOST, $USER, $PASSWORD, $DB) or die(mysqli_error());
	mysqli_query($connection, "SET NAMES utf8");
?>