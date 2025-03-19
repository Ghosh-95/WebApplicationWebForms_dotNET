<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="WebApplicationWebFormsTutorial.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div {
            margin-block: 1rem;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Registration Form</h3>

        <div>
            First Name&nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFirstName" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            Last Name&nbsp;&nbsp;
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLastName" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            Email&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please provide a valid Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="This email is not valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div>
            Gender
            <asp:RadioButton ID="MaleRadioBtn" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" GroupName="GenderGroup" />
            &nbsp;
            <asp:RadioButton ID="FemaleRadioBtn0" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Female" GroupName="GenderGroup" />
            &nbsp;
            <asp:RadioButton ID="OtherGenderRadioBtn" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Other" GroupName="GenderGroup" />
        &nbsp;
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please selcect a gender" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </div>

        <div>
            Address&nbsp;&nbsp;
            <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Rows="4" Columns="50" ></asp:TextBox>
        </div>

        <div>
            Username&nbsp;&nbsp;
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please provide an username" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            Password&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            Confirm Password&nbsp;&nbsp;
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" />
    </form>
</body>
</html>
