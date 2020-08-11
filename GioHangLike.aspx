<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioHangLike.aspx.cs" Inherits="GioHangLike" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/SanPham.css" rel="stylesheet" />
    
        <div class="sanpham">
        <h3><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" Width="100%" CssClass="text-center" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" DataKeyNames="MASP" OnRowDeleting="GridView1_RowDeleting" >
               <Columns>
                <asp:BoundField DataField="MASP" HeaderText="STT">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>

                <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                   <asp:ImageField DataImageUrlField="HINH" HeaderText="Hình ảnh" ControlStyle-Width="100px" ControlStyle-Height="100px">
                   </asp:ImageField>
                <asp:TemplateField HeaderText="Số Lượng(RI)">
                    <EditItemTemplate>
                        <asp:TextBox ID="SL" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("SL") %>'></asp:TextBox>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>

                <asp:BoundField DataField="GIA" HeaderText="Giá Tiền">
                <HeaderStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Xóa">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select">Update</asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server"  CommandName="delete" OnClientClick="return confirm(&quot;Are u sure ?&quot;) ">Delete</asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                </asp:TemplateField>

       
            </Columns>
       

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <div class="total" style="background:#077ccb;color:white;">
            <asp:Label ID="Label6" runat="server" Text="Tổng tiền: "></asp:Label>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </div>
    
        <br />
         <asp:Button ID="dathangsp1" runat="server" Text="Mua Tiếp" BackColor="#FF9900" PostBackUrl="~/TatCaSanPham.aspx" Width="103px"/>
         <asp:Button ID="Button1" runat="server" Text="Xóa hết" />
         </div>
   
</asp:Content>

