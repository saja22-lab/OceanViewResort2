<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ocean View Resort</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <style>
        /* ===== Reset & Basics ===== */
       body {
    margin: 0;
    padding: 0;
    background: url('images/home.jpg') no-repeat center center fixed;
    background-size: cover;
    font-family: Arial, sans-serif;
}

/* ===== Navbar ===== */
nav {
    background: linear-gradient(135deg, #0A3D62, #1B4F72, #5DADE2); /* gradient background */
    color: #fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 50px;
    position: sticky;
    top: 0;
    z-index: 100;
    box-shadow: 0 5px 20px rgba(0,0,0,0.2); /* subtle shadow */

}

nav {
    background: linear-gradient(135deg, #0A3D62, #1B4F72, #5DADE2);
    color: #fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 50px;
    position: sticky;
    top: 0;
    z-index: 100;
    box-shadow: 0 5px 20px rgba(0,0,0,0.2);
    height: 80px; /* fixed navbar height */
}

nav .logo img { 
    max-height: 80px; /* logo can grow up to navbar height */
    width: auto;      /* maintain aspect ratio */
}
nav .logo img { 
    height: 70px; 
}

nav ul { 
    display: flex; 
    list-style: none; 
}

nav ul li { 
    margin: 0 10px; 
}

nav ul li a { 
    color: #fff; 
    font-weight: bold; 
    transition: 0.3s; 
}

nav ul li a:hover { 
    color: #FFD700; /* gold/yellow hover effect */
}

/* ===== Buttons in Navbar ===== */
.btn { 
    padding: 10px 20px; 
    background: #FFD700; /* yellow shade */
    border: none; 
    border-radius: 8px; 
    color: #0A3D62; /* dark text for contrast */
    font-weight: bold; 
    cursor: pointer; 
    transition: 0.3s; 
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}

.btn:hover { 
    background: #FFC300; /* slightly darker yellow on hover */
    color: #0A3D62;
    transform: translateY(-2px);
}
        /* ===== Home Section ===== */
        .home { position: relative; height:100vh; background: url('images/home/beach.jpg') center/cover no-repeat; display:flex; align-items:center; justify-content:center; }
        .home-overlay { position:absolute; top:0; left:0; width:100%; height:100%; background: rgba(0,0,0,0.4); }
        .home-content { position: relative; text-align:center; color:#fff; max-width:700px; }
        .home-content h1 { font-size:50px; margin-bottom:20px; }
        .home-content p { font-size:18px; margin-bottom:30px; }

        .home-content {
    position: absolute;
    top: 40%; /* move this up or down to adjust vertical position */
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    color: white;
}
/* Logo Section */
.logo {
    display: flex;              /* Arrange image and text in a row */
    align-items: center;        /* Vertically center the text with the image */
}

.logo img {
    height: 50px;               /* Adjust logo height */
    width: auto;                /* Maintain aspect ratio */
    margin-right: 10px;         /* Space between image and text */
}

.logo .resort-name {
    color: #ffffff;             /* Text color */
    font-size: 22px;            /* Text size */
    font-weight: bold;          /* Bold text */
    letter-spacing: 1px;        /* Slight spacing between letters */
    white-space: nowrap;        /* Prevent text from wrapping */
}

.home-content h1 {
    font-size: 3em;
    margin-bottom: 10px;
}

.home-content p {
    font-size: 1.2em;
    margin-bottom: 20px;
}

.home-content .btn {
    background-color: #f8d24e;
    color: black;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
}

        
        /* ===== Sections ===== */
        section { padding:80px 50px; }
        .section-header { text-align:center; margin-bottom:50px; }
        .section-header h1 { font-size:36px; color:#0080c0; }
        .section-header h3 { font-size:22px; color:#fff; margin-bottom:10px; }

        /* ===== About Section ===== */

#about {
    padding: 80px 20px;
    background: linear-gradient(135deg, #0A3D62, #1B4F72, #5DADE2);
    color: #ffffff;
}

.about-content {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 5px;
}

.about-left img {
    width: 80%;
    border-radius: 10px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.3);
}

.about-right {
    flex: 2;
}

.about-right h2 {
    color: #FFD700;  /* Gold */
    margin-bottom: 20px;
    font-size: 28px;
}

.about-right p {
    margin-bottom: 20px;
    color: #f1f1f1;
    line-height: 1.7;
}

       /* ===== Services Section ===== */

#services {
    padding: 80px 20px;
    background: #f4f9fc;
    
}

.services-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 30px;
}

.service-card {
    width: 280px;
    background:  #f4f9fc;
    border-radius: 15px;
    overflow: hidden;
    text-align: center;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    transition: 0.4s;
}

.service-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 15px 35px rgba(0,128,192,0.3);
}

.service-card img {
    width: 100%;
    height: 180px;
    object-fit: cover;
}

.service-card h3 {
    margin: 15px 0 10px;
    color: #0A3D62;
}

.service-card p {
    padding: 0 15px 20px;
    font-size: 14px;
    color: #555;
}

.service-card a {
    text-decoration: none;
    color: inherit;
    display: block;
}

/* ===== Section Header h3 Style ===== */
.section-header h3 {
    color: #0080c0;              /* Ocean blue theme */
    font-size: 18px;
    font-weight: 600;
    letter-spacing: 3px;
    text-transform: uppercase;
    margin-bottom: 10px;
    position: relative;
    display: inline-block;
}

/* Decorative underline */
.section-header h3::after {
    content: "";
    width: 60px;
    height: 3px;
    background: #00bcd4;
    display: block;
    margin: 8px auto 0;
    border-radius: 5px;
}

/* ===== Rooms Section ===== */
#rooms {
    padding: 80px 20px;
    /* About section gradient */
    background: linear-gradient(135deg, #0A3D62, #1B4F72, #5DADE2);
    color: #fff;
}

/* Container */
.rooms-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 35px;
}

