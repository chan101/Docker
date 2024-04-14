<?php
// Database connection details
$servername = "mysql";
$username = "root";
$password = "chan";
$dbname = "visitor";

// Establish connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get IP address and user agent of the visitor
$ip = $_SERVER['REMOTE_ADDR'];
$user_agent = $_SERVER['HTTP_USER_AGENT'];

// Prepare SQL statement
$sql = "INSERT INTO visitor_log (ip_address, user_agent) VALUES (?, ?)";

// Prepare and bind parameters
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $ip, $user_agent);

// Execute the statement
$stmt->execute();

// Close statement and connection
$stmt->close();
$conn->close();
echo "welcome to my site"
?>
