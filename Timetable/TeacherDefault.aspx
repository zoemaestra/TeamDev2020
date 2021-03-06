﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherDefault.aspx.cs" Inherits="Timetable.TeacherDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher</title>
    <link href="css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 100px;
            left: 10px;
            z-index: 1;
            width: 160px;
        }
        .auto-style2 {
            position: absolute;
            top: 150px;
            left: 10px;
            z-index: 1;
            width: 160px;
        }
        .auto-style3 {
            position: absolute;
            top: 200px;
            left: 10px;
            z-index: 1;
            width: 160px;
        }
        .auto-style4 {
            z-index: 1;
            left: 10px;
            top: 34px;
            position: absolute;
            height: 42px;
            width: 1002px;
        }
        .auto-style5 {
            position: absolute;
            top: 245px;
            left: 10px;
            z-index: 1;
            width: 160px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblTitle" runat="server" Font-Size="XX-Large" Text="Hello, <teacher>" CssClass="auto-style4"></asp:Label>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <asp:Button ID="btnViewTimetable" runat="server" CssClass="auto-style1" Text="View Timetable" OnClick="btnViewTimetable_Click" />
        <asp:Button ID="btnContact" runat="server" CssClass="auto-style2" Text="Contact Admins" OnClick="btnContact_Click" />
        <asp:Button ID="btnChangePassword" runat="server" CssClass="auto-style3" Text="Change Password" OnClick="btnChangePassword_Click" />
        <asp:Button ID="btnLogout" runat="server" CssClass="auto-style5" OnClick="btnLogout_Click" Text="Log Out" />
    </form>
</body>
</html>