/* Room Card */
.room-card {
    background: #ffffff; /* white card */
    border-radius: 20px;
    width: 320px;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
    transition: all 0.4s ease;
    position: relative;
}

/* Hover Effect */
.room-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 20px 40px rgba(0, 128, 192, 0.25);
}

/* Image */
.room-card img {
    width: 100%;
    height: 220px;
    object-fit: cover;
    transition: transform 0.5s ease;
    border-bottom: 1px solid #ddd;
}

.room-card:hover img {
    transform: scale(1.08);
}

/* Content */
.room-card-content {
    padding: 25px 20px;
    text-align: center;
}

.room-card-content h3 {
    color: #0A3D62;
    font-size: 20px;
    margin-bottom: 12px;
}

.room-card-content p {
    color: #555;
    font-size: 14px;
    line-height: 1.6;
    margin-bottom: 20px;
}

/* ===== Button Box ===== */
.room-card-content .btn {
    display: inline-block;
    padding: 12px 25px;
    border-radius: 30px;
    background: linear-gradient(45deg, #FFD700, #FFC300); /* Gold gradient to match About */
    color: #0A3D62; /* Dark blue text */
    font-size: 14px;
    font-weight: 600;
    text-decoration: none;
    box-shadow: 0 5px 15px rgba(255, 215, 0, 0.4);
    transition: all 0.3s ease;
}

/* Button Hover */
.room-card-content .btn:hover {
    background: linear-gradient(45deg, #FFC300, #FFD700);
    transform: scale(1.05);
    box-shadow: 0 8px 20px rgba(255, 215, 0, 0.6);
}
        
        /* ===== Contact Section Styling (Ocean Blue Titles) ===== */
#contact {
    
    padding: 80px 20px;
    color: #fff; /* Default text color */
}

#contact .section-header h3 {
    color: #0080c0; /* Ocean blue like other section headers */
    font-size: 20px;
    letter-spacing: 2px;
    text-transform: uppercase;
    margin-bottom: 10px;
    position: relative;
    display: inline-block;
}

/* Decorative underline like other sections */
#contact .section-header h3::after {
    content: "";
    width: 60px;
    height: 3px;
    background: #00bcd4;
    display: block;
    margin: 8px auto 0;
    border-radius: 5px;
}

