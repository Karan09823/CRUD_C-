<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="CRUD.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table Style="margin-left: 100px;" ID="Table1" runat="server" BorderStyle="Dashed" Caption="Delete DatabaseTable" Height="200px" Width="355px">
            <asp:TableRow>
                <asp:TableCell>Search by Email</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtSearchMail"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="BtnSearch" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>First_Name</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtFname" ReadOnly="True"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Second_Name</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtLName" ReadOnly="True"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Contact</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtContact" ReadOnly="True"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Email</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox runat="server" ID="txtMail" ReadOnly="True"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right" ColumnSpan="2">
                    <asp:Button runat="server" ID="btnDelete" Text="Delete" OnClick="BtnDelete" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
