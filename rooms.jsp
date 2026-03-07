<!DOCTYPE html>
<html>
<head>
    <title>Rooms</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f4;
            background: url('images/25.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        h2 {
            text-align: center;
            padding: 20px;
            color: #333;
        }

        .rooms-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .room-card {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            width: 300px;
            overflow: hidden;
            transition: transform 0.2s;
        }

        .room-card:hover {
            transform: scale(1.05);
        }

        .room-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .room-card-content {
            padding: 15px;
        }

        .room-card-content h3 {
            margin: 0 0 10px;
            color: #333;
        }

        .room-card-content p {
            font-size: 14px;
            color: #555;
            margin-bottom: 15px;
        }

        .btn {
            display: inline-block;
            text-decoration: none;
            background: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .btn:hover {
            background: #0056b3;
        }

        .back-link {
            display: block;
            text-align: center;
            margin: 20px;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }

        .back-link:hover {
            color: #0056b3;
        }
    </style>
</head>

<body>

<h2>Available Rooms</h2>

<div class="rooms-container">

    <div class="room-card">
        <img src="images/1.jpg" alt="Standard Room">
        <div class="room-card-content">
            <h3>Standard Room</h3>
            <p>Comfortable room with essential amenities, ideal for solo travelers or short stays.</p>
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
        <img src="images/3.jpg" alt="Luxury Suite">
        <div class="room-card-content">
            <h3>Luxury Suite</h3>
            <p>Luxury suite featuring private terrace, living area, jacuzzi bathtub, and panoramic ocean views.</p>
            <a href="addReservation.jsp" class="btn">Book Now</a>
        </div>
    </div>

</div>

<a href="userDashboard.jsp" class="back-link">Back</a>

</body>
</html>