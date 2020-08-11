<%@ Page Title="" Language="C#" MasterPageFile="~/MPAdmin.master" AutoEventWireup="true" CodeFile="QuanLyTKAdMin.aspx.cs" Inherits="admin_QuanLyTKAdMin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="sanpham">
        <h1 style="text-align:center">THÊM ADMIN</h1>
        <table>
             <tr>
                 <td>Tên Admin</td>
                 <td>
                     <asp:TextBox ID="txtTenAD" runat="server"></asp:TextBox>
                 </td>
             </tr>
            <tr>
                <td>Ngày sinh</td>
                <td>
                    <asp:TextBox ID="txtNgaysinhAD" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                 
                <td><asp:TextBox ID="txtDiachiAD" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Username</td>
                
                <td> <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                 
                <td><asp:TextBox ID="txtMKAD" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                 
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td>Giới tính</td>
                 
                <td><asp:TextBox ID="txtGioitinh" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Điện thoại</td>
                 
                <td><asp:TextBox ID="txtDT" runat="server"></asp:TextBox></td>
            </tr> 
            <tr>
                <td> <asp:Button ID="btnAdd" runat="server" Text="ADD" OnClick="btnAddAD_Click" style="height: 26px" /></td>
            </tr>
        </table> 
    </div>


    <div>
        <h1>Quản lý thông tin Admin</h1>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="MAAD" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" ShowFooter="True" AllowSorting="True" AutoGenerateColumns="False" >
            <Columns>
                <asp:CommandField  ShowEditButton="true" ShowDeleteButton="true"/>

                <asp:TemplateField HeaderText="Mã Admin" InsertVisible="False" SortExpression="MAKH">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MAAD") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MAAD") %>'></asp:Label>
                    </ItemTemplate>
                 

                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Tên KH" SortExpression="HOTENAD">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("HOTENAD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("HOTENAD") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Ngày sinh" SortExpression="NGAYSINHAD">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("NGAYSINHAD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("NGAYSINHAD") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Địa chỉ" SortExpression="DIACHIAD">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DIACHIAD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DIACHIAD") %>'></asp:Label>
                    </ItemTemplate>                     
                    
                </asp:TemplateField>

                <asp:TemplateField HeaderText="UserName" SortExpression="USENAMEAD">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("USENAMEAD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("USENAMEAD") %>'></asp:Label>
                    </ItemTemplate>
                      
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mật khẩu" SortExpression="MATKHAUAD">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MATKHAUAD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("MATKHAUAD") %>'></asp:Label>
                    </ItemTemplate>
                      
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email" SortExpression="EMAILAD">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EMAILAD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("EMAILAD") %>'></asp:Label>
                    </ItemTemplate>                   
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Giới tính" SortExpression="GIOITINHAD">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("GIOITINHAD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("GIOITINHAD") %>'></asp:Label>
                    </ItemTemplate>                   
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Điện thoại" SortExpression="DIENTHOAIAD">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DIENTHOAIAD") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("DIENTHOAIAD") %>'></asp:Label>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KT %>" SelectCommand="SELECT * FROM ADMIN" DeleteCommand="DELETE  from ADMIN where MAAD = @maad " UpdateCommand="UPDATE ADMIN set HOTENAD = @hotenad, NGAYSINHAD = @ngaysinhad, DIACHIAD = @diachiad, USENAMEAD = @usenamead , MATKHAUAD = @matkhauad, EMAILAD = @emailad, GIOITINHAD=@gioitinhad, DIENTHOAIAD=@dienthoaiad where MAAD= @maad " InsertCommand="Insert into ADMIN (HOTENAD,NGAYSINHAD,DIACHIAD,USENAMEAD,MATKHAUAD,EMAILAD,GIOITINHAD,DIENTHOAIAD) VALUES (@hotenad,@ngaysinhad,@diachiad,@usenamead,@matkhauad,@emailad,@gioitinhad,@dienthoaiad) ">
            <DeleteParameters>
                <asp:Parameter Name="MAAD" Type="Int32" />
            </DeleteParameters>
           <InsertParameters>
                 <asp:Parameter Name="HOTENAD" Type="String" />
                 <asp:Parameter Name="NGAYSINHAD" Type="String" />
                 <asp:Parameter Name="DIACHIAD" Type="String" />
                 <asp:Parameter Name="USENAMEAD" Type="String" />
                 <asp:Parameter Name="MATKHAUAD" Type="String" />
                 <asp:Parameter Name="EMAILAD" Type="String" />
                 <asp:Parameter Name="GIOITINHAD" Type="String" />
                 <asp:Parameter Name="DIENTHOAIAD" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                 <asp:Parameter Name="HOTENAD" Type="String" />
                 <asp:Parameter Name="NGAYSINHAD" Type="String" />
                 <asp:Parameter Name="DIACHIAD" Type="String" />
                 <asp:Parameter Name="USENAMEAD" Type="String" />
                 <asp:Parameter Name="MATKHAUAD" Type="String" />
                 <asp:Parameter Name="EMAILAD" Type="String" />
                 <asp:Parameter Name="GIOITINHAD" Type="String" />
                 <asp:Parameter Name="DIENTHOAIAD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
     </div>
</asp:Content>

