<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdMin.aspx.cs" Inherits="admin_AdMin"  Debug="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Admin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <div id="box">
            <table style="width:100%">
                <tr>
                    <td colspan="2" style="font-size:30px; text-transform:uppercase; text-align:center; color:white;padding-bottom:10px;">
                        đăng nhập tài khoản 
                    </td>
                </tr>
                <tr>
                    <td style="width:40%; text-align:center; font-size:20px; color:white;">
                        <asp:Label ID="Label1" runat="server" Text="Tài Khoản"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server" Width="251px" CssClass="boxip"></asp:TextBox>
                        <br />
                       <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="Địa chỉ Email không hợp lệ" ValidationExpression="^[a-zA-Z0-9_\-\.]+@([a-zA-Z0-9_\-\.]+\.[a-zA-Z]{3})$"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;font-size:20px; color:white;">
                        <asp:Label ID="Label2" runat="server" Text="Mật Khẩu"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server" Width="251px" CssClass="boxip" TextMode="Password" ></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Mật khẩu không được bỏ trống"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding-left:290px;">

                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding:20px; padding-left:290px;">

                        <asp:Button ID="Button1" runat="server" Text="Đăng nhập" OnClick="Button1_Click" />

                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
