<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    Name<asp:TextBox ID="Name"  runat="server"></asp:TextBox>
    <br />
    Address<asp:TextBox ID="Add" runat="server"></asp:TextBox>
    <br />
    City<asp:TextBox ID="City" runat="server"></asp:TextBox>
    <br />
    Pincode<asp:TextBox ID="Pin" runat="server"></asp:TextBox>
    <br />
    Mobile<asp:TextBox ID="Phn"  runat="server"></asp:TextBox>
    <br />
    Email<asp:TextBox ID="Eml" TextMode="Email" runat="server"></asp:TextBox>
    <br />
    Password<asp:TextBox ID="Pass" TextMode="Password" runat="server"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" />
    <br />
    <br />
</asp:Content>

