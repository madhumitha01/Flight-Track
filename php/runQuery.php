    <?php
         if(isset($_POST['add'])) {
            $dbhost = 'localhost';
            $dbuser = 'root';
            $dbpass = '';
            $conn = mysql_connect($dbhost, $dbuser, $dbpass,"airbus");
            
            if(! $conn ) {
               die('Could not connect: ' . mysql_error());
            }
            
            if(! get_magic_quotes_gpc() ) {
               $emp_name = addslashes ($_POST['emp_name']);
               $emp_address = addslashes ($_POST['emp_address']);
            }else {
               $emp_name = $_POST['emp_name'];
               $emp_address = $_POST['emp_address'];
            }
            
            $emp_salary = $_POST['emp_salary'];
            
            $sql = "INSERT INTO filght (MSN, Harness_Length, Gross_Weight, Atmospheric_Pressure, Room_Temperature, Source_Arrival_Time, Source_Airport,  Source_Departure_Time, Destination_Airport, Destination_Arrival_Time, Fuel_Capacity_Left, Fuel_Capacity_Right, Fuel_Quantity_Left, Fuel_Quantity_Right, Max_Altitude_reached, Flight_no)". "VALUES ('$1', '$2' , '$3', '$4', '$5', '$6', '$7', '$8', '$9', '$10', '$11', '$12', '$13', '$14', '$15', '$16')";
               
            mysql_select_db('test_db');
            $retval = mysql_query( $sql, $conn );
            
            if(! $retval ) {
               die('Could not enter data: ' . mysql_error());
            }
            
            echo "Entered data successfully\n";
            
            mysql_close($conn);
            ?>