<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Admin_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-left: 240px">
        Enter Products Details
        <center>
            <asp:Label ID="Noti" runat="server"></asp:Label>
            <br />
            <br />
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Details"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="Det" TextMode="MultiLine" runat="server"></asp:TextBox>
            </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="Price" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Image"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
&nbsp;
    <asp:Label ID="Label11" runat="server" Text="Category"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource7" DataTextField="CName" DataValueField="CID">
    </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" SelectCommand="SELECT [CName], [CID] FROM [Cate]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Model"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Model" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Color"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Color" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
    <br />
    </center>
</asp:Content>

