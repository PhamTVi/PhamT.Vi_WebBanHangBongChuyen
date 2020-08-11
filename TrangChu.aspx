<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <meta charset="utf-8"/>
    <link href="CSS/TrangChu.css" rel="stylesheet" />
    <link href="CSS/HieuUng.css" rel="stylesheet" />
    <div id="Wrapper-Home">
        <div id="Header-Home">
            <div class="slideshow-container">
            <div class="mySlides fade">
              <img src="Image/AnhBia1.jpg" style="width:100%;height:400px;"/>
            </div>

            <div class="mySlides fade">
              <img src="Image/AnhBai2.jpg" style="width:100%;height:400px;"/>
            </div>

            <div class="mySlides fade">
              <img src="Image/Bai3.jpg" style="width:100%;height:400px;"/>
            </div>
          </div>
          <br/>

          <div style="text-align:center">
            <span class="dot" onclick="currentSlide(0)"></span> 
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
          </div>  
        </div>
    </div>
   

    <div class="Product-section" id="Product">

        <div class="tieude"><br /><br />
            <h2>Volleyball</h2>
            <br /><br />
        </div>

        <div class="row">
            <div class="col span-1-of-4 Product-picture">
                <img src="Image/Bộ1.jpg" alt=""/>
                <a href="TatCaSanPham.aspx"  class="picture-title" style="text-decoration: none" >
                    Beyono
                </a>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="Image/bo21.jpg" alt="" style="margin-left: 10px;"/>
               <a href="TatCaSanPham.aspx"  class="picture-title" style="text-decoration: none" >
                    Beyono
                </a>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="Image/bộ7.jpg" alt="" style="margin-left: 10px;"/>
               <a href="TatCaSanPham.aspx"  class="picture-title" style="text-decoration: none" >
                    Beyono
                </a>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="Image/bo10.jpg" alt=""/>
                <a href="TatCaSanPham.aspx"  class="picture-title" style="text-decoration: none" >
                    Beyono
                </a>
            </div>
        <a href="#" class="cd-top" style="margin-left: -50px; color: black;"><i class="fas fa-chevron-up"  style="color: black; "></i></a>     
        </div>

        <div class="row">
            <div class="col span-1-of-4 Product-picture">
                <img src="Image/banh1.png" alt=""/>
                <a href="TatCaSanPham.aspx"  class="picture-title" style="text-decoration: none" >
                    Bóng chuyền
                </a>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="Image/banh4.jpg" alt="" style="margin-left: 10px;"/>
                <a href="TatCaSanPham.aspx"  class="picture-title" style="text-decoration: none" >
                    Bóng chuyền
                </a>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="Image/banh6.png" alt="" style="margin-left: 10px;"/>
                <a href="TatCaSanPham.aspx"  class="picture-title" style="text-decoration: none" >
                    Bóng chuyền
                </a>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="Image/banh2.jpg" alt=""/>
               <a href="TatCaSanPham.aspx"  class="picture-title" style="text-decoration: none" >
                    Bóng chuyền
                </a>
            </div>
        </div>
    </div>

    <div class="MucsicEducation" id="Education">
        <div class="tieude"><br /><br />
            <h2> New video
               
            </h2><br />
        </div>

        <div class="row">
            <div class="col span-1-of-4 MucsicEducation-picture">
                <a href="https://www.youtube.com/watch?v=FSma7sxrzZw&t=2s">
                    <img src="Image/Tin1.jpg" alt=""/>
                    Bóng chuyền nữ Việt Nam - Philippines | Grand Prix Asean 2019 | Hành động cao thượng của 4T
                </a>
            </div>

            <div class="col span-1-of-4 MucsicEducation-picture">
                <a href="https://www.youtube.com/watch?v=QmFUgzTOiDQ&t=2s">
                    <img src="Image/Nguyenthingocha.jpg" alt=""/>
                    Nguyễn Thị Ngọc Hoa - Nữ hoàng cân team ở cuối set đấu
                </a>
            </div>

            <div class="col span-1-of-4 MucsicEducation-picture">
                <a href="https://www.youtube.com/watch?v=TzDBwNzJCds&t=223s">
                    <img src="Image/Video3.jpg" alt="" />
                   Vietnam vs Chinese Taipei l 2019 Asian Women's U23 Volleyball Championship
                </a>
            </div>

            <div class="col span-1-of-4 MucsicEducation-picture">
                <a href="https://www.youtube.com/watch?v=xObF3ybD74o&t=525s">
                    <img src="Image/doi-tuyen-nu-cup-2014 (1).jpg" alt="" />
                   Vietnam vs Thailand (Final/Chung kết) Full HD - VTV Cup 2014
                </a>
            </div>
        </div>
    </div>

    <div class="NewsEvents" id="News">

        <div class="tieude"><br /><br />
            <h2>News & Events</h2>
        </div><br /><br />

        <div class="row">
            <div class="col span-1-of-3 NewsEvents-picture">
                <p style="color: red;">New</p>5/4/2000
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <img src="Image/HinhTin/tin1.PNG"
                    alt=""/>
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <a href="Trang01.aspx">LI-NING ĐỒNG HÀNH CÙNG GIẢI VÔ ĐỊCH BÓNG CHUYỀN BÃI BIỂN 4X4 QUỐC GIA 2020</a>
            </div>
        </div>
        </div>
        <!----------------------------------->

        <div class="row">
            <div class="col span-1-of-3 NewsEvents-picture">
                <p style="color: red;">New</p>4/6/2020
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <img src="Image/HinhTin/tin2.PNG"
                    alt=""/>
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <a href="Trang02.aspx">"Nữ thần" bóng chuyền châu Á bị đồng đội xa lánh vì như "trung tâm vũ trụ", tính chuyển hẳn sang làm người mẫu</a>
            </div>
        </div>
        <!----------------------------------->

        <div class="row">
            <div class="col span-1-of-3 NewsEvents-picture">
                <p style="color: red;">New</p>4/26/2020
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <img src="Image/HinhTin/tin3.PNG"
                    alt=""/>
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <a href="Image/Trang03.aspx">Bóng chuyền vô địch quốc gia 2020- Giải đấu đỉnh cao hội tụ những thương hiệu thể thao hàng đầu</a>
            </div>
        </div>
    <script>
        //khai báo biến slideIndex đại diện cho slide hiện tại
        var slideIndex;
        // KHai bào hàm hiển thị slide
        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }

            slides[slideIndex].style.display = "block";
            dots[slideIndex].className += " active";
            //chuyển đến slide tiếp theo
            slideIndex++;
            //nếu đang ở slide cuối cùng thì chuyển về slide đầu
            if (slideIndex > slides.length - 1) {
                slideIndex = 0
            }
            //tự động chuyển đổi slide sau 5s
            setTimeout(showSlides, 4000);
        }
        //mặc định hiển thị slide đầu tiên 
        showSlides(slideIndex = 0);


        function currentSlide(n) {
            showSlides(slideIndex = n);
        }
    </script>
</asp:Content>

