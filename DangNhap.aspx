<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    <link href="CSS/DangNhap.css" rel="stylesheet" />
        <div id="Login">
            <h2 style="text-align: center">LOGIN FORM</h2>
            <div class="img">
                <img src="ImageLogin/avatar.png" class="avatar" style="margin-right: 100px; margin-left: 100px"/>
                
            </div>

            <div id="login_social">
                
                    <a href="https://www.facebook.com/" target="_blank" title="Login with Facebook"><img src="ImageLogin/FB.png" style="width:50px; height:50px" /></a>
                    <br /><br />
                    <a href="https://www.instagram.com/" target="_blank" title="Login with Instagram"><img src="ImageLogin/Insta.png" style="width:50px; height:50px" /></a>
            
            </div>

            <div id="or">OR</div>

            <div id="login_form">
                <div class="container">
                    <label ><b>Username</b></label>
                    <asp:TextBox ID="txtUsername" runat="server" Height="25px" Width="100%" placeholder="Tên tài khoản"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="UserName không được để trống" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <label><b>Password</b></label>
                    <asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="100%" TextMode="Password" placeholder="Mật khẩu"></asp:TextBox><br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" /><br />
                    <center>
                    <%--<button type="submit" style="text-align: center">Login</button><br />--%>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#4CAF50" Height="50px" Width="100px" Font-Bold="true" ForeColor="White" OnClick="btnLogin_Click"></asp:Button>
                    </center>
                  
                </div>

                <div class="container2" style="background-color:#f1f1f1">
                    <span class="psw"><a href="#">Forgot password?</a></span><br /><br />
                    <span class="register">Don't have an account ?  <a href="DangKy.aspx">Registered</a></span>
                </div>
            </div>
        </div>
</asp:Content>

