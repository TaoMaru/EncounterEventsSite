<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="EncounterEvents.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Event Reservation Form</h2>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 150px">Name: </td>
            <td class="modal-sm" style="width: 250px">
                <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">Email Address: </td>
            <td class="modal-sm" style="width: 250px">
                <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">Event Selection: </td>
            <td class="modal-sm" style="width: 250px">
                <asp:CheckBox ID="chkCastle" runat="server" Checked="True" Text="Castle" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 250px">
                <asp:CheckBox ID="chkArtisan" runat="server" Text="Artisan Dining" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 250px">
                <asp:CheckBox ID="chkEmersion" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 250px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 250px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>
