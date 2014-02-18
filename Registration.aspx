<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Register</h2>
    <table>
        <tr>
            <td>
                Enter Last Name:
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="revLastName" runat="server" ErrorMessage="You must enter last name." ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Enter First Name:
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="revFirstName" runat="server" ErrorMessage="You must enter first name." ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Enter Street Address:
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>
               <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is required." ControlToValidate="txtAddress"></asp:RequiredFieldValidator>              
            </td>
        </tr>
        <tr>
            <td>
                Enter City:
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td>
               <asp:RequiredFieldValidator ID="revCity" runat="server" ErrorMessage="City is required." ControlToValidate="txtCity"></asp:RequiredFieldValidator>              
            </td>
        </tr>
        <tr>
            <td>
                Enter State:
            </td>
            <td>
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            </td>
            <td>
               <asp:RequiredFieldValidator ID="revState" runat="server" ErrorMessage="State is required." ControlToValidate="txtState"></asp:RequiredFieldValidator>              
            </td>
        </tr>
        <tr>
            <td>
                Enter Zip Code:
            </td>
            <td>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="revZip" runat="server" ErrorMessage="Not a valid zip code." ControlToValidate="txtZip" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
            </td>
            <td>    
                <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Zip code is required." ControlToValidate="txtZip"></asp:RequiredFieldValidator>              
            </td>
        </tr>
        <tr>
            <td>
                Phone:
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Must use dashes for phone number." ControlToValidate="txtPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Phone number is required." ControlToValidate="txtPhone"></asp:RequiredFieldValidator>              
            </td>
        </tr>

        <tr>
            <td>
                Username (email address):
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="revEmail" runat="server" ErrorMessage="Username (email address) is required." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>              
            </td>
            <td>
                <asp:RegularExpressionValidator ID="rfvEmail" runat="server" ErrorMessage="You must enter a valid email." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>
                Password:
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="revPassword" runat="server" ErrorMessage="Password is required." ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password:
            </td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="revConfirm" runat="server" ErrorMessage="Password does not match." ControlToCompare="txtPassword" ControlToValidate="txtConfirm"></asp:CompareValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ErrorMessage="You must confirm your password." ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
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

    </table>
</asp:Content>
