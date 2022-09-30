<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Testone.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <td colspan="2" align="center">
                <h4>Change Password</h4>
            </td>
        </tr>
        <tr>
            <td style="width:160px;">
                <asp:Label ID="Label3" runat="server" Text="New Password"></asp:Label>
                <asp:HiddenField ID="hdnAnswer" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtNewPass" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtNewPass" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Minimum password lenght 6 characters" ControlToValidate="txtNewPass" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'!@#&\s]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width:160px">
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtconfpass" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtconfpass" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Minimum password lenght 6 characters" ControlToValidate="txtNewPass" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'!@#&\s]{6,15}$"></asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtconfpass" ControlToCompare="txtNewPass"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnChangePass" runat="server" Text="Change Password" Height="28px" OnClick="btnChangePass_Click"/>
            </td>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Height="28px" OnClick="btncancel_Click" CausesValidation="false" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="error" runat="server" style="color:red">

                </div>
            </td>
        </tr>
    </table>
</asp:Content>
