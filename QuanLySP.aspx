<%@ Page Title="" Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="QuanLySP.aspx.cs" Inherits="admin_QuanLySP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="sanpham">
        <h1 style="text-align:center">THÊM SẢN PHẨM (SD STORED PROCEDURE)</h1>
        <table>
             <tr>
                 <td>Tên sản phẩm</td>
                 <td>
                     <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                 </td>
             </tr>
            <tr>
                <td>Size</td>
                <td>
                    <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Giá SP</td>
                 
                <td><asp:TextBox ID="txtGiaSP" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Mô tả</td>
                
                <td> <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Mã loại</td>
                 
                <td><asp:TextBox ID="txtMaLoai" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Đường dẫn hình</td>
                 
                <td><asp:TextBox ID="txtDuongDanHinh" runat="server"></asp:TextBox></td>
            </tr>  
            <tr>
                <td> <asp:Button ID="btnAdd" runat="server" Text="ADD" OnClick="btnAdd_Click" style="height: 26px" /></td>
            </tr>
        </table> 
    </div>

    <div>
        <h1>Quản lý sản phẩm</h1>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" ShowFooter="True" AllowSorting="True" AutoGenerateColumns="False" >
            <Columns>
                <asp:CommandField  ShowEditButton="true" ShowDeleteButton="true"/>
               <%-- <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>--%>

                <asp:TemplateField HeaderText="Mã SP" InsertVisible="False" SortExpression="MASP">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MASP") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MASP") %>'></asp:Label>
                    </ItemTemplate>
                 

                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Tên SP" SortExpression="TenSP">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenSP") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenSP") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Size" SortExpression="SIZE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SIZE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("SIZE") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Giá" SortExpression="Gia">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("GIA") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("GIA") %>'></asp:Label>
                    </ItemTemplate>                     
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mô Tả" SortExpression="MoTa">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MOTA") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("MOTA") %>'></asp:Label>
                    </ItemTemplate>
                      
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mã Loại" SortExpression="MaLoai">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MALOAI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("MALOAI") %>'></asp:Label>
                    </ItemTemplate>
                      
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Đường Dẫn" SortExpression="DuongDan">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("HINH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("HINH") %>'></asp:Label>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KT %>" SelectCommand="SELECT * FROM SANPHAM" DeleteCommand="DELETE  from SANPHAM where MASP = @masp " UpdateCommand="UPDATE SANPHAM set TENSP = @tensp, SIZE = @size, GIA = @gia, MOTA = @gia , MALOAI = @maloai  , HINH = @hinh where MaSP= @MaSP" InsertCommand="Insert into SANPHAM (TENSP,SIZE,GIA,MOTA,MALOAI,HINH) VALUES (@tensp,@size,@gia,@mota,@maloai,@hinh)  ">
            <DeleteParameters>
                <asp:Parameter Name="MASP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                 <asp:Parameter Name="TENSP" Type="String" />
                 <asp:Parameter Name="SIZE" Type="String" />
                 <asp:Parameter Name="GIA" Type="Double" />
                 <asp:Parameter Name="MOTA" Type="String" />
                 <asp:Parameter Name="MALOAI" Type="Int32" />
                 <asp:Parameter Name="HINH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                 <asp:Parameter Name="TENSP" Type="String" />
                 <asp:Parameter Name="SIZE" Type="String" />
                 <asp:Parameter Name="GIA" Type="Double" />
                 <asp:Parameter Name="MOTA" Type="String" />
                 <asp:Parameter Name="MALOAI" Type="Int32" />
                 <asp:Parameter Name="HINH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

