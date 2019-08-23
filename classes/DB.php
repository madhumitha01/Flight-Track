<?php
	$servername = 127.0.0.1;
	$username = root;
	$password = ""; //default password
	$db       = "airbus";

	// Create connection. Note taht we are using the OOP style here for PHP. $conn is now an object.
	$conn = new mysqli($servername, $username, $password,$db);
	   
  	// Check connection
	if ($conn->connect_error) 
{
		die("Connection failed: " . $conn->connect_error);
}
?>