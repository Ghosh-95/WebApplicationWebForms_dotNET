<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormQueryString.aspx.cs" Inherits="WebApplicationWebFormsTutorial.FormQueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 271px;
        }
        .auto-style2 {
            width: 271px;
            height: 33px;
        }
        .auto-style3 {
            height: 33px;
        }
        .auto-style4 {
            width: 271px;
            height: 30px;
        }
        .auto-style5 {
            height: 30px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1"><strong>Student ID</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Student Name</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Student Age</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="queryStringBtn" runat="server" OnClick="Button1_Click" Text="Submit" Width="130px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
