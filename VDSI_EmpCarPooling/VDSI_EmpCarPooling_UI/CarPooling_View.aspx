<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarPooling_View.aspx.cs" Inherits="VDSI_EmpCarPooling.VDSI_EmpCarPooling_UI.CarPooling_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../style/StyleSheet1.css" rel="stylesheet" />  
</head>
<body style="background-image: url(../Images/cars_imagewallpaper.jpg);">
    <form id="form1" runat="server">
    <div>
        <table style="width:80%;vertical-align:central; text-align:center">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblHeading" runat="server" Text="ViewDetails"  style="font-weight:600; color:black;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width:100%;text-align:left;"  colspan="2" >
                    <asp:Label ID="lblStPoint" runat="server" Text="Starting Point" Width="20%" style="font-weight:bold; color:black;"></asp:Label>
                    <asp:TextBox ID="txtStPoint" runat="server" Width="20%"></asp:TextBox>
                    <asp:Label ID="LblEndPoint" runat="server" Text="Destination Point" Width="20%" style="font-weight:bold; color:black;"></asp:Label>
                    <asp:TextBox ID="txtEndPoint" runat="server" Width="20%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:50%;text-align:left;" >
                    <asp:Label ID="Label1" runat="server" Text="Starting Time" Width="30%" style="font-weight:bold; color:black;"></asp:Label>
                    <asp:TextBox ID="txtTime" runat="server" Width="40%"></asp:TextBox>
                </td>

                <td style="width:50%; text-align:center">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" 
                        style="font-weight:bold;color:red; background-color:white;"/>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>

        <asp:GridView ID="grdView" runat="server" AutoGenerateColumns="false" OnRowEditing="grdView_RowEditing">
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblHEmpname" runat="server" Text="Person Name"  style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblEmpname" runat="server" Text='<%#Eval("Empname")%>'  ></asp:Label>
                        <asp:Label ID="lblEmpid" runat="server" Text='<%#Eval("EmpId")%>' Visible="false" style="font-weight:bold; color:black;"></asp:Label>
                        <asp:Label ID="lblReqId" runat="server" Text='<%#Eval("ID")%>' Visible="false" style="font-weight:bold; color:black;"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblSpoint" runat="server" Text="Starting Point" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
               <ItemTemplate>
                        <asp:Label ID="lblFrom" runat="server" Text='<%#Eval("From")%>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblDto" runat="server" Text="Destination Point"  style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblTo" runat="server" Text='<%#Eval("To")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblHEmpname" runat="server" Text="Starting Time"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label23" runat="server" Text='<%#Eval("Intime")%>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblASeats" runat="server" Text="Available Seats" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblAvailSeats" runat="server" Text='<%#Eval("Seats")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblnameReqPerson" runat="server" Text="Name of Requested Person" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate> 
                       <asp:TextBox ID="txtName" runat="server" Width="60px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                
                
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblSendReq" runat="server" Text="Seats Required" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate> 
                        <asp:TextBox ID="txtSeats" runat="server" MaxLength="5" Width="30px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                
                
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblSendReq" runat="server" Text="Boarding Point" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate> 
                        <asp:TextBox ID="txtBoarding" runat="server" Width="60px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblSendReq" runat="server" Text="Mobile No." ></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate> 
                        <asp:TextBox ID="txtNo" runat="server" Width="60px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                
                
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblSendReq" runat="server" Text="" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        
                        <asp:ImageButton ID="imgSendRequest" runat="server" ImageUrl="~/Images/iconRequestInfo.png" 
                             width="30" height="20px" ToolTip="Please Click To Send Request" CommandName="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                



            </Columns>
        </asp:GridView>
                    
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
