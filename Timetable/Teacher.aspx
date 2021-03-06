﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Timetable.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User</title>
    <link href="css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 10px;
            top: 460px;
            position: absolute;
        }
        .auto-style2 {
            z-index: 1;
            left: 64px;
            top: 460px;
            position: absolute;
        }
        .auto-style3 {
            position: absolute;
            top: 425px;
            left: 10px;
            z-index: 1;
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblTitle" runat="server" Font-Size="X-Large" style="z-index: 1; left: 17px; top: 15px; position: absolute" Text="(Add/Edit) Teacher"></asp:Label>

        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 10px; top: 50px; position: absolute" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" style="z-index: 1; left: 10px; top: 80px; position: absolute" MaxLength="100"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 10px; top: 110px; position: absolute" Text="User's Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" style="z-index: 1; left: 10px; top: 140px; position: absolute; " MaxLength="50" TextMode="Password" EnableTheming="True"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 10px; top: 169px; position: absolute" Text="Confirm User's Password"></asp:Label>
        <asp:TextBox ID="txtPasswordConfirm" runat="server" style="z-index: 1; left: 10px; top: 189px; position: absolute" MaxLength="50" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 9px; top: 223px; position: absolute" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server" style="z-index: 1; left: 10px; top: 256px; position: absolute" MaxLength="50"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 10px; top: 292px; position: absolute" Text="Last Name"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server" style="z-index: 1; left: 10px; top: 328px; position: absolute" MaxLength="50"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 10px; top: 360px; position: absolute" Text="Subject taught"></asp:Label>
        <asp:Button ID="btnRegister" runat="server" Text="Apply" OnClick="btnRegister_Click" CssClass="auto-style1" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CssClass="auto-style2" />
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 254px; top: 82px; position: absolute; height: 195px; width: 672px" Font-Bold="True" ForeColor="Red"></asp:Label>
        <asp:DropDownList ID="ddlSubject" runat="server" style="z-index: 1; left: 10px; top: 389px; position: absolute; height: 38px; width: 129px;">
        </asp:DropDownList>
        <asp:CheckBox ID="chkAdmin" runat="server" CssClass="auto-style3" Text="Admin" TextAlign="Left" />
    </form>
</body>
</html>
