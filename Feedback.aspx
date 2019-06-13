<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        FeedBack Form</p>
    <p>
        Your Input is Important for US!!!</p>
    <p>
        &nbsp;<asp:Label ID="lb" runat="server"></asp:Label>
    </p>
    Name :
    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
    <br />
&nbsp;<br />
    Email :&nbsp; <asp:TextBox ID="Eml" runat="server" Height="16px" Width="145px"></asp:TextBox>
    <br />
    <br />
    Message :&nbsp;
    <asp:TextBox ID="Msg" runat="server" Height="47px" TextMode="MultiLine" Width="252px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    <br />
</asp:Content>

