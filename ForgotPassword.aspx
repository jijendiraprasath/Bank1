<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Testone.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <td colspan="2" align="center">
                <h4>Forgot Password</h4></td>
        </tr>
        <tr>
            <td style="width:160px;">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblusername" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:160px;">
                <asp:Label ID="Label2" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblsecq" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:160px;">
                <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>
                <asp:HiddenField ID="hdnAnswer" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtanswer" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtanswer" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnforgotpassword" runat="server" Text="Forgot Password" Height="28px" OnClick="btnforgotpassword_Click"/>
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
