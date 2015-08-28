using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using System.Data;

namespace VDSI_EmpCarPooling_BLL
{

    
    public class CarPoolingBLL
    {
        public string getLoginDetails(string username,string password)
        {
           //VDSI_CARPEntities entities = VDSI_CARPEntities.createInstance();


           // var loginList = (from list in entities.LOGINs
           //                  where list.EmpName.Equals(username) && list.Password.Equals(password)
           //                  select list).ToList();
           // if (loginList != null)            
           //     return loginListdat.Select(a => a.EmpId).ElementAtOrDefault(0);
           // return null;
            string strsql = "select empid from login where empname='" + username + "' and password= '" + password + "'";
            VDSI_EmpCarPooling_BLL.Database objdll = new Database();
            DataSet ds =objdll.SelectData(strsql);
            if (ds != null)
            {
                return ds.Tables[0].Rows[0][0].ToString();
            }
            else
                return "";
        }


        public void insertRegistrationDetails(string strsql)
        {
            VDSI_EmpCarPooling_BLL.Database objdll = new Database();
            objdll.InsertandupdateData(strsql);
        }
        public DataSet ViewPoolingDetails(string strsql)
        {
            VDSI_EmpCarPooling_BLL.Database objdll = new Database();
            DataSet ds = objdll.SelectData(strsql);
            return ds;
        }

        public void InsertPoolingRequest(string strsql)
        {
            VDSI_EmpCarPooling_BLL.Database objdll = new Database();
            objdll.InsertandupdateData(strsql);
        
        }
    }
}
