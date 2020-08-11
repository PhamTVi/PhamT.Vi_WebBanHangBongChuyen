<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTietSP.aspx.cs" Inherits="ChiTietSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
    </style>
    <link href="CSS/SanPham.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="SanPham">
    <asp:DataList ID="DataList1" runat="server">
          <ItemTemplate>
              <div class="head">
                <asp:Label ID="Label6"  runat="server" Text='<%# Eval("TENLOAI") %>'></asp:Label>
            </div>
            <div class="Chitiet">
            <div class="leftChitiet"> 
                <asp:Image ID="Image1" runat="server" Height="325px" ImageUrl='<%# Eval("HINH") %>' Width="346px" />
            </div>
            <div class="rightChiTiet">
                <table>
                    <tr>
                        <td colspan="2" style="font-size: 30px;" class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("TENSP") %>' />
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2" style="font-size: 20px; color: #ffd800;">
                           <asp:Label ID="Label2" runat="server" Text='<%# Bind("GIA") %>' /> đ
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Size :
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("SIZE") %>' />
                        </td>
                    </tr>
                   
                    <tr>
                        <td colspan="2">
                             <asp:Label ID="Label5" runat="server" Text='<%# Bind("MOTA") %>' />
                        </td>
                    </tr>
                   <tr>
                       <td  colspan="2">
                       <a class="Mua" href="GioHangLike.aspx?ID=<%#Eval("MASP")%>">Mua ngay</a>
                </table>
            </div>
          </div>
        </ItemTemplate>
    </asp:DataList>
        </div>
</asp:Content>

