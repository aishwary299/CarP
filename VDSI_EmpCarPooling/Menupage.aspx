<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menupage.aspx.cs" Inherits="VDSI_EmpCarPooling.Menupage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/StyleSheet1.css" rel="stylesheet" />    
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
    </style>
</head>
<body id="bodyMenu">   
        <table style="position:absolute; top: 19px; left: 0px; height: 170px;">
            <tr>
                <td><div style="position:absolute; font-weight:bolder; height:20px; font-size:large; color:maroon; text-align:center; top: -26px; left:120px;">VDSI Employee Car Pooling</div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="nav" style="top: -26px; left: 247px;">
                        <ul>
                            <li class="home"><a runat="server" href="VDSI_EMPCarPooling_UI/CarPooling_RegisterVehicle.aspx">Registration</a></li>
                            <li class="tutorials"><a runat="server"  href="VDSI_EMPCarPooling_UI/CarPooling_View.aspx">Book a Cab</a></li>
                            <li class="home"><a id="A1" runat="server" href="VDSI_EMPCarPooling_UI/CP_WorkList.aspx">Work List</a></li>

                        </ul>                       
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>
