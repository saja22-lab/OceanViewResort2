<!DOCTYPE html>
<html>
<head>
    <title>Fine Dining - Ocean View Resort</title>
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
        
        /* Info Box for Fine Dining */
.info-box {
    max-width: 900px;
    margin: 40px auto;
    padding: 30px 35px;
    background: linear-gradient(135deg, #0A3D62, #1B4F72); /* elegant blue gradient */
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
    color: #FFD700;  /* gold */
}

.info-box h3 {
    margin-top: 25px;
    margin-bottom: 10px;
    font-size: 22px;
    color: #FFD700;
}

.info-box ul {
    padding-left: 20px;
}

.info-box li {
    margin-bottom: 10px;
}

    </style>
</head>
<body>

<h1>Fine Dining Gallery</h1>
<div class="info-box">
    <h2>Dining</h2>
    <p>
        Dining at Jetwing Saman Villas is a gastronomic treat and our Restaurant has been designed to heighten your senses with every detail curated with you in mind. 
        The lighting in all four of our dining areas is handcrafted by renowned Spanish designer Arturo Alvarez, bringing the luxury concept of emotional lighting to Sri Lanka. 
        Be it fine dining in our restaurant with its artisanal screens or more relaxed on our ocean-facing sofa dining or alfresco on the terrace overlooking the stunning infinity pool or enjoying casual dining in The Verandah.
    </p>
    
    <h3>Romantic Dining Locations</h3>
    <ul>
        <li><strong>Rock Dining:</strong> A unique experience ?on the rock? on a pleasantly decorated platform at the edge of the sea.</li>
        <li><strong>Spa Dining:</strong> Enjoy a glass of champagne or your favourite wine in the Relaxation Pavilion and dine by the water garden or the cascading water feature, in total privacy.</li>
        <li><strong>Mangala Pavilion:</strong> Enjoy a glass of champagne or your favourite wine whilst relaxing on the decorated bed and afterwards dine alfresco under the light whilst watching the waves breaking on the rocks down.</li>
        <li><strong>Deck Dining:</strong> On pleasantly decorated platform at the edge of the sea.</li>
        <li><strong>Pool Pavilion:</strong> Overlooking the vast Indian Ocean.</li>
    </ul>
</div>
<div class="gallery">
    <img src="images/12.jpg">
    <img src="images/13.jpg">
    <img src="images/14.jpg">
    <img src="images/15.jpg">
    <img src="images/16.jpg">
</div>

<a href="first.jsp" class="back-btn">Back</a>

</body>
</html>