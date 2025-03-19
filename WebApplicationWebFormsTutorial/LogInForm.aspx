<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInForm.aspx.cs" Inherits="WebApplicationWebFormsTutorial.LogInForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91px;
        }
        .auto-style2 {
            width: 91px;
            height: 33px;
        }
        .auto-style3 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Username</td>
                <td>
                    <asp:TextBox ID="usernameTextBox" runat="server" Width="136px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="usernameTextBox" Display="Dynamic" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="passwordTextBox" runat="server" Width="139px" TextMode="Password"></asp:TextBox> 
                    <input id="showPass_check" type="checkbox" onchange="document.querySelector('#passwordTextBox').type = this.checked? 'text' : 'password'" />&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="passwordTextBox" Display="Dynamic" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
            <div>
                <asp:Button ID="logInButton" runat="server" Text="Log In" OnClick="logInButton_Click" />
            </div>

        <div>
            <p>Don't have an account?</p>
            <a href="RegisterForm.aspx" style="height: 25px; padding: 0.25rem; width:fit-content; border-radius:0.3rem; background-color: forestgreen; color: #fff; text-decoration: none">Sign Up here</a>
        </div>
    </form>
</body>
</html>
