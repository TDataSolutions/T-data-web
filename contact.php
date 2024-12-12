<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    // Get form input data and sanitize it
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $subject = htmlspecialchars($_POST['subject']);
    $message = htmlspecialchars($_POST['message']);
    
    // Set the recipient email address
    $to = "your-email@example.com"; // Replace with your email address
    
    // Set the email subject
    $email_subject = "New message from: " . $name . " - " . $subject;
    
    // Set the email message body
    $email_body = "You have received a new message from the contact form.\n\n".
                  "Name: $name\n".
                  "Email: $email\n".
                  "Subject: $subject\n".
                  "Message:\n$message\n";
    
    // Set the headers for the email
    $headers = "From: $email\r\n";
    $headers .= "Reply-To: $email\r\n";
    $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";

    // Send the email
    if (mail($to, $email_subject, $email_body, $headers)) {
        echo "Your message has been sent. Thank you!";
    } else {
        echo "Something went wrong. Please try again later.";
    }
}
?>
