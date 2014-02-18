<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </td>
                <td>
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Register</asp:LinkButton>
                </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>