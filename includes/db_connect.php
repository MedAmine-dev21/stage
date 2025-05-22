<?php
$host = "localhost";
$user = "root";      // Default XAMPP/WAMP username
$pass = "";          // Default password (empty)
$db   = "stage_db";  // Database name you created

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>