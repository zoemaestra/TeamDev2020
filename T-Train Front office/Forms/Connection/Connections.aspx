﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connections.aspx.cs" Inherits="T_Train_Front_office.Forms.Connection.Connections" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <p>
            <asp:Button ID="btnTickets" runat="server" style="z-index: 1; left: 581px; top: 32px; position: absolute" Text="My tickets" OnClick="btnTickets_Click" Font-Size="Large" />
        <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 360px; top: 589px; position: absolute" Text="All rights reserved (at) T-Train 2020"></asp:Label>
            <asp:Button ID="btnSettings" runat="server" style="z-index: 1; left: 742px; top: 32px; position: absolute; right: 64px" Text="Account Settings" OnClick="btnSettings_Click" />
            <asp:Button ID="btnStaffDashboard" runat="server" style="z-index: 1; left: 429px; top: 36px; position: absolute; right: 389px;" Text="Staff Dashboard" OnClick="btnStaffDashboard_Click" />
        </p>
        <div>
        <asp:Button ID="btnHomepage" runat="server" style="z-index: 1; left: 32px; top: 29px; position: absolute; right: 834px;" Text="Homepage" OnClick="btnHomepage_Click" />
            <asp:Button ID="btnSignup" runat="server" style="z-index: 1; left: 822px; top: 27px; position: absolute" Text="Signup" OnClick="btnSignup_Click" Font-Size="X-Large" />
        <asp:Button ID="btnLogin" runat="server" style="z-index: 1; left: 719px; top: 26px; position: absolute" Text="Login" OnClick="btnLogin_Click" Font-Size="X-Large" />
        <asp:Label ID="lblHeaderWelcome" runat="server" Font-Size="XX-Large" style="z-index: 1; left: 184px; top: 24px; position: absolute" Text="T-Train"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" style="z-index: 1; left: 19px; top: 158px; position: absolute" Text="Find your connection:"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 82px; top: 196px; position: absolute" Text="Departure station:"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 126px; top: 231px; position: absolute" Text="From:"></asp:Label>
        <asp:DropDownList ID="ddlFrom" runat="server" style="z-index: 1; left: 185px; top: 233px; position: absolute; right: 694px;">
            <asp:ListItem>Leicester</asp:ListItem>
            <asp:ListItem>Birmingham</asp:ListItem>
            <asp:ListItem>Glasgow</asp:ListItem>
            <asp:ListItem>London</asp:ListItem>
            <asp:ListItem>Cambridge</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label6" runat="server" Font-Size="X-Large" style="z-index: 1; left: 334px; top: 228px; position: absolute" Text="&lt;=&gt;"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 441px; top: 233px; position: absolute; right: 524px;" Text="To:"></asp:Label>
        <asp:DropDownList ID="ddlTo" runat="server" style="z-index: 1; left: 481px; top: 234px; position: absolute">
            <asp:ListItem>Leicester</asp:ListItem>
            <asp:ListItem>Glasgow</asp:ListItem>
            <asp:ListItem>Birmingham</asp:ListItem>
            <asp:ListItem>London</asp:ListItem>
            <asp:ListItem>Cambridge</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 74px; top: 278px; position: absolute" Text="Departure Date &amp; Time:"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 109px; top: 318px; position: absolute; right: 814px;" Text="Date:"></asp:Label>
        <asp:TextBox ID="txtDate" runat="server" style="z-index: 1; top: 317px; position: absolute; margin-bottom: 5px; right: 629px; width: 133px;"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 435px; top: 317px; position: absolute" Text="Time:"></asp:Label>
        <asp:Button ID="btnFilterConnections" runat="server" style="z-index: 1; left: 732px; top: 288px; position: absolute" Text="Search Connections" OnClick="btnFilterConnections_Click" />
            <asp:Label ID="lblError" runat="server" Font-Size="Large" ForeColor="Red" style="z-index: 1; left: 397px; top: 179px; position: absolute"></asp:Label>
        <asp:Button ID="btnConnections" runat="server" style="z-index: 1; left: 755px; top: 247px; position: absolute" Text="All connections" OnClick="btnConnections_Click" />
        </div>
        <asp:Label ID="lblConsHeader" runat="server" Font-Size="X-Large" style="z-index: 1; left: 36px; top: 375px; position: absolute" Text="Connections Found:"></asp:Label>
        <p>
        <asp:Button ID="btnLogout" runat="server" style="z-index: 1; left: 909px; top: 28px; position: absolute" Text="Logout" OnClick="btnLogout_Click" />
        <asp:Label ID="lblConsRoute" runat="server" style="z-index: 1; left: 102px; top: 453px; position: absolute" Text="Leicester - Birmingham"></asp:Label>
        <asp:Label ID="lblConsTime" runat="server" style="z-index: 1; left: 420px; top: 455px; position: absolute" Text="14:25"></asp:Label>
        </p>
        <asp:Button ID="btnBookTicket" runat="server" OnClick="btnBookTicket_Click1" style="z-index: 1; left: 606px; top: 451px; position: absolute; right: 249px" Text="Book Ticket" />
        <asp:Button ID="btnManageConnection" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 745px; top: 450px; position: absolute" Text="Manage Connection" />
        <p>
        <asp:Label ID="lblConsDate" runat="server" style="z-index: 1; left: 302px; top: 454px; position: absolute; right: 586px;" Text="12/06/2021"></asp:Label>
        </p>
        <asp:Label ID="lblConsPublic" runat="server" style="z-index: 1; left: 514px; top: 455px; position: absolute" Text="Public"></asp:Label>
        <asp:DropDownList ID="ddlTime" runat="server" style="z-index: 1; left: 498px; top: 314px; position: absolute">
        </asp:DropDownList>
        <p>
        <asp:Button ID="btnPick" runat="server" OnClick="btnPick_Click" style="z-index: 1; left: 348px; top: 315px; position: absolute; height: 26px" Text="Pick" />
        <asp:Calendar ID="dtpDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" style="z-index: 1; left: 114px; top: 355px; position: absolute; height: 188px; width: 259px" Width="330px" Visible="False">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
        </p>
    </form>
</body>
</html>
