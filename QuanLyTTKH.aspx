<%@ Page Title="" Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="QuanLyTTKH.aspx.cs" Inherits="admin_QuanLyTTKH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Quản lý thông tin khách hàng</h1>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="MAKH" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" ShowFooter="True" AllowSorting="True" AutoGenerateColumns="False" >
            <Columns>
                <asp:CommandField  ShowEditButton="true" ShowDeleteButton="true"/>

                <asp:TemplateField HeaderText="Mã KH" InsertVisible="False" SortExpression="MAKH">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MAKH") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MAKH") %>'></asp:Label>
                    </ItemTemplate>
                 

                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Tên KH" SortExpression="HOTEN">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("HOTEN") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("HOTEN") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Ngày sinh" SortExpression="NGAYSINH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("NGAYSINH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("NGAYSINH") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Địa chỉ" SortExpression="DIACHI">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DIACHI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DIACHI") %>'></asp:Label>
                    </ItemTemplate>                     
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="UserName" SortExpression="USENAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("USENAME") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("USENAME") %>'></asp:Label>
                    </ItemTemplate>
                      
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mật khẩu" SortExpression="MATKHAU">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MATKHAU") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("MATKHAU") %>'></asp:Label>
                    </ItemTemplate>
                      
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email" SortExpression="EMAIL">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                    </ItemTemplate>                   
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Giới tính" SortExpression="GIOITINH">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("GIOITINH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("GIOITINH") %>'></asp:Label>
                    </ItemTemplate>                   
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Điện thoại" SortExpression="DIENTHOAI">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DIENTHOAI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("DIENTHOAI") %>'></asp:Label>
                    </ItemTemplate>                   
                </asp:TemplateField>

            </Columns>
            <%--<FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />--%>
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <%--<SortedDescendingHeaderStyle BackColor="#93451F" />--%>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KT %>" SelectCommand="SELECT * FROM KHACHHANG" DeleteCommand="DELETE  from KHACHHANG where MAKH = @makh " UpdateCommand="UPDATE KHACHHANG set HOTEN = @hoten, NGAYSINH = @ngaysinh, DIACHI = @diachi, USENAME = @usename , MATKHAU = @matkhau, EMAIL = @email, GIOITINH=@gioitinh, DIENTHOAI=@dienthoai where MAKH= @makh  ">
            <DeleteParameters>
                <asp:Parameter Name="MAKH" Type="Int32" />
            </DeleteParameters>
           <%-- <InsertParameters>
                 <asp:Parameter Name="HOTEN" Type="String" />
                 <asp:Parameter Name="NGAYSINH" Type="String" />
                 <asp:Parameter Name="DIACHI" Type="String" />
                 <asp:Parameter Name="USENAME" Type="String" />
                 <asp:Parameter Name="MATKHAU" Type="String" />
                 <asp:Parameter Name="EMAIL" Type="String" />
                 <asp:Parameter Name="GIOITINH" Type="String" />
                 <asp:Parameter Name="DIENTHOAI" Type="String" />
            </InsertParameters>--%>
            <UpdateParameters>
                 <asp:Parameter Name="HOTEN" Type="String" />
                 <asp:Parameter Name="NGAYSINH" Type="String" />
                 <asp:Parameter Name="DIACHI" Type="String" />
                 <asp:Parameter Name="USENAME" Type="String" />
                 <asp:Parameter Name="MATKHAU" Type="String" />
                 <asp:Parameter Name="EMAIL" Type="String" />
                 <asp:Parameter Name="GIOITINH" Type="String" />
                 <asp:Parameter Name="DIENTHOAI" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

