<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInForm.aspx.cs" Inherits="WebApplicationWebFormsTutorial.LogInForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91px;
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
                <td class="auto-style1">Password</td>
                <td>
                    <asp:TextBox ID="passwordTextBox" runat="server" Width="139px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="passwordTextBox" Display="Dynamic" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
            <div>
                <asp:Button ID="logInButton" runat="server" Text="Log In" OnClick="logInButton_Click" />
            </div>
    </form>
</body>
</html>
