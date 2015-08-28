using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VDSI_EmpCarPooling_BLL;


namespace VDSI_EmpCarPooling.VDSI_EmpCarPooling_UI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtUserName.Text) && !string.IsNullOrEmpty(txtPassword.Text))
            {
                VDSI_EmpCarPooling_BLL.CarPoolingBLL objBll = new CarPoolingBLL();
                //CarPoolingBLL carPoolingBll = new CarPoolingBLL();
                string empId = objBll.getLoginDetails(txtUserName.Text, txtPassword.Text);

                if (!string.IsNullOrEmpty(empId))
                {
                    Session["EmpId"] = empId;
                    Response.Redirect("../Menupage.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Invalid Username Or Password.');", true);
               
                }
            }
        }
    }
}