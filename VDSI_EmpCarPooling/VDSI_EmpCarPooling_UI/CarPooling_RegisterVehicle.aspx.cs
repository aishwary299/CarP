using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VDSI_EmpCarPooling_BLL;


namespace VDSI_EmpCarPooling.VDSI_EmpCarPooling_UI
{
    public partial class CarPooling_RegisterVehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpId"] != null)
                txtEmpId.Text = Session["EmpId"].ToString();            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            CarPoolingBLL carPoolingBll = new CarPoolingBLL();

            string strsql = "exec InsertRegDetails '" + Session["EmpId"].ToString() + "','" + txtEmail.Text + "','" + txtFrom.Text + "','" + txtTo.Text + "','" + txtVia.Text+ "','" +txtInTime.Text + "','" +txtOutTime.Text + "','" + txtseats.Text + "'" ;
            carPoolingBll.insertRegistrationDetails(strsql);

            lblMsg.Text = "Registration is Succesfully";
         //   Page.ClientScript.RegisterClientScriptBlock(this.GetType(),"test","javascript:alert(created Sucessfully)","window.location:Close();",1)
        }
    }
}