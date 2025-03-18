<%@ Page Title="MyForm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationWebFormsTutorial._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Label ID="myLabel" runat="server" Visible="false" Text="Hello World" Width="200px"/>
    </main>

    <asp:Button ID="ClickButton" runat="server" Text="Click" Width="166px" OnClick="OnClickOfButton" />

    <footer>
        <h5>All rights reservd @2025</h5>
    </footer>

</asp:Content>
