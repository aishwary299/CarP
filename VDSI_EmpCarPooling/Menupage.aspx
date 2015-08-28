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
<body class="news">
    <header>
    </header>
        <table style="position:absolute; top: 19px; left: 0px; height: 170px;">
            <tr>
                <td class="auto-style1"><div style="width: 271px; position:absolute; font-weight:bolder; text-align:center; top: -26px; left: 247px;">VDSI Employee Car Pooling</div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="nav">
                        <ul>
                            <li class="home"><a runat="server" href="VDSI_EMPCarPooling_UI/CarPooling_RegisterVehicle.aspx">Registration</a></li>
                            <li class="tutorials"><a runat="server" class="active" href="VDSI_EMPCarPooling_UI/CarPooling_View.aspx">Book a Cab</a></li>
                            <li class="home"><a id="A1" runat="server" href="VDSI_EMPCarPooling_UI/CP_WorkList.aspx">Registration</a></li>

                        </ul>
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>
