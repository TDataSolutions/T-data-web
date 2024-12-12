<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $packageType = $_POST['package'];
    $companyName = $_POST['companyName'];
    $email = $_POST['email'];
    $phoneNumber = $_POST['phoneNumber'];
    $companyAddress = $_POST['companyAddress'];
    $message = $_POST['message'];

    $conn = new mysqli('localhost', 'root', '', 'website_db');
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $stmt = $conn->prepare("INSERT INTO package_messages (package_type, company_name, email, phone_number, company_address, message) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $packageType, $companyName, $email, $phoneNumber, $companyAddress, $message);

    if ($stmt->execute()) {
        echo "Message sent successfully to T Data Solutions!";
    } else {
        echo "Error 404: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
