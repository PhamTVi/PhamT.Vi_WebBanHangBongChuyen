﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/SanPham.css" rel="stylesheet" />
    <div class="SanPham">
    <div class="head">
              <asp:Label ID="Label3"  runat="server" Text=''></asp:Label>
    </div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
           
             <div class="chinhgiua1" style="margin-left: 20px">
                <div class="Hinh1">
             <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" ImageUrl='<%# Eval("HINH") %>' />
                 </div>

            <asp:Label ID="TENTOURLabel" runat="server" Text='<%# Eval("TENSP") %>' />
                  <br />
            <asp:HyperLink ID="HyperLink1" CssClass="linkchitiet" runat="server" Font-Underline="false" NavigateUrl='<%# "ChiTietSP.aspx?ID=" + Eval("MASP") %>'>Chi tiết</asp:HyperLink>
                
                 <a class="Mua" href="GioHangLike.aspx?ID=<%#Eval("MASP")%>">Mua ngay</a>
                <br />
         

                 </div>
        </ItemTemplate>
    </asp:DataList>
       
        </div>

</asp:Content>

