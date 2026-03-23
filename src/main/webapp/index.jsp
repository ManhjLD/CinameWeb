<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Cinimi</title>
    <link rel="stylesheet" href="style.css">
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

    <section title="hot-film" class="content">
        <img src="https://picsum.photos/id/23/1000" class="bg-image">

        <div class="carousel-container">
            <div class="carousel">
                <img src="https://baokhanhhoa.vn/file/e7837c02857c8ca30185a8c39b582c03/042025/b_20250401144223.webp" class="carousel-image">
                <img src="https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176175/Originals/poster-film-5.jpg" class="carousel-image">
                <img src="https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176175/Originals/poster-film-1.jpg" class="carousel-image">
                <img src="https://khodulieu.sohoa.tuyenquang.gov.vn/congthongtin/media/c9b9e69516dd9ca42d64a824c3e84676.jpg" class="carousel-image">
            </div>

            <button class="arrow-button left-arrow">&#8249;</button>
            <button class="arrow-button right-arrow">&#8250;</button>
        </div>
    </section>
    
    <div title="Film" class="">
        <div style="font-size: 50px; text-align: center; color:lightgoldenrodyellow">
            Phim đang chiếu
        </div>
        <div class="film-collection">
            <div class="film">
                <img src="https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176175/Originals/poster-film-5.jpg" class="film-image">
                <div style="color:lightgoldenrodyellow; text-align: center">Phim 1</div>
            </div>
            <div class="film">
                <img src="https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176175/Originals/poster-film-5.jpg"
                    class="film-image">
                <div style="color:lightgoldenrodyellow; text-align: center">Phim 2</div>
            </div>
            <div class="film">
                <img src="https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176175/Originals/poster-film-5.jpg"
                    class="film-image">
                <div style="color:lightgoldenrodyellow; text-align: center">Phim 3</div>
            </div>
            <div class="film">
                <img src="https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176175/Originals/poster-film-5.jpg"
                    class="film-image">
                <div style="color:lightgoldenrodyellow; text-align: center">Phim 4</div>
            </div>
            <div class="film">
                <img src="https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176175/Originals/poster-film-5.jpg"
                    class="film-image">
                <div style="color:lightgoldenrodyellow; text-align: center">Phim 5</div>
            </div>
            <div class="film">
                <img src="https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176175/Originals/poster-film-5.jpg"
                    class="film-image">
                <div style="color:lightgoldenrodyellow; text-align: center">Phim 6</div>
            </div>
        </div>
    </div>

    <script>
        const images = document.querySelectorAll(".carousel-image");
        const backgroundImage = document.querySelector(".bg-image");

        const leftArrow = document.querySelector(".left-arrow");
        const rightArrow = document.querySelector(".right-arrow");

        let currentIndex = 0;

        function showImage(index) {
            images.forEach(img => img.classList.remove("active"));
            images[index].classList.add("active");

            backgroundImage.style.opacity = 0;

            setTimeout(() => {
                backgroundImage.src = images[index].src.replace("/500", "/1000");
                backgroundImage.style.opacity = 1;
            }, 200);
        }

        showImage(currentIndex);

        rightArrow.addEventListener("click", () => {
            currentIndex = (currentIndex + 1) % images.length;
            showImage(currentIndex);
        });

        leftArrow.addEventListener("click", () => {
            currentIndex = (currentIndex - 1 + images.length) % images.length;
            showImage(currentIndex);
        });
    </script>

</body>

</html>