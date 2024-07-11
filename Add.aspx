<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="CRUD.Add" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Data</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table Style="margin-left: 100px;" ID="Table1" runat="server" BorderStyle="Dashed" Caption="InsertDatabaseTable" Height="254px" Width="355px">
            <asp:TableRow>
                <asp:TableCell>First_Name</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtFname"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Second_Name</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtLName"></asp:TextBox>
                </asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Contact</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtContact"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Email</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtMail"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right" ColumnSpan="2">
                    <asp:Button runat="server" ID="btnCreate" Text="Create" OnClick="BtnCreate" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="u_id">
            <Columns>
                <asp:BoundField DataField="u_id" HeaderText="u_id" ReadOnly="True" InsertVisible="False" SortExpression="u_id"></asp:BoundField>
                <asp:BoundField DataField="u_fname" HeaderText="u_fname" SortExpression="u_fname"></asp:BoundField>
                <asp:BoundField DataField="u_lname" HeaderText="u_lname" SortExpression="u_lname"></asp:BoundField>
                <asp:BoundField DataField="u_contact" HeaderText="u_contact" SortExpression="u_contact"></asp:BoundField>
                <asp:BoundField DataField="u_email" HeaderText="u_email" SortExpression="u_email"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:CRUD %>" ProviderName="<%$ ConnectionStrings:CRUDConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Table_1]"></asp:SqlDataSource>
    </form>
</body>
</html>
