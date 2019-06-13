<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Pay Using Card</p>
    <p>
        Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
    </p>
    <p>
        Account Type:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Type" runat="server"></asp:TextBox>
    </p>
    <p>
        Bank Name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Ba" runat="server"></asp:TextBox>
    </p>
    <p>
        Bank Branch:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Bb" runat="server"></asp:TextBox>
    </p>
    <p>
        Card Number:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Cn" runat="server"></asp:TextBox>
    </p>
    <p>
        CCV:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CCV" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" />
    </p>
</asp:Content>

