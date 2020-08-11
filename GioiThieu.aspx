<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="GioiThieu.aspx.cs" Inherits="GioiThieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 325px;
        }
    </style>
    <link href="CSS/Trang01.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="center" style="margin-left: 200px;">
        
            <h2 style="width: 1042px">“ VIP - Cái tên nói lên tất cả ! ”</h2>
            <p style="text-align:left; width: 997px; font-size: 20px; margin-left: 50px; margin-right: 50px;">
                “ VIP ” là viết tắt của cụm từ tiếng Anh “Volleyball is passion !”, 
                nghĩa là “Bóng chuyền là niềm đam mê! ” với mong muốn mang lại sự hài lòng cho quý khách hàng khi đặt niềm tin nơi chúng tôi. 
                Mỗi sản phẩm của VIP SPORT làm ra đều được đặt trọn sự tận tâm trên từng đường kim mũi chỉ nhằm tri ân tình cảm cũng như sự tin cậy của mọi người !<br />
                “VTP” không chỉ là một sản phẩm mà còn là người bạn đồng hành cùng bạn để hoàn thiện và thành công mỗi ngày thông qua thông điệp : 
                “ Go out the STREET - Complete your STYLE! ” - “ Mỗi ngày ra đường,bạn sẽ là một con người mới,
                tràn trề sức sống và khẳng định phong cách StreetStyle độc đáo của bản thân ”.
                Để đạt được điều đó, VIP luôn luôn lắng nghe và cải tiến sản phẩm nhằm đảm bảo trải nghiệm tốt nhất cho khách hàng.<br />

            </p>
            <p style="text-align:center; width: 997px; font-size: 20px; height: 44px;">
                Cảm ơn bạn đã lựa chọn VIP SPORT <br />
                Mọi đóng góp ý kiến vui long liên hệ qua mail hoặc Instagram nhé! <br />
            </p>
        
        <table style="width: 100%; ">
            <tr>
                <td class="auto-style5"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/hinhV.jpg" Height="300px" Width="300px" OnClick="ImageButton1_Click"></asp:ImageButton></td>
                <td class="auto-style5"><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/hinhD.jpg" Height="280px" Width="260px" OnClick="ImageButton2_Click"></asp:ImageButton></td>
                <td class="auto-style2"><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/hinhT.jpg" Height="300px" Width="300px" OnClick="ImageButton3_Click"></asp:ImageButton></td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="200px" Height="100px" BorderStyle="None">Họ Tên : Phạm Thị Vi
                        MSSV : 2001181417
                    </asp:TextBox>
                    
                    
                </td>
                <td style="text-align: center" class="auto-style6"> 
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="200px" Height="100px" BorderStyle="None">Họ Tên : Phan Thị Ngọc Dung
                        MSSV : 2001181062
                    </asp:TextBox>
                </td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="200px" Height="100px" BorderStyle="None">Họ Tên : Huỳnh Ngọc Thạch
                        MSSV : 2001180379
                    </asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