#contact .section-header h1 {
    color: #0080c0; /* Ocean blue main heading */
    font-size: 36px;
}

.contact-form {
    max-width: 600px;
    margin: 40px auto 0;
    background: rgba(255,255,255,0.1); /* semi-transparent box */
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.3);
    backdrop-filter: blur(10px); /* frosted glass effect */
}

.contact-form h3 {
    text-align: center;
    margin-bottom: 30px;
    color: #0080c0; /* Form heading ocean blue */
    font-size: 24px;
}

.contact-form input, 
.contact-form textarea {
    width: 100%;
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 10px;
    border: none;
    outline: none;
    font-size: 16px;
    background: rgba(255,255,255,0.2);
    color: #fff; /* text inside inputs white */
    transition: 0.3s;
}

.contact-form input::placeholder,
.contact-form textarea::placeholder {
    color: #f1f1f1; /* placeholder white */
}

.contact-form input:focus,
.contact-form textarea:focus {
    background: rgba(255,255,255,0.3);
}

.contact-form input[type="submit"] {
    background: #FFD700; /* gold button */
    color: #0A3D62;      /* dark text */
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
    border-radius: 30px;
    padding: 15px 25px;
    border: none;
    font-size: 16px;
}

.contact-form input[type="submit"]:hover {
    background: #FFC300; /* slightly darker gold hover */
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(255, 215, 0, 0.6);
}

/* Contact Details */
.contact-details{
    text-align:center;
    margin-top:20px;
    font-size:18px;
    color:#ffffff;
}

.contact-details p{
    margin:8px 0;
}

