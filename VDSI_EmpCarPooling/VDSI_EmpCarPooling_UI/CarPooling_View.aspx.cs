using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VDSI_EmpCarPooling_BLL;

namespace VDSI_EmpCarPooling.VDSI_EmpCarPooling_UI
{
    public partial class CarPooling_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindGrid();
        }

        public void BindGrid()
        {

            VDSI_EmpCarPooling_BLL.CarPoolingBLL objBll = new CarPoolingBLL();

            string strsql = "exec [ViewCarPoolingDetails] '" + txtStPoint.Text + "','" + txtEndPoint.Text + "','" + txtTime.Text +"'";
            DataSet ds = objBll.ViewPoolingDetails(strsql);
            grdView.DataSource = ds;
            grdView.DataBind();

        }

        protected void grdView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = grdView.Rows[e.NewEditIndex];
            int RespId = Convert.ToInt32(((Label)row.Cells[1].FindControl("lblReqId")).Text);

            string RespPerson = ((TextBox)row.Cells[5].FindControl("txtName")).Text;
            string RespSeat = ((TextBox)row.Cells[6].FindControl("txtSeats")).Text;
            string RespBoarding = ((TextBox)row.Cells[7].FindControl("txtBoarding")).Text;
            string RespNo = ((TextBox)row.Cells[7].FindControl("txtNo")).Text;


            string strsql = "exec InsertPoolingRequest " + RespId + ",'1234','" + RespSeat + "','" + RespBoarding + "','" + RespNo + "','" + RespPerson +"'";

            CarPoolingBLL carPoolingBll = new CarPoolingBLL();
            carPoolingBll.insertRegistrationDetails(strsql);
        }

        protected void grdView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}