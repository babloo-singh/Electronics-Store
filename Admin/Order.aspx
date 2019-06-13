<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Admin_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Order Details</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OID" DataSourceID="SqlDataSource6" Width="746px">
            <Columns>
                <asp:BoundField DataField="OID" HeaderText="OID" InsertVisible="False" ReadOnly="True" SortExpression="OID" />
                <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
                <asp:BoundField DataField="Iname" HeaderText="Iname" SortExpression="Iname" />
                <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
                <asp:BoundField DataField="TPrice" HeaderText="TPrice" SortExpression="TPrice" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OID] = @OID" InsertCommand="INSERT INTO [Order] ([UID], [Iname], [Qnt], [TPrice], [Status]) VALUES (@UID, @Iname, @Qnt, @TPrice, @Status)" SelectCommand="SELECT [OID], [UID], [Iname], [Qnt], [TPrice], [Status] FROM [Order]" UpdateCommand="UPDATE [Order] SET [UID] = @UID, [Iname] = @Iname, [Qnt] = @Qnt, [TPrice] = @TPrice, [Status] = @Status WHERE [OID] = @OID">
            <DeleteParameters>
                <asp:Parameter Name="OID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UID" Type="String" />
                <asp:Parameter Name="Iname" Type="String" />
                <asp:Parameter Name="Qnt" Type="Int32" />
                <asp:Parameter Name="TPrice" Type="Double" />
                <asp:Parameter Name="Status" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UID" Type="String" />
                <asp:Parameter Name="Iname" Type="String" />
                <asp:Parameter Name="Qnt" Type="Int32" />
                <asp:Parameter Name="TPrice" Type="Double" />
                <asp:Parameter Name="Status" Type="Int32" />
                <asp:Parameter Name="OID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

