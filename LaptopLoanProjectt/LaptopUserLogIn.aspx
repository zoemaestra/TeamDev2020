﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LaptopUserLogIn.aspx.cs" Inherits="LaptopLoanProjectt.LaptopUserLogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
        <asp:Label ID="lblWelcomeL" runat="server" Font-Size="XX-Large" style="z-index: 1; left: 353px; top: 68px; position: absolute" Text="Welcome to Laptop Loan"></asp:Label>
        </p>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 480px; top: 115px; position: absolute" Text="Please LogIn"></asp:Label>
        <asp:Label ID="lblLaptopUserEmail" runat="server" style="z-index: 1; left: 118px; top: 201px; position: absolute" Text="Email:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 168px; top: 203px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 164px; top: 275px; position: absolute"></asp:TextBox>
        <asp:Label ID="lblLaptopUserPassWord" runat="server" style="z-index: 1; left: 86px; top: 277px; position: absolute" Text="PassWord:"></asp:Label>
        <asp:Button ID="btnMainPage" runat="server" style="z-index: 1; left: 62px; top: 41px; position: absolute" Text="MainPage" />
        <asp:Button ID="btnLogIn" runat="server" style="z-index: 1; left: 172px; top: 319px; position: absolute" Text="LogIn" />
        <p>
            <asp:Button ID="btnCancel" runat="server" style="z-index: 1; left: 242px; top: 319px; position: absolute" Text="Cancel" />
        </p>
    </form>
</body>
</html>