﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ResetPassword.aspx.vb" Inherits="T_Train_Front_office.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
        <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 373px; top: 313px; position: absolute" Text="All rights reserved (at) T-Train 2020"></asp:Label>
        </p>
        <p>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 32px; top: 29px; position: absolute; right: 834px;" Text="Homepage" />
            <asp:Button ID="Button5" runat="server" style="z-index: 1; left: 801px; top: 34px; position: absolute" Text="Login" />
            <asp:Button ID="Button6" runat="server" style="z-index: 1; left: 881px; top: 36px; position: absolute" Text="Signup" />
        </p>
        <div>
        </div>
        <p>
        <asp:Label ID="lblHeaderWelcome" runat="server" Font-Size="XX-Large" style="z-index: 1; left: 353px; top: 68px; position: absolute" Text="Welcome to T-Train"></asp:Label>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 379px; top: 113px; position: absolute" Text="Reset the password to your account"></asp:Label>
        </p>
        <p>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 395px; top: 226px; position: absolute; height: 19px; right: 529px;" Text="Email:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 469px; top: 222px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 408px; top: 265px; position: absolute" Text="Reset Password" />
        </p>
    </form>
</body>
</html>