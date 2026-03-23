<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background-color: #300e0e;
        
        }
        .content{
            margin-top: 50px;
        }
        h1 {
            font-size: 50px;
        }
        .taskbar {
            position: fixed;
            top: 0;
            width: 100%;
            height: 100px;
            background: #630c0c;
            color: lightgoldenrodyellow;
            display: flex;
            align-items: center;
            padding-left: 20px;
            z-index: 1000;
        }
        .logo {
            cursor: pointer;
            font-size: 50px;
            font-weight: bold;
            text-decoration: none;
                color: lightgoldenrodyellow;
                
        }
        .active {
            color: lightgoldenrodyellow;
            text-decoration: none;
        }
        .menu{
            margin-left: 50px;
            width: 200px;
            margin-left: 50px;
                display: flex;
                gap: 50px;
                font-size: 20px;
        }
        .login {
            margin-left: auto;
            margin-right: 80px;
            display: flex;
            gap: 20px;
            font-size: 20px;
        }
        .wrapper {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            width: 400px;
            background: rgba(0, 0, 0, 0.4);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .tabs {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        .tabs button {
            background: none;
            border: none;
            color: lightgoldenrodyellow;
            font-size: 18px;
            cursor: pointer;
            padding: 10px;
            border-bottom: 2px solid transparent;
        }

        .tabs button.active {
            border-color: #ffd700;
        }

        form {
            display: none;
            flex-direction: column;
        }

        form.active {
            display: flex;
        }

        input {
            margin-bottom: 15px;
            padding: 10px;
            border-radius: 8px;
            border: none;
            outline: none;
        }

        button.submit {
            padding: 10px;
            border: none;
            border-radius: 8px;
            background: #ffd700;
            cursor: pointer;
            font-weight: bold;
        }

        button.submit:hover {
            background: #ffcc00;
        }
    </style>
</head>

<body>

    <div class="taskbar">
        <a class="logo" href="index.jsp">Cinimi</a>
        <div class="menu">
            <a href="#" class="active">Phim</a>
            <a href="#" class="active">Rạp</a>
        </div>
        <div class="login">
            <a href="login.jsp" class="active">Đăng nhập</a>
        </div>
    </div>

    <div class="wrapper">
        <div class="container">
            <h2 style="color: lightgoldenrodyellow;">Cinema Account</h2>

            <div class="tabs">
                <button id="loginTab" class="active">Đăng nhập</button>
                <button id="registerTab">Đăng ký</button>
            </div>

            <form id="loginForm" class="active">
                <input type="text" placeholder="Email hoặc số điện thoại" required>
                <input type="password" placeholder="Mật khẩu" required>
                <button class="submit">Đăng nhập</button>
            </form>

            <form id="registerForm">
                <input type="text" placeholder="Họ và tên" required>
                <input type="date" required>
                <input type="text" placeholder="Email hoặc số điện thoại" required>
                <input type="password" placeholder="Mật khẩu" required>
                <input type="password" placeholder="Nhập lại mật khẩu" required>
                <button class="submit">Đăng ký</button>
            </form>
        </div>
    </div>

    <script>
        const loginTab = document.getElementById("loginTab");
        const registerTab = document.getElementById("registerTab");

        const loginForm = document.getElementById("loginForm");
        const registerForm = document.getElementById("registerForm");

        loginTab.onclick = () => {
            loginTab.classList.add("active");
            registerTab.classList.remove("active");

            loginForm.classList.add("active");
            registerForm.classList.remove("active");
        };

        registerTab.onclick = () => {
            registerTab.classList.add("active");
            loginTab.classList.remove("active");

            registerForm.classList.add("active");
            loginForm.classList.remove("active");
        };
    </script>

</body>

</html>