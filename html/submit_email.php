<?php
// Include PHPMailer autoload file
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the email from the form
    $user_email = $_POST['email'];
    
    // Origin email address
    $origin_email = "wabinasandra@gmail.com"; // Replace with your origin email

    // Gmail SMTP configuration
    $smtp_host = 'smtp.gmail.com';
    $smtp_port = 587; // TLS port
    $smtp_username = 'wabinasandra@gmail.com'; // Replace with your Gmail address
    $smtp_password = 'BAULSANDRA  '; // Replace with your Gmail password

    // Email subject
    $subject = "New email submission from your website";

    // Email message
    $message = "You received a new email submission from your website:\n\n";
    $message .= "Email: " . $user_email . "\n";

    // Create a new PHPMailer instance
    $mail = new PHPMailer();

    // SMTP configuration
    $mail->isSMTP();
    $mail->Host = $smtp_host;
    $mail->SMTPAuth = true;
    $mail->Username = $smtp_username;
    $mail->Password = $smtp_password;
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable TLS encryption
    $mail->Port = $smtp_port;

    // Sender and recipient settings
    $mail->setFrom($smtp_username, 'Your Name'); // Replace 'Your Name' with your name
    $mail->addAddress($origin_email); // Add recipient
    $mail->Subject = $subject;
    $mail->Body = $message;

    // Send email
    if ($mail->send()) {
        // Email sent successfully
        http_response_code(200); // Send success response
    } else {
        // Failed to send email
        http_response_code(500); // Send error response
    }
} else {
    // Request method is not POST
    http_response_code(405); // Method Not Allowed
}
?>
