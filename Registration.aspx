<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Testone.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <td colspan="2" align="center">
                <h4>Registration</h4>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label1" runat="server" Text="Account number"></asp:Label>
            </td>
            <td><asp:Label ID="LbAccnum" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label3" runat="server" Text="Account type"></asp:Label>
            </td>
            <td><asp:Label ID="LbAcctype" runat="server" Text="Savings"></asp:Label></td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            </td>
            <td><asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="TextBox1" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Minimum User name lenght 6 characters" ControlToValidate="TextBox1" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9\s]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="TextBox2" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Minimum password lenght 6 characters" ControlToValidate="TextBox2" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'!@#&\s]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtconfpass" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtconfpass" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="Minimum password lenght 6 characters" ControlToValidate="TextBox2" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'!@#&\s]{6,15}$"></asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtconfpass" ControlToCompare="TextBox2"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddGender" runat="server" Height="28px" Width="208px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label8" runat="server" Text="Mail"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtemail" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ErrorMessage="Invalid EMail" ControlToValidate="txtemail" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" 
                    ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" Height="28px" Width="200px" TextMode="Multiline"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtaddress" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label9" runat="server" Text="Security Question"></asp:Label></td>
            <td>
                <asp:DropDownList ID="ddSecurityQuestion" runat="server" Height="28px" Width="208px" 
                    DataTextField="SecQName" DataValueField="SecQID" DataSourceID="SqlDataSource1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TestoneConnectionString %>" SelectCommand="SELECT * FROM [SecQ]"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label10" runat="server" Text="Answer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAnswer" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtAnswer" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label11" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server" Height="28px" Width="200px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtAmount" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ErrorMessage="Amount limit 1 - 10000" ControlToValidate="txtAmount" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" 
                    ValidationExpression="\d{1,5}"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Register" Height="28px" OnClick="Button1_Click"/>
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
