<!DOCTYPE html>
<html>
<head>
    <title>Infinity Swimming Pool - Ocean View Resort</title>
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
        
        /* Info Box for Infinity Pool */
.info-box {
    max-width: 900px;
    margin: 40px auto;
    padding: 30px 35px;
    background: linear-gradient(135deg, #00b4db, #0080c0); /* refreshing water blue gradient */
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
    color: #FFD700; /* gold for elegance */
}
    </style>
</head>
<body>

<h1>Infinity Swimming Pool Gallery</h1>
<div class="info-box">
    <h2>Infinity Swimming Pool</h2>
    <p>
        Facilities & Activities: Infinity Pools - The iconic infinity pool overlooking the jungle and lake is breathtaking, perfect for a relaxing swim.
    </p>
   
</div>
<div class="gallery">
    <img src="images/21.jpg">
    <img src="images/22.jpg">
    <img src="images/23.jpg">
    <img src="images/24.jpg">
    <img src="images/5.jpg">
</div>

<a href="first.jsp" class="back-btn">Back</a>

</body>
</html>