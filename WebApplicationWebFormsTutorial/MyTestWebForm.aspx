<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyTestWebForm.aspx.cs" Inherits="WebApplicationWebFormsTutorial.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
            width: 746px;
        }
        .auto-style2 {
            width: 111px;
            height: 37px;
        }
        .auto-style3 {
            height: 29px;
            width: 111px;
        }

        .submit-btn {
            border-radius: 0.3rem;
            border: none;
            height:2.5rem;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            width: 746px;
            margin-left: 80px;
        }
        .auto-style6 {
            width: 746px;
            height: 29px;
            margin-left: 80px;
        }
        .auto-style7 {
            width: 111px;
            height: 81px;
        }
        .auto-style8 {
            width: 746px;
            margin-left: 80px;
            height: 81px;
        }
        .auto-style9 {
            width: 746px;
            margin-left: 80px;
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 80%; height: 485px;">
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Student Name</td>
            <td class="auto-style8">
                <asp:TextBox ID="studentNameTextbox" runat="server" Width="568px" Height="29px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="studentNameTextbox" ErrorMessage="Student Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="studentIdBox" runat="server" Width="181px" Height="29px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Student Email</td>
            <td class="auto-style9">
                <asp:TextBox ID="studentEmailTextbox" runat="server" Width="472px" Height="30px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="studentEmailTextbox" ErrorMessage="Student Email is required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="studentEmailTextbox" Display="Dynamic" ErrorMessage="Please enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Re-Enter Email</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" Width="470px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Re-enter Email here" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="studentEmailTextbox" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Email didn't match, please try again!" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Class</td>
            <td class="auto-style1">
                <asp:TextBox ID="studentClassTextbox" runat="server" Height="27px" Width="468px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="studentClassTextbox" Display="Dynamic" ErrorMessage="Please select Class" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="studentClassTextbox" Display="Dynamic" ErrorMessage="Class should be between 1 to 12" ForeColor="Red" MaximumValue="12" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Fees</td>
            <td class="auto-style1">
                <asp:TextBox ID="studentFeesTextbox" runat="server" Height="30px" Width="469px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="studentFeesTextbox" Display="Dynamic" ErrorMessage="Please input fees" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="studentFeesTextbox" Display="Dynamic" ErrorMessage="Fees should be between 3999 and 12999" ForeColor="Red" MaximumValue="12999" MinimumValue="3999" Type="Integer">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td class="auto-style1">
                <asp:RadioButton ID="radioBtnMale" runat="server" GroupName="GenderGroup" Text="Male" />
                <asp:RadioButton ID="radioBtnFemale" runat="server" GroupName="GenderGroup" Text="Female" />
                <asp:RadioButton ID="radioBtnOther" runat="server" GroupName="GenderGroup" Text="Other" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Please select a gender" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate1">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="84px" OnClick="Button1_Click" CssClass="submit-btn" BackColor="#009933" ForeColor="White" Height="26px" />
            </td>
            <td class="auto-style6">

                <asp:Button ID="restoreBtn" runat="server" Text="Restore" Width="100px" OnClick="RestoreButtonClick" CausesValidation="false" Height="26px" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="False" Height="28px" OnClick="Button2_Click" Text="Go back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="logOutBtn" runat="server" CausesValidation="False" OnClick="logOutBtn_Click" Text="LogOut" Width="95px" />

            </td>
        </tr>
        <tr>
            <td class="auto-style3">
            </td>
            <td class="auto-style5">

                &nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
