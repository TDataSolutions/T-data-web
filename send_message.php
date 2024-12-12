<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $package = htmlspecialchars($_POST["package"]);
    $companyName = htmlspecialchars($_POST["companyName"]);
    $email = htmlspecialchars($_POST["email"]);
    $phoneNumber = htmlspecialchars($_POST["phoneNumber"]); 
    $companyAddress = htmlspecialchars($_POST["companyAddress"]);
    $message = htmlspecialchars($_POST["message"]);

    // Example: Prepare email content
    $emailContent = "Package: $package\n";
    $emailContent .= "Company Name: $companyName\n";
    $emailContent .= "Email Address: $email\n";
    $emailContent .= "Phone Number: $phoneNumber\n"; 
    $emailContent .= "Company Address: $companyAddress\n";
    $emailContent .= "Message: $message\n";

    // Send email or save to database
    mail("info@sahbikram.com.np", "New Client Inquiry", $emailContent);

    echo "Thank you! Your message has been received T Data Solutions.";
}
?>
