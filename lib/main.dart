<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>لعبة تخمين الرقم</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1e1e2e;
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            background: #2b2b3d;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.4);
            text-align: center;
            width: 85%;
            max-width: 350px;
        }
        h2 { margin-bottom: 10px; color: #ff007f; }
        p { color: #cccccc; font-size: 14px; }
        input {
            width: 80%;
            padding: 10px;
            margin: 15px 0;
            border: 2px solid #ff007f;
            border-radius: 8px;
            background: #1e1e2e;
            color: white;
            font-size: 18px;
            text-align: center;
            outline: none;
        }
        button {
            width: 85%;
            padding: 12px;
            background: #ff007f;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
        }
        button:active { background: #d00068; }
        #message {
            margin-top: 15px;
            font-weight: bold;
            font-size: 16px;
        }
    </style>
</head>
<body>

    <div class="card">
        <h2>🎯 تخمين الرقم</h2>
        <p>فكرت برقم بين 1 و 100، تقدر تتوقعه؟</p>
        
        <input type="number" id="guessInput" placeholder="ادخل الرقم..." min="1" max="100">
        <button onclick="checkGuess()">جرب الحظ!</button>
        
        <div id="message"></div>
    </div>

    <script>
        let randomNumber = Math.floor(Math.random() * 100) + 1;
        let attempts = 0;

        function checkGuess() {
            let userGuess = parseInt(document.getElementById('guessInput').value);
            let message = document.getElementById('message');
            attempts++;

            if (isNaN(userGuess) || userGuess < 1 || userGuess > 100) {
                message.style.color = "#ffcc00";
                message.innerHTML = "اكتب رقم بين 1 و 100 يا بطل!";
            } else if (userGuess === randomNumber) {
                message.style.color = "#00ff88";
                message.innerHTML = `🎉 كفووو! عرفت الرقم الصحيح وهو (${randomNumber}) بعد ${attempts} محاولات!`;
            } else if (userGuess < randomNumber) {
                message.style.color = "#ff4757";
                message.innerHTML = "💡 الرقم أكبر من كذا.. جرب رقم أعلى!";
            } else {
                message.style.color = "#ff4757";
                message.innerHTML = "💡 الرقم أصغر من كذا.. جرب رقم أقل!";
            }
        }
    </script>

</body>
</html>