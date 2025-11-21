<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Your Profile</title>

    <style>
        body {
            background: linear-gradient(135deg, #000814, #001d3d);
            font-family: Poppins, sans-serif;
            color: #fff;
            display: flex;
            justify-content: center;
            padding-top: 40px;
        }
        .card {
            background: rgba(255,255,255,0.07);
            padding: 30px;
            border-radius: 15px;
            width: 480px;
            box-shadow: 0 0 20px rgba(0,140,255,0.3);
            backdrop-filter: blur(10px);
        }
        h2 {
            text-align: center;
            color: #4da3ff;
        }
        .photo {
            width: 140px;
            height: 140px;
            border-radius: 50%;
            display: block;
            margin: 15px auto;
            object-fit: cover;
            border: 3px solid #4da3ff;
            box-shadow: 0 0 12px rgba(0, 140, 255, 0.4);
        }
        .info { margin-bottom: 18px; }
        label { font-weight: bold; color: #77b7ff; }

        .btn {
            background: #0077ff;
            padding: 12px;
            border: none;
            border-radius: 8px;
            width: 100%;
            color: white;
            font-size: 16px;
            text-align: center;
            margin-top: 15px;
            display: block;
            text-decoration: none;
        }
        .btn:hover { background: #005fcc; }
    </style>

</head>

<body>
    <div class="card">

        <h2>Your Profile</h2>

        <img class="photo" src="data:image/jpeg;base64,${photo}" alt="Profile Photo">

        <div class="info">
            <label>Name:</label>
            <p>${name}</p>
        </div>

        <div class="info">
            <label>Student ID:</label>
            <p>${studentId}</p>
        </div>

        <div class="info">
            <label>Program:</label>
            <p>${program}</p>
        </div>

        <div class="info">
            <label>Email:</label>
            <p>${email}</p>
        </div>

        <div class="info">
            <label>Hobbies:</label>
            <p>${hobbies}</p>
        </div>

        <div class="info">
            <label>Self Introduction:</label>
            <p>${intro}</p>
        </div>

        <!-- BACK BUTTON -->
        <a href="profile.html" class="btn">Back to Form</a>

    </div>
</body>
</html>
