<!DOCTYPE html>
<html>
<head>
    <title>Spa & Wellness - Ocean View Resort</title>
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
        
        /* Info Box for Spa */
.info-box {
    max-width: 900px;
    margin: 40px auto;
    padding: 30px 35px;
    background: linear-gradient(135deg, #1B4F72, #0A3D62); /* deep relaxing blue gradient */
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
    color: #FFD700;  /* gold for elegance */
}

    </style>
</head>
<body>

<h1>Spa & Wellness Gallery</h1>
<div class="info-box">
    <h2> Spa & Wellness</h2>
    <p>
        Famed for its Ayurveda resorts, Sri Lanka holds generations of ancient healing wisdom that we are delighted to share with you. 
        At the Sahana Spa equipped with a jacuzzi, sauna, floral bath, and more amidst our secluded water garden, our professional therapists help soothe your mind, body, and soul with our signature Ayurvedic and beauty treatments, and aromatherapy and deep tissue massages.
    </p>
</div>
<div class="gallery">
    <img src="images/16.jpg">
    <img src="images/17.jpg">
    <img src="images/18.jpg">
    <img src="images/19.jpg">
    <img src="images/20.jpg">
</div>

<a href="first.jsp" class="back-btn">Back</a>

</body>
</html>