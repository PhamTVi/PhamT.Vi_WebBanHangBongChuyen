<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="TinTuc.aspx.cs" Inherits="TinTuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tituc">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table>
                    <tr>
                        <td><img class="hinhtt" src="Image/HinhTin/tin1.PNG" /></td>
                        <td>
                            <h4><a href="Trang01.aspx">LI-NING ĐỒNG HÀNH CÙNG GIẢI VÔ ĐỊCH BÓNG CHUYỀN BÃI BIỂN 4X4 QUỐC GIA 2020</a></h4>
                            <p>Tham gia giải có hơn 100 VĐV của 13 đội bóng, trong đó có 7 đội nữ và 6 đội nam đến từ 8 tỉnh, thành...</p>
                        </td>
                    </tr>
                    <tr>
                        <td><img class="hinhtt" src="Image/HinhTin/tin2.PNG" /></td>
                        <td>
                            <h4><a href="Trang02.aspx">"Nữ thần" bóng chuyền châu Á bị đồng đội xa lánh vì như "trung tâm vũ trụ", tính chuyển hẳn sang làm người mẫu</a></h4>
                            <p>Sabina Altynbekova (Kazakhstan) luôn là cái tên được chú ý nhiều nhất mỗi lần xuất hiện trên sân bóng chuyền...</p>
                        </td>
                    </tr>
                    <tr>
                        <td><img class="hinhtt" src="Image/HinhTin/tin3.PNG" /></td>
                        <td>
                            <h4><a href="Trang03.aspx">Bóng chuyền vô địch quốc gia 2020- Giải đấu đỉnh cao hội tụ những thương hiệu thể thao hàng đầu</a></h4>
                            <p>Thể thao không đơn giản là tập luyện hay thi đấu, đó còn là cầu nối gắn kết cộng đồng, là điểm hẹn giao lưu văn hóa, tinh thần của những con người cùng đam mê, những thương hiệu chung lý tưởng...</p>
                        </td>
                    </tr>
                    <tr>
                        <td><img class="hinhtt" src="Image/HinhTin/tin4.PNG" /></td>
                        <td>
                            <h4><a href="Trang04.aspx">Bảng xếp hạng bóng chuyền nữ thế giới: Việt Nam tụt hạng</a></h4>
                            <p>Đội tuyển nữ Việt Nam đã tụt hạng trên bảng xếp hạng bóng chuyền thế giới mới nhất...</p>
                        </td>
                    </tr>
                    
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>

