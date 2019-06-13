<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Account_Manage" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        <h1><%: Title %></h1>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        &#39;s Account Details<br />
        <br />
        Personal Details<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="UID" DataSourceID="SqlDataSource12" ForeColor="Black" GridLines="Vertical" Width="772px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="UID" HeaderText="UID" InsertVisible="False" ReadOnly="True" SortExpression="UID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UID] = @original_UID" InsertCommand="INSERT INTO [User] ([Name], [Address], [City], [Pincode], [Mobile], [Email], [Password]) VALUES (@Name, @Address, @City, @Pincode, @Mobile, @Email, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User] WHERE ([UID] = @UID)" UpdateCommand="UPDATE [User] SET [Name] = @Name, [Address] = @Address, [City] = @City, [Pincode] = @Pincode, [Mobile] = @Mobile, [Email] = @Email, [Password] = @Password WHERE [UID] = @original_UID">
            <DeleteParameters>
                <asp:Parameter Name="original_UID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Pincode" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UID" SessionField="uid" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Pincode" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_UID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        All Orders<br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="OID" DataSourceID="SqlDataSource13" ForeColor="Black" GridLines="Vertical" Width="493px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="OID" HeaderText="OID" InsertVisible="False" ReadOnly="True" SortExpression="OID" />
                <asp:BoundField DataField="Iname" HeaderText="Iname" SortExpression="Iname" />
                <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
                <asp:BoundField DataField="TPrice" HeaderText="TPrice" SortExpression="TPrice" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" SelectCommand="SELECT [OID], [Iname], [Qnt], [TPrice] FROM [Order] WHERE ([UID] = @UID)">
            <SelectParameters>
                <asp:SessionParameter Name="UID" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        All Payments<br />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PID" DataSourceID="SqlDataSource14" ForeColor="Black" GridLines="Vertical" Width="763px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
                <asp:BoundField DataField="Uname" HeaderText="Uname" SortExpression="Uname" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Bank" HeaderText="Bank" SortExpression="Bank" />
                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" />
                <asp:BoundField DataField="CCV" HeaderText="CCV" SortExpression="CCV" />
                <asp:BoundField DataField="EntryDate" HeaderText="EntryDate" SortExpression="EntryDate" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:electronicsConnectionString %>" SelectCommand="SELECT [PID], [Uname], [Amount], [Type], [Bank], [Branch], [CardNo], [CCV], [EntryDate] FROM [Payment] WHERE ([UID] = @UID)">
            <SelectParameters>
                <asp:SessionParameter Name="UID" SessionField="uid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
