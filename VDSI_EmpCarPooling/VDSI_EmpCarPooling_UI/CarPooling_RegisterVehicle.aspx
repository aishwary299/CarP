<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarPooling_RegisterVehicle.aspx.cs" Inherits="VDSI_EmpCarPooling.VDSI_EmpCarPooling_UI.CarPooling_RegisterVehicle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/StyleSheet1.css" rel="stylesheet" />   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Name" ID="lblName" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Emp Id" ID="Label1" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpId" Enabled="false" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Car Detail" ID="Label2" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCar" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label Text="In Time" ID="Label7" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtInTime" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label Text="Out Time" ID="Label8" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOutTime" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="From" ID="Label3" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="To" ID="Label4" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Via" ID="Label5" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtVia" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Email" ID="Label6" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Available Seats" ID="lblSeats" runat="server" style="font-weight:bold; color:black;"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtseats" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"
                  style="font-weight:bold;color:red; background-color:white;" ></asp:Button>

            <br />
            <asp:Label ID="lblMsg" runat="server" Font-Bold="true" ForeColor="RosyBrown"></asp:Label>
        </div>
    </form>
</body>
</html>
