<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin - Login</title>
</head>
<body>
    <form runat="server">
    <center>
    <h1>Admin Login</h1>
    UserName:<br />
    <asp:TextBox ID="User" runat="server" ></asp:TextBox><br />
    Password:<br />
    <asp:TextBox ID="Pass" TextMode="Password" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">User Module</asp:HyperLink>
        </center>
        </form>
</body>
</html>
