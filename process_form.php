<?php
// Establish connection to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "request_form";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Process form data and insert into the database
// Process form data and insert into the database
$time_of_request = $_POST['time'];
$date_of_request = $_POST['date'];
$requester_name = $_POST['requestorName']; // Retrieve signature data from hidden input field
$request_type = $_POST['request'];
$detailed_description = $_POST['detail'];
$action_taken = $_POST['action'];
$approved = $_POST['approved'];

// Check if work_requested is set and it's an array
if (isset($_POST['req']) && is_array($_POST['req']) && !empty($_POST['req'])) {
    // Sanitize and store the selected values
    $work_requested = implode(", ", array_map(array($conn, 'real_escape_string'), $_POST['req']));
} else {
    // If no checkboxes were selected, set a default value or handle it accordingly
    $work_requested = "No work requested";
}



// Insert data into the database
$sql = "INSERT INTO work_requests (time_of_request, date_of_request, requester_name, request_type, work_requested, detailed_description, action_taken, approved) 
        VALUES ('$time_of_request', '$date_of_request', '$requester_name', '$request_type', '$work_requested', '$detailed_description', '$action_taken', '$approved')";

if ($conn->query($sql) === TRUE) {
    //echo "Record inserted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


// Set parameters and execute the statement
$description  = $_POST['workRequestContinuation'];
$student = $_POST['student'];
$course = $_POST['course']; // Retrieve signature data from hidden input field
$year_level = $_POST['year'];
$responsiveness = $_POST['responsiveness'];
$reliability = $_POST['reliability'];
$access = $_POST['access'];
$costs = $_POST['costs'];
$integrity = $_POST['integrity'];
$communication = $_POST['communication'];
$assurance = $_POST['assurance'];
$outcome = $_POST['outcome'];
$suggestions = $_POST['suggestions'];

$sql = "INSERT INTO surveys (description,student,course,year_level,responsiveness,reliability,access,costs,integrity,communication,assurance,outcome,suggestions)
        VALUES ('$description', '$student', '$course','$year_level', '$responsiveness', '$reliability', '$access', '$costs', '$integrity', '$communication', '$assurance', '$outcome', '$suggestions')";


if ($conn->query($sql) === TRUE) {
   echo 'New record created successfully';
} else {
    echo '<script>alert("Error: ' . $stmt->error . '");</script>';
}
?>



