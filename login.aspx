<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Testone.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <td colspan="4" align="center">
                <h4>Login</h4>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="TextBox1" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td style="padding-right=40px;"></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" Height="28px" OnClick="Button1_Click" CausesValidation="false" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="TextBox2" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="4" style="padding-left:77px;">
                <asp:Button ID="btnlogin" runat="server" Text="Login" Height="28px" OnClick="btnlogin_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <div id="error" runat="server" style="color:red">

                </div>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" Height="28px" CausesValidation="false" OnClick="LinkButton1_Click">Forget Password</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>
