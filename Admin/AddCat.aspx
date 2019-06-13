<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddCat.aspx.cs" Inherits="Admin_AddCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    Category Name<br />
    <asp:TextBox ID="CatTxt" runat="server"></asp:TextBox><br />
    <asp:Button ID="CatBtn" runat="server" Text="Add" OnClick="CatBtn_Click" />
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CID" DataSourceID="SqlDataSource3" style="margin-left: 356px">
    <Columns>
        <asp:BoundField DataField="CID" HeaderText="Category ID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
        <asp:BoundField DataField="CName" HeaderText="Category Name" SortExpression="CName" />
        <asp:CommandField HeaderText="Edit Delete" ShowDeleteButton="True" ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" DeleteCommand="DELETE FROM [Cate] WHERE [CID] = @CID" InsertCommand="INSERT INTO [Cate] ([CName]) VALUES (@CName)" SelectCommand="SELECT [CID], [CName] FROM [Cate]" UpdateCommand="UPDATE [Cate] SET [CName] = @CName WHERE [CID] = @CID">
    <DeleteParameters>
        <asp:Parameter Name="CID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CName" Type="String" />
        <asp:Parameter Name="CID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>


