<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestFormTwo.aspx.cs" Inherits="WebApplicationWebFormsTutorial.TestFormTwo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; align-items: center">
            Student Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="studentNameTextBoxTwo" runat="server" Height="32px" Width="450px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is required" ControlToValidate="studentNameTextBoxTwo" ForeColor="Red">*</asp:RequiredFieldValidator>
            
        </div>
        <p>
        <asp:Button ID="nameSubmitBtn" runat="server" Text="Submit" Height="31px" OnClick="nameSubmitBtn_Click" Width="107px" CausesValidation="true" />
        </p>
    </form>
</body>
</html>
