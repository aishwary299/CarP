<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CP_WorkList.aspx.cs" Inherits="VDSI_EmpCarPooling.VDSI_EmpCarPooling_UI.CP_WorkList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../style/StyleSheet1.css" rel="stylesheet" />  
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:80%;vertical-align:central; text-align:center">
            <tr>
                <td style="text-align:center">
                    <asp:Label  style="text-align:center; font-weight:bolder; font-size:large; color:maroon; text-align:center;" ID="lblHeading" runat="server" Text="Work List" ></asp:Label>
                </td>
            </tr>
            <tr style="height:15px;">

            </tr>
            <tr>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStatus" runat="server" Text="Status"  style="font-weight:bold; color:black;" ></asp:Label>
                    <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                        <asp:ListItem Value="">Pending</asp:ListItem>
                        <asp:ListItem Value="1">Pending</asp:ListItem>
                        <asp:ListItem Value="2">Approved</asp:ListItem>
                        <asp:ListItem Value="3">Reject</asp:ListItem>

                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <br />

        <asp:GridView ID="grdView" runat="server" AutoGenerateColumns="false" OnRowDeleting="grdView_RowDeleting" OnRowEditing="grdView_RowEditing">
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblHEmpname" runat="server" Text="Requester Name" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblEmpname" runat="server" Text='<%#Eval("Reqempname")%>'></asp:Label>
                        <asp:Label ID="lblEmpid" runat="server" Text='<%#Eval("ownerEmpId")%>' Visible="false"></asp:Label>
                         <asp:Label ID="lbltblId" runat="server" Text='<%#Eval("Id")%>' Visible="false"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblSpoint" runat="server" Text="Requestes Seats" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
               <ItemTemplate>
                        <asp:Label ID="lblFrom" runat="server" Text='<%#Eval("seats")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblDto" runat="server" Text="Boarding Point" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblTo" runat="server" Text='<%#Eval("BoardingPoint")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblASeats" runat="server" Text="Mobile" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblAvailSeats" runat="server" Text='<%#Eval("Mobile")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblApprove" runat="server" Text="Approved" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="imgSendRequest" runat="server" ImageUrl="~/Images/Approve_svg.png"
                              width="30" height="20px" ToolTip="Please Click To Approved Request" CommandName="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                
                
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="lblDelete" runat="server" Text="Reject" style="font-weight:bold; color:black;"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="imgSendRequest" runat="server" ImageUrl="~/Images/delete.png"
                              width="30" height="20px" ToolTip="Please Click To Reject Request" CommandName="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
                



            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="true" ForeColor="RosyBrown"></asp:Label>
    </div>
    </form>
</body>
</html>
