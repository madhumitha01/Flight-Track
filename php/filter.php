<h1>Filter by Destination</h1>
<form name="test" method="post">
<input type="text" name="sbm" value="" id="sbm" placeholder="Enter the Destination "><p />
<input type="submit" name="login" value="Submit">
</form>
<?php
	$servername = "localhost";
	$username = "root";
	$password = ""; //default password
	$db       = "airbus";

	// Create connection. Note taht we are using the OOP style here for PHP. $conn is now an object.
	$conn = new mysqli($servername, $username, $password,$db);

  	// Check connection
	if ($conn->connect_error) 

		die("Connection failed: " . $conn->connect_error);


		if (isset($_POST['login'])) {
        $username = $_POST['sbm'];

		if($conn->multi_query("Select * from flight where Destination_Airport='$username'"))
		{
	echo"<table border='1'>";
	$res=$conn->store_result();
	$field=$res->fetch_fields();
	echo"<tr>";
	foreach($field as &$head)
	{
		echo"<th>".$head->name."</th>";
	}
	echo"</tr>";
	while($i=$res->fetch_row())
	{
		echo"<tr>";
		foreach ($i as &$j) 
	{
			echo"<td>".$j."</td>";
	}
		echo"</tr>";
	}
	echo "</table>";
}
		}
else

?>




