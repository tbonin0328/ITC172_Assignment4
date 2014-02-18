<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblHello" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="gvDonation" runat="server"></asp:GridView>
    <table>
        <tr>
            <td>
                <asp:Button ID="btnDonate" runat="server" Text="Donate!" OnClick="btnDonate_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
