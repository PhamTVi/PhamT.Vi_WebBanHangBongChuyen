<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/DangKy.css" rel="stylesheet" />
    <div id="SignUp">
            <h2 style="text-align: center">SIGN UP FORM</h2>

            <div id="login_social">
                
                    <a href="https://www.facebook.com/" target="_blank" title="Login with Facebook"><img src="ImageLogin/FB.png" style="width:50px; height:50px" /></a>
                    <br /><br />
                    <a href="https://www.instagram.com/" target="_blank" title="Login with Instagram"><img src="ImageLogin/Insta.png" style="width:50px; height:50px" /></a>
            
            </div>

            <div id="or">OR</div>

            <div id="SignUp_form">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table>
                            <tr>
                                <td>
                                    Full Name: 
                                </td>
                                <td>
                                      <asp:TextBox ID="txtFullName" runat="server" Width="300px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name không được để trống" ControlToValidate="txtFullName" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    UserName: 
                                </td>
                                <td>
                                       <asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="User Name không được để trống" ControlToValidate="txtUserName" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Password:
                                </td>
                                <td>
                                       <asp:TextBox ID="txtPassword" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password không được để trống" Font-Bold="True" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Repeat password:
                                </td>
                                <td>
                                      <asp:TextBox ID="txtRepeatPassword" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password không khớp" ControlToCompare="txtPassword" ControlToValidate="txtRepeatPassword" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Gender:
                                </td>
                                <td>
                                     <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" Width="271px">
                                        <asp:ListItem>Nữ</asp:ListItem>
                                        <asp:ListItem>Nam</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email:
                                </td>
                                <td>
                                     <asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email sai cú pháp" ControlToValidate="txtEmail" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Phone Number:
                                </td>
                                <td>
                                      <asp:TextBox ID="txtPhone" runat="server" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"> 
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone Number phải là 10 chữ số" ControlToValidate="txtPhone" Font-Bold="True" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Address:
                                </td>
                                <td>
                                      <asp:TextBox ID="txtAddress" runat="server" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address không được để trống" ControlToValidate="txtAddress" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Birthday: 
                                </td>
                                <td>
                                    <asp:Calendar ID="txtDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="232px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                  
                                </td>
                            </tr>
                            <tr>
                              
                                <td colspan="2">
                            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" BackColor="#4CAF50" Height="50px" Width="96px" Font-Bold="true" ForeColor="White"  OnClick="btnSignUp_Click" />

                                </td>
                            </tr>
                        </table>
                 
                    
                        
                        <br />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </asp:View>
                    
                </asp:MultiView>
            </div>
        </div>
</asp:Content>

