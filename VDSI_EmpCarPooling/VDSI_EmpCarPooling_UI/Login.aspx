﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VDSI_EmpCarPooling.VDSI_EmpCarPooling_UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

</head>
    
<body style="text-align:left ;background-image: url(../Images/image.jpg); width:99%;"/>
    <form id="form1" runat="server"  >
    <div style="width: 586px; margin: 0px auto; height: 388px;">
        <%--<img src="../Images/image.jpg" />--%>
        <div style="width: 271px; position:absolute; font-weight:bolder; text-align:center; top: 99px; left: 503px;">VDSI Employee Car Pooling</div>
    <table style="height: 156px; width: 271px; position:absolute; top: 147px; left: 498px;" >
        <tr> <td colspan="2"  style="font-weight:bold; color:white;" > Username</td></tr>
        <tr> <td colspan="2"> <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td></tr>
        <tr> <td colspan="2"  style="font-weight:bold; color:white;" > Password</td></tr>
        <tr> <td colspan="2"> <asp:TextBox ID="txtPassword"  TextMode="password" runat="server"></asp:TextBox></td></tr>
                <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" style="font-weight:bold;color:red; background-color:white;" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
