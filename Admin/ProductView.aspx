<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="Admin_ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource8" style="text-align: center" Height="300px" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("IName") %>'></asp:Label>
            <br />
            <asp:Image ID="Image1" height="200px" Width="200px" runat="server" ImageUrl='<%# Eval("Image", "~/{0}") %>' />
            <br />
            RS.
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("ID") %>' OnClick="Button1_Click" />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Item] WHERE ([CName] = @CName)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CName" QueryStringField="cat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

