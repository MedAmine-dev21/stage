<?php
# =============================================
# DATABASE CONNECTION
# =============================================
// Include the database connection file using absolute path
require __DIR__ . '/includes/db_connect.php';

# =============================================
# SECURITY CHECK - Only process POST requests
# =============================================
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    die('Access denied - form not submitted');
}

# =============================================
# INPUT VALIDATION
# =============================================
// Check if required fields exist
if (!isset($_POST['name'], $_POST['email'], $_POST['message'])) {
    die('Missing required fields');
}

// Trim whitespace from inputs
$name = trim($_POST['name']);
$email = trim($_POST['email']);
$message = trim($_POST['message']);

// Validate email format
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    die('Invalid email format');
}

# =============================================
# DATABASE INSERTION (Secure Prepared Statement)
# =============================================
try {
    // Prepare SQL statement
    $stmt = $conn->prepare("INSERT INTO contacts (name, email, message) VALUES (?, ?, ?)");
    
    // Bind parameters (sss = string, string, string)
    $stmt->bind_param("sss", $name, $email, $message);
    
    // Execute query
    if (!$stmt->execute()) {
        throw new Exception("Execute failed: " . $stmt->error);
    }
    
    # =========================================
    # SUCCESS - Redirect to confirmation page
    # =========================================
    header("Location: view_contacts.php?success=1");
    exit();
    
} catch (Exception $e) {
    # =========================================
    # ERROR HANDLING
    # =========================================
    error_log('Database error: ' . $e->getMessage());
    die("An error occurred. Please try again later.");
    
} finally {
    # =========================================
    # CLEANUP - Close connections
    # =========================================
    if (isset($stmt)) $stmt->close();
    if (isset($conn)) $conn->close();
}
?>