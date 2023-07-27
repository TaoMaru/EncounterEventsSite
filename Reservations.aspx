<%@ Page Title="Encounter Events" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.vb" Inherits="EncounterEvents.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>&nbsp;Reservation Form</h2>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 150px; height: 22px;">Name: </td>
            <td class="modal-sm" style="width: 250px; height: 22px;">
                <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="* Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">Email Address: </td>
            <td class="modal-sm" style="width: 250px">
                <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Error Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">Venue: </td>
            <td class="modal-sm" style="width: 250px">
               
                <asp:RadioButtonList ID="rblVenue" runat="server">
                    <asp:ListItem Selected="True">Dunrobin (UK)</asp:ListItem>
                    <asp:ListItem>Neuschwanstein (Germany)</asp:ListItem>
                    <asp:ListItem>Himeji (Japan)</asp:ListItem>
                    <asp:ListItem>Bretesche (France)</asp:ListItem>
                </asp:RadioButtonList>
               
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">Event Selection: </td>
            <td class="modal-sm" style="width: 250px">
                <asp:CheckBox ID="chkCastle" runat="server" Checked="True" Text="Castle" />
            </td>
            <td>
                <asp:Label ID="lblEventError" runat="server" Text="* Please select an event" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px; height: 20px;"></td>
            <td class="modal-sm" style="width: 250px; height: 20px;">
                <asp:CheckBox ID="chkArtisan" runat="server" Text="Artisan Dining" />
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">&nbsp;</td>
            <td class="modal-sm" style="width: 250px">
                <asp:CheckBox ID="chkEmersive" runat="server" Text="Emersive" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">Night(s): </td>
            <td class="modal-sm" style="width: 250px">
                <asp:DropDownList ID="ddlNights" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px">Check-in Date: </td>
            <td class="modal-sm" style="width: 250px">
                <asp:Calendar ID="cldArrival" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                <br />
                <asp:Label ID="lblCalendarError" runat="server" Text="* Please Select a Valid Date" Visible="False"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="lblReservation" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 150px; height: 22px;"></td>
            <td class="modal-sm" style="width: 250px; height: 22px;"></td>
            <td class="modal-sm" style="width: 150px; height: 22px;">
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>