/* Google Map */
.map-container{
    max-width:800px;
    margin:40px auto;
}
        /* ===== Footer ===== */
        footer { background:#0080c0; color:#fff; text-align:center; padding:30px 20px; }
        footer a { color:#ffde59; margin:0 10px; }
        footer a:hover { text-decoration:underline; }

        /* ===== Footer ===== */
footer {
    background: linear-gradient(135deg, #0A3D62, #1B4F72, #5DADE2);
    color: #fff;
    text-align: center;
    padding: 15px 20px;

    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
}

footer a {
    color: #ffde59;
    margin: 0 10px;
}

footer a:hover {
    text-decoration: underline;
}

/* ===== Sticky navbar offset for sections ===== */
section {
    scroll-margin-top: 80px; /* adjust to match navbar height + spacing */
}

/* ===== Responsive ===== */
@media(max-width:900px){ 
    .about-content { flex-direction:column; } 
    .services-container,.rooms-container { flex-direction:column; align-items:center; } 
}

        /* ===== Responsive ===== */
        @media(max-width:900px){ .about-content { flex-direction:column; } .services-container,.rooms-container { flex-direction:column; align-items:center; } }
    </style>
</head>
<body>
    
    <!-- ===== Navbar ===== -->
<nav>
    <div class="logo">
        <img src="images/Beach_Resort_Logo-removebg-preview (1).png" alt="Ocean View Logo">
        <span class="resort-name">Ocean View Resort</span>
    </div>
    <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#services">Services</a></li>
        <li><a href="#rooms">Rooms</a></li>
        <li><a href="#contact">Contact</a></li>
    </ul>
    <a href="login.jsp" class="btn">Login</a>
</nav>

<!-- ===== Home Section ===== -->
<section class="home" id="home">
    <div class="home-overlay"></div>
    <div class="home-content">
        <h1>Welcome to <br>Ocean View Resort</h1>
        <p>Experience luxury and comfort by the beautiful beaches of Galle. Book your perfect stay now!</p>
        <a href="addReservation.jsp" class="btn">Book Now</a>
    </div>
</section>
    <br>

    <!-- ===== About Section ===== -->
<section id="about">
    <div class="section-header">
        <h3>About Us</h3>
        <h1>Luxury Beachside Stay</h1>
    </div>
    <div class="about-content">
        <div class="about-left">
            <img src="images/home1.jpg" alt="Resort">
        </div>
        <div class="about-right">
            <h2>Ocean View Resort</h2>
            <p>
                Ocean View Resort, located in the beautiful coastal city of Galle, 
                offers a perfect blend of modern luxury and natural beauty. 
                Overlooking the sparkling Indian Ocean, our resort provides 
                breathtaking sea views, private beach access, and a peaceful 
                tropical atmosphere.
            </p>
            <p>
                Our elegantly designed rooms and suites are equipped with 
                modern amenities including air conditioning, free Wi-Fi, 
                smart TVs, and private balconies with panoramic ocean views. 
                Guests can enjoy a wide range of facilities such as an infinity 
                swimming pool, spa and wellness center, fine-dining restaurant, 
                and 24-hour room service.
            </p>
            <p>
                Whether you are planning a romantic honeymoon, a relaxing 
                family vacation, or a corporate retreat, Ocean View Resort 
                ensures exceptional hospitality and personalized service 
                to make your stay truly unforgettable.
            </p>
        </div>
    </div>
</section>
    
  <!-- ===== Services Section ===== -->
<section id="services">
    <div class="section-header">
        <h3>Our Services</h3>
        <h1>What We Offer</h1>
    </div>

    <div class="services-container">

        <div class="service-card">
            <a href="luxuryRooms.jsp">
                <img src="images/1.jpg" alt="Luxury Rooms">
                <h3>Luxury Rooms</h3>
                 <p>Comfortable rooms with stunning ocean views, smart TVs, and relaxing interiors.</p>
            </a>
        </div>

        <div class="service-card">
            <a href="fineDining.jsp">
            <img src="images/6.jpg" alt="Fine Dining">
            <h3>Fine Dining</h3>
            <p>Enjoy gourmet Sri Lankan seafood and international cuisines prepared by expert chefs.</p>
            </a>
        </div>

        <div class="service-card">
            <a href="spa.jsp">
            <img src="images/7.jpg" alt="Spa">
            <h3>Spa & Wellness</h3>
            <p>Relax with Ayurvedic therapies and wellness treatments.</p>
            </a>
        </div>

        <div class="service-card">
            <a href="pool.jsp">
            <img src="images/8.jpg" alt="Swimming Pool">
            <h3>Infinity Swimming Pool</h3>
            <p>Outdoor infinity pool with ocean views and poolside service.</p>
            </a>
        </div>

        <div class="service-card">
            <a href="beach.jsp">
            <img src="images/9.jpg" alt="Private Beach">
            <h3>Private Beach Access</h3>
            <p>Direct access to a clean, private beach for relaxing sunsets.</p>
            </a>
        </div>

        <div class="service-card">
            <a href="fitness.jsp">
            <img src="images/10.jpg" alt="Gym">
            <h3>Fitness Center</h3>
            <p>Modern gym facilities with professional trainers.</p>
            </a>
        </div>

        <div class="service-card">
            <a href="events.jsp">
            <img src="images/11.jpg" alt="Events">
            <h3>Event & Wedding Hall</h3>
            <p>Elegant banquet halls for weddings and conferences.</p>
            </a>
        </div>

    </div>
</section>
  
   <!-- ===== Rooms Section ===== -->
<section id="rooms">
    <div class="section-header">
        <h3>Our Rooms</h3>
        <h1>Choose Your Stay</h1>
    </div>

    <div class="rooms-container">

        <div class="room-card">
            <img src="images/1.jpg" alt="Standard Room">
            <div class="room-card-content">
                <h3>Standard Room</h3>
                <p>Cozy room with ocean view, air conditioning, free Wi-Fi, and modern bathroom. Ideal for solo travelers or couples.</p>
                <a href="addReservation.jsp" class="btn">Book Now</a>
            </div>
        </div>

        <div class="room-card">
            <img src="images/2.jpg" alt="Deluxe Room">
            <div class="room-card-content">
                <h3>Deluxe Room</h3>
                <p>Spacious room with private balcony, work desk, mini bar, and premium bedding. Perfect for families or long stays.</p>
                <a href="addReservation.jsp" class="btn">Book Now</a>
            </div>
        </div>

        <div class="room-card">
            <img src="images/3.jpg" alt="Suite">
            <div class="room-card-content">
                <h3>Luxury Suite</h3>
                <p>Luxury suite featuring private terrace, living area, jacuzzi bathtub, and panoramic ocean views.</p>
                <a href="addReservation.jsp" class="btn">Book Now</a>
            </div>
        </div>

        <div class="room-card">
            <img src="images/4.jpg" alt="Family Room">
            <div class="room-card-content">
                <h3>Family Room</h3>
                <p>Large interconnected rooms designed for families with kids, including extra beds and entertainment facilities.</p>
                <a href="addReservation.jsp" class="btn">Book Now</a>
            </div>
        </div>

        <div class="room-card">
            <img src="images/5.jpg" alt="Presidential Suite">
            <div class="room-card-content">
                <h3>Presidential Suite</h3>
                <p>Our most exclusive accommodation featuring private lounge, butler service, premium dining, and unmatched luxury.</p>
                <a href="addReservation.jsp" class="btn">Book Now</a>
            </div>
        </div>

    </div>
</section>
   
<!-- ===== Contact Section ===== -->
<section id="contact">
    <div class="section-header">
        <h3>Contact Us</h3>
        <h1>Get in Touch</h1>
    </div>

    <!-- Contact Details -->
    <div class="contact-details">
        <p><strong>📞 Phone:</strong> +94 91 234 5678</p>
        <p><strong>📧 Email:</strong> info@oceanviewresort.com</p>
        <p><strong>📠 Fax:</strong> +94 91 234 5679</p>
        <p><strong>📍 Address:</strong> Ocean View Resort, Galle, Sri Lanka</p>
    </div>

    <!-- ===== Contact Section ===== -->
<section id="contact" style="padding: 50px; ">
   

    <!-- Flex Container for Form and Map -->
    <div class="contact-wrapper" style="display: flex; flex-wrap: wrap; gap: 20px; justify-content: center; align-items: flex-start;">

        <!-- Contact Form -->
        <div class="contact-form" style="flex: 1 1 300px; max-width: 450px;  padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
            <form action="ContactServlet" method="post" style="display: flex; flex-direction: column; gap: 15px;">
                <input type="text" name="name" placeholder="Your Name" required style="padding: 10px; border-radius: 5px; border: 1px solid #ccc;">
                <input type="text" name="email" placeholder="Your Email" required style="padding: 10px; border-radius: 5px; border: 1px solid #ccc;">
                <textarea name="message" rows="5" placeholder="Your Message" required style="padding: 10px; border-radius: 5px; border: 1px solid #ccc;"></textarea>
                <input type="submit" value="Send Message" style="padding: 12px; border-radius: 5px; border: none; background-color: #007BFF; color: #fff; cursor: pointer;">
            </form>
        </div>

        <!-- Google Map -->
        <div class="map-container" style="flex: 1 1 300px; max-width: 600px;">
            <iframe
                src="https://maps.google.com/maps?q=galle%20sri%20lanka&t=&z=13&ie=UTF8&iwloc=&output=embed"
                width="100%"
                height="350"
                style="border:0; border-radius:10px;"
                allowfullscreen=""
                loading="lazy">
            </iframe>
        </div>

    </div>
</section>
    
    
    
    <!-- ===== Footer ===== -->
    <footer>
        <p>&copy; 2026 Ocean View Resort. All Rights Reserved.</p>
        <div>
           <a href="https://www.facebook.com/share/1HG5VGa72o/" target="_blank" style="text-decoration:none; color:#37076d; font-size:30px;">
        <i class="fab fa-facebook"></i>
      </a>
      <a href="https://www.instagram.com/lothishan8?igsh=a3NuY2o5aG03dXY5&utm_source=ig_contact_invite " target="_blank" style="text-decoration:none; color:#37076d; font-size:30px;">
  <i class="fab fa-instagram"></i>
</a>
        </div>
    </footer>
</body>
</html>