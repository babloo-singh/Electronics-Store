<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" SelectCommand="SELECT * FROM [Item] WHERE ([CName] = @CName)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CName" QueryStringField="cat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource9" CellSpacing="4" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("IName") %>'></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" style="height:200px;width:200px;" AlternateText='<%# Eval("IName") %>' ImageUrl='<%# Eval("Image") %>' />
            <br />
            Rs.
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Detail") %>'></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" CommandName="ViewProduct" CommandArgument='<%# Eval("ID") %>' Height="25px" Text="View" Width="90px" />
            <br />
            <asp:Button ID="Button1" runat="server" CommandName="AddCart" OnClick="Button1_Click" Text="Add To Cart" CommandArgument='<%# Eval("ID") %>' />
            <br />
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>

