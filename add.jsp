<!DOCTYPE html>
<html>
<head>
    <title>Add Complaint</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="navbar">
        <div class="brand">Complaint System</div>
        <div class="nav-links">
            <a href="index.html">Home</a>
            <a href="add.jsp">Add Complaint</a>
            <a href="view.jsp">View Complaints</a>
        </div>
    </div>
    <div class="form-section">
        <h2>Add New Complaint</h2>
        <form action="save.jsp" method="post">

            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" id="subject" name="subject" placeholder="Enter subject" required>
            </div>

            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" placeholder="Describe your complaint" required></textarea>
            </div>

            <button type="submit" class="submit-btn">Submit Complaint</button>
        </form>
        <a href="view.jsp" class="btn-back">Back to View Complaints</a>
    </div>
    <div class="footer">
        <p>Complaint Management System &copy; 2026</p>
    </div>
</body>
</html>