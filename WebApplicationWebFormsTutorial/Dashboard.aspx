<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplicationWebFormsTutorial.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            This is Dashboard
        </div>
        <asp:Button ID="logOutButton" runat="server" Text="Log Out" OnClick="logOutButton_Click" />
    </form>
</body>
</html>
