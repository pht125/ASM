<%-- 
    Document   : footer
    Created on : Jun 22, 2023, 10:04:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/b2ffbe6d51.js" crossorigin="anonymous"></script>
    </head>
    <style>
        body{
            margin: 0;
        }
        
        .footer{
            margin-top: 80px;
            position: relative;
            background-color: rgba(227, 227, 227, 0.59);
            padding-top: 10px;
            padding-bottom: 10px;
            
        }
        .footer_content{
            display: flex;
/*            justify-content: space-around;*/
        }
        
        .footer_content_info{
            width: calc((100%/12)*3);
            margin-left: 4%;
        }
        
        .footer_content_info p{
            width: 60%;
        }
        
        .footer_content_contact{
            width: calc((100%/12)*3);
            margin-left: 13%;
        }
        
        .footer_content_contact p{
            width: 60%;
        }
        
        .footer_content_policy{
            width: calc((100%/12)*3);
            margin-left: 19%;
        }
        
        .footer_content_policy ul{
            padding: 0px;
        }
        
        .footer_content_policy li{
            list-style: none;
        }
        
        .footer_content_policy li a{
            text-decoration: none;
            color: rgba(25, 25, 25, 0.65);
        }
        
        .footer_content_policy li a:hover{
            color: rgba(25, 25, 25, 1);
        }
    </style>
    <body>
        <div class="footer">
            <div class="footer_content">
                <div class="footer_content_info">
                    <p style="font-weight: bold">Cửa hàng Ator</p>
                    <p>Nhà phân phối các thương hiệu Filco - Glorious - Pulsar - Lamzu - SkyPAD - Corepad - Lethal Gaming Gear - Finalmouse - Ninjutso</p>
                </div>
                <div class="footer_content_contact">
                    <p style="font-weight: bold">Thông tin liên hệ</p>
                    <p>2183, QL5, Bạch Sam, Mỹ Hào, Hưng Yên, Vietnam</p>
                    <p>Giờ làm việc: 9:00 - 17:00</p>
                    <p>0343.537.025</p>
                    <a href="https://discord.gg/VH2X4AWYAR"><i style="color: #252525;" class="fa-brands fa-discord"></i></a>
                    <a href="https://www.facebook.com/idxrn"><i style="color: #252525;" class="fa-brands fa-facebook"></i></a>
                    

                </div>
                <div class="footer_content_policy">
                    <p style="font-weight: bold">Các chính sách</p>
                    <ul>
                        <li>
                            <a href="">Mua trước trả sau - Paylater</a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a href="">Chính sách bảo hành</a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a href="">Chính sách vận chuyển</a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a href="">Chính sách hoàn tiền</a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a href="">Điều khoản dịch vụ</a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a href="">Chính sách bảo mật</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
