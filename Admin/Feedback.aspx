<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Admin_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        User FeedBack</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FID" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="FID" HeaderText="FID" InsertVisible="False" ReadOnly="True" SortExpression="FID" />
                <asp:BoundField DataField="UNAME" HeaderText="UNAME" SortExpression="UNAME" />
                <asp:BoundField DataField="MESSAGE" HeaderText="MESSAGE" SortExpression="MESSAGE" />
                <asp:BoundField DataField="ENTRYDATE" HeaderText="ENTRYDATE" SortExpression="ENTRYDATE" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" SelectCommand="SELECT [FID], [UNAME], [MESSAGE], [ENTRYDATE], [EMAIL] FROM [Feedback]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

