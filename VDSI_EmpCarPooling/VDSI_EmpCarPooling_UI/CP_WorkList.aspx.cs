using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VDSI_EmpCarPooling_BLL;

namespace VDSI_EmpCarPooling.VDSI_EmpCarPooling_UI
{
    public partial class CP_WorkList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindgrid();
        }

        protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bindgrid();
        }
        public void Bindgrid()
        {
            string strsql = "exec ViewPoolingRequest '" + ddlStatus.SelectedValue + "'";

            VDSI_EmpCarPooling_BLL.CarPoolingBLL objBll = new CarPoolingBLL();
            DataSet ds = objBll.ViewPoolingDetails(strsql);
            grdView.DataSource = ds;
            grdView.DataBind();

        }

        protected void grdView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = grdView.Rows[e.RowIndex];
            int RespId = Convert.ToInt32(((Label)row.Cells[1].FindControl("lblReqId")).Text);

            string strsql = " update poolingrequest set status =2 where id= " + RespId;

            CarPoolingBLL carPoolingBll = new CarPoolingBLL();
            carPoolingBll.ViewPoolingDetails(strsql);

            lblMsg.Text = "Record has been Deleting";
        }

        protected void grdView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = grdView.Rows[e.NewEditIndex];
            int RespId = Convert.ToInt32(((Label)row.Cells[1].FindControl("lblReqId")).Text);

            string strsql = " update poolingrequest set status =2 where id= " + RespId;

            CarPoolingBLL carPoolingBll = new CarPoolingBLL();
            carPoolingBll.ViewPoolingDetails(strsql);

            lblMsg.Text = "Record has been Approved";
        }
    }
}