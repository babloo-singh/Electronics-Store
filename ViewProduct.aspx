<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource11" OnItemCommand="DataList1_ItemCommand" RepeatColumns="1">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("IName") %>' />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl='<%# Eval("Image") %>' Width="500px" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Detail") %>'></asp:Label>
            <br />
            <br />
            Rs.
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
            <br />
            <br />
            Model:&nbsp;
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Model") %>'></asp:Label>
            <br />
            Color:&nbsp;
            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Color") %>'></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="AddCart" Text="Add To Cart" />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" SelectCommand="SELECT * FROM [Item] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

