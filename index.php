<?php include 'includes/db_connect.php'; ?>
<!DOCTYPE html>
<html>
<head>
     <!-- Add viewport for mobile devices -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Link CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    <!-- Include JavaScript before closing body -->
    <script src="assets/js/script.js" defer></script>
</head>
<body>
    <h1>Contact Us</h1>
    <form action="submit.php" method="POST">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <textarea name="message" placeholder="Message" required></textarea>
        <button type="submit">Send Message</button>
    </form>
    <script src="assets/js/script.js"></script>
</body>
</html>