﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Customers.aspx.vb" Inherits="T_Train_Front_office.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 32px; top: 29px; position: absolute; right: 834px;" Text="Homepage" />
            <asp:Button ID="Button10" runat="server" style="z-index: 1; left: 391px; top: 26px; position: absolute; right: 456px;" Text="Staff Dashboard" />
            <asp:Button ID="Button9" runat="server" style="z-index: 1; left: 546px; top: 26px; position: absolute; right: 289px" Text="Account Settings" />
            <asp:Button ID="Button8" runat="server" style="z-index: 1; left: 714px; top: 26px; position: absolute" Text="My tickets" />
        <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 351px; top: 584px; position: absolute" Text="All rights reserved (at) T-Train 2020"></asp:Label>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" style="z-index: 1; left: 70px; top: 153px; position: absolute" Text="Find customers:"></asp:Label>
        </div>
        <p>
            <asp:Label ID="Label24" runat="server" style="z-index: 1; left: 101px; top: 216px; position: absolute" Text="Customer's First Name:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 260px; top: 218px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label23" runat="server" style="z-index: 1; left: 102px; top: 252px; position: absolute" Text="Customer's Last Name:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 260px; top: 254px; position: absolute">Cha</asp:TextBox>
            <asp:Label ID="Label25" runat="server" style="z-index: 1; left: 96px; top: 289px; position: absolute" Text="Customer's Date of Birth:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 273px; top: 291px; position: absolute">/06/</asp:TextBox>
        </p>
        <asp:Button ID="Button11" runat="server" style="z-index: 1; left: 476px; top: 268px; position: absolute" Text="Search" />
        <p>
        <asp:Label ID="Label9" runat="server" Font-Size="X-Large" style="z-index: 1; left: 36px; top: 375px; position: absolute" Text="Customers Found:"></asp:Label>
            <asp:Button ID="Button12" runat="server" style="z-index: 1; left: 535px; top: 427px; position: absolute" Text="Manage Customer" />
        </p>
        <asp:Label ID="Label26" runat="server" style="z-index: 1; left: 139px; top: 432px; position: absolute" Text="James Charriot - 19/06/1996 - JamesC@gmail.com"></asp:Label>
        <asp:Label ID="Label27" runat="server" style="z-index: 1; left: 140px; top: 522px; position: absolute" Text="Morris Chandle - 14/06/1992 - MChandle@promail.org"></asp:Label>
        <asp:Label ID="Label28" runat="server" style="z-index: 1; left: 140px; top: 477px; position: absolute" Text="James Chapton - 17/06/1995 - kewikoqj@yahoo.net"></asp:Label>
        <p>
            <asp:Button ID="Button13" runat="server" style="z-index: 1; left: 532px; top: 523px; position: absolute" Text="Manage Customer" />
            <asp:Button ID="Button14" runat="server" style="z-index: 1; left: 535px; top: 475px; position: absolute" Text="Manage Customer" />
        </p>
        <asp:Label ID="Label29" runat="server" style="z-index: 1; left: 100px; top: 325px; position: absolute" Text="Customer's Email Address:"></asp:Label>
        <p>
        <asp:Label ID="lblHeaderWelcome" runat="server" Font-Size="XX-Large" style="z-index: 1; left: 353px; top: 68px; position: absolute" Text="Welcome to T-Train"></asp:Label>
        </p>
    </form>
</body>
</html>