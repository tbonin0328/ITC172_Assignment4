<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonationPage.aspx.cs" Inherits="DonationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Would you like to donate?</h1>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server">Donation Amount:</asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="revAmount" runat="server" ErrorMessage="You must enter an amount." ControlToValidate="txtAmount"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="rfvAmount" runat="server" ErrorMessage="You must enter a valid amount." ControlToValidate="txtAmount" ValidationExpression="^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
                <td>
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            </tr>

        </table>
    
    </div>
    </form>
</body>
</html>
