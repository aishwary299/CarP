using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using VDSI_EmpCarPooling;
using VDSI_EmpCarPooling_BLL;
using System.Data;
using System.Xml;


namespace VDSI_EmpCarP.Test
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            CarPoolingBLL bll = new CarPoolingBLL();
            string result = bll.getLoginDetails("Arun", "Arun");
            Assert.AreEqual(result, "1234");
        }


        [TestMethod]
        public void TestMethod2()
        {
            try
            {
                CarPoolingBLL bll = new CarPoolingBLL();
                bll.InsertPoolingRequest("exec InsertRegDetails '1234','a4@ggs','porur','guindy','ramapuram','10','11','1'");               
            }
            catch
            {
                Assert.Fail();
            }

        }


        [TestMethod]
        public void TestMethod3()
        {
            CarPoolingBLL bll = new CarPoolingBLL();
            string strsql = "exec [ViewCarPoolingDetails] '','',''";
            Assert.AreEqual( bll.ViewPoolingDetails(strsql).Tables[0].Columns.Count,12);
         //   Assert.AreEqual( ds.Tables[0].Columns.Count,12); 
        }


        [TestMethod]
        public void TestMethod4()
        {
            try
            {
                CarPoolingBLL bll = new CarPoolingBLL();
                bll.insertRegistrationDetails("exec InsertRegDetails '1234','a4@ggs','porur','guindy','ramapuram','10','11','1'");
            }
            catch
            {
                Assert.Fail();
            }
            
        }

            
    }
}
