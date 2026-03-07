<%-- 
    Document   : contact
    Created on : Mar 5, 2026, 5:54:31 PM
    Author     : uthay
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<title>Contact - OceanView Resort</title>

<style>

body{
    font-family: Arial, sans-serif;
    margin:0;
    padding:0;
    min-height:100vh;
    background:#f4f4f4;
    background: url('images/25.jpg') no-repeat center center fixed;
            background-size: cover;
}

/* Contact Section */

#contact{
    padding:40px;
    text-align:center;
}

.contact-form{
    width:400px;
    margin:auto;
    
    padding:25px;
    border-radius:8px;
    box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

.contact-form input,
.contact-form textarea{
    width:100%;
    padding:10px;
    margin:10px 0;
    border:1px solid #ccc;
    border-radius:5px;
}

.contact-form input[type="submit"]{
    background:linear-gradient(135deg, #43cea2, #185a9d);
    color:white;
    border:none;
    cursor:pointer;
}

.contact-form input[type="submit"]:hover{
    background:#005f8a;
}

</style>

</head>

<body>

<section id="contact">

<h2>Contact Us</h2>

<div class="contact-form">

<form action="ContactServlet" method="post">

<input type="text" name="name" placeholder="Your Name" required>

<input type="email" name="email" placeholder="Your Email" required>

<textarea name="message" rows="5" placeholder="Your Message" required></textarea>

<input type="submit" value="Send Message">

</form>

</div>

</section>

</body>
</html>
