<!DOCTYPE html>
<html>
<head>
    <title>Luxury Rooms - Ocean View Resort</title>
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
        }
        
        /* Info Box for Swimming Pool Description */
.info-box {
    max-width: 1000px;       /* box width */
    margin: 40px auto;      /* centered */
    padding: 25px 30px;
    background: linear-gradient(135deg, #0080c0, #00b4db); /* blue gradient */
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
    </style>
</head>
<body>

<h1>Luxury Rooms Gallery</h1>
<div class="info-box">
    <p>
        Luxuriate in stylish comfort while soaking up spectacular views from your own private pool and enjoy impeccable service coupled with every modern convenience.
        <br><br>
        The swimming pools are for private use for the occupants of the suites. Privacy of the swimming pools cannot be guaranteed as the swimming pools are outdoors and may be seen by other guests.
        <br><br>
        If you require a higher level of privacy and luxury we recommend that you book the Grand Deluxe Suite with Pool or for ultimate privacy and luxury the Jetwing Saman Villa Suite with Pool.
    </p>
</div>
<div class="gallery">
    <img src="images/1.jpg">
    <img src="images/2.jpg">
    <img src="images/3.jpg">
    <img src="images/4.jpg">
    
</div>

<a href="first.jsp" class="back-btn">Back</a>

</body>
</html>