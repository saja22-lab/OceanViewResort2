<!DOCTYPE html>
<html>
<head>
    <title>Event & Wedding Hall - Ocean View Resort</title>
    <style>
        body {
            font-family: Arial;
            margin: 0;
            background: #f4f9fc;
        }

        h1 {
            text-align: center;
            padding: 40px 0;
            color: #0A3D62;
        }

        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding-bottom: 60px;
        }

        .gallery img {
            width: 300px;
            height: 220px;
            object-fit: cover;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
            transition: 0.4s;
        }

        .gallery img:hover {
            transform: scale(1.08);
        }

        .back-btn {
            display: block;
            width: 150px;
            margin: 20px auto;
            padding: 12px;
            background: #0080c0;
            color: #fff;
            text-align: center;
            border-radius: 30px;
            text-decoration: none;
            transition: 0.3s;
        }

        .back-btn:hover {
            background: #005f8f;
        }
        
        /* Info Box for Event & Wedding Hall */
.info-box {
    max-width: 900px;
    margin: 40px auto;
    padding: 30px 35px;
    background: linear-gradient(135deg, #6a11cb, #2575fc); /* purple-blue gradient for elegance */
    border-radius: 20px;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
    color: #fff;
    font-size: 16px;
    line-height: 1.8;
    text-align: justify;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.info-box:hover {
    transform: translateY(-5px);
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.35);
}

.info-box h2 {
    margin-top: 0;
    margin-bottom: 15px;
    font-size: 28px;
    color: #FFD700; /* gold heading */
}
    </style>
</head>
<body>

<h1>Event & Wedding Hall Gallery</h1>
<div class="info-box">
    <h2>Event & Wedding Hall</h2>
    <p>
        Capture the romance of the ocean, golden sandy beaches, and the vibrant sunsets with an Ocean View Resort beach wedding. The most awe-inspiringly beautiful location for a beach wedding. Sri Lanka boasts some of the most beautiful stretches of beach, and the pristine beaches on either side of Ocean View Resort are among the best.
    </p>
</div>
<div class="gallery">
    <img src="images/31.jpg" alt="Event Hall 1">
    <img src="images/32.jpg" alt="Event Hall 2">
    <img src="images/33.jpg" alt="Event Hall 3">
    <img src="images/34.jpg" alt="Event Hall 4">
    <img src="images/35.jpg" alt="Event Hall 5">
</div>

<a href="first.jsp" class="back-btn">Back</a>

</body>
</html>