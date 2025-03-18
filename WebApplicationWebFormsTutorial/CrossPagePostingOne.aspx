<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossPagePostingOne.aspx.cs" Inherits="WebApplicationWebFormsTutorial.CrossPagePostingOne" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h3>This is Cross Page One</h3>
    <form id="form1" runat="server">
        <div>
            Name
     <asp:TextBox ID="nameTextBoxCrossPage" runat="server" Height="23px" Width="126px"></asp:TextBox>
        </div>
        <div>
            Email
     <asp:TextBox ID="emailTextBoxCrossPage" runat="server" Height="23px" Width="127px"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" BorderStyle="None" PostBackUrl="CrossPagePostingTwo.aspx" Text="Submit" />
        <br />
    </form>
</body>
</html>
