<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossPagePostingTwo.aspx.cs" Inherits="WebApplicationWebFormsTutorial.CrossPagePostingTwo" %>
<%@ PreviousPageType VirtualPath="~/CrossPagePostingOne.aspx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h3>This is Cross Page Two</h3>
    <form id="form1" runat="server">
       <p>This is Web form two, submitted from Page One</p>
        <p>
            <span>Name:&nbsp;&nbsp;&nbsp; </span>
        &nbsp;<asp:Label ID="nameLabel" runat="server"></asp:Label>
        </p>
        <p>
            <span>Email:&nbsp;&nbsp;&nbsp; </span>
        &nbsp;<asp:Label ID="emailLabel" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
