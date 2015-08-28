using System; 
using System.Collections.Generic; 
using System.Linq; 
using System.Web; 
using System.Data; 
using System.Data.Sql; 
using System.Data.SqlClient; 
using System.Configuration;


 namespace VDSI_EmpCarPooling_BLL 
 { 
   
     public class Database 
     { 

   //string constring="data source=SCSBWIN-119391\\SQLEXPRESS;initial catalog=VDSI_CARP;integrated security=True;";
   // SqlConnection con = new SqlConnection(constring);

   //string conStr = ConfigurationManager.ConnectionStrings["Test"].ToString();
         //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VDSI_CARPEntities"].ConnectionString); 
         //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["VDSI_CARPEntities"].ConnectionString);
         string con1 = @"data source=SCSBWIN-706327\SQLEXPRESS;initial catalog=VDSI_CARP;integrated security=SSPI;";
         //System.Configuration.ConfigurationManager.Connectionstr
         SqlConnection con =  null;
         public Database()
         {
            con  = new  SqlConnection(con1);
         }
        // SqlConnection con = new SqlConnection(Properties.Settings.Default.connectionStr);
        // string cs = ConfigurationManager.AppSettings["Connectionstring"].ConnectionString;
           // st.con = new SqlConnection(cs);
         DataSet ds = new DataSet(); 
      
         public DataSet SelectData(String Query) 
         { 
             try 
             { 
                  
                 SqlCommand cmd = new SqlCommand(Query,con); 
                
                 SqlDataAdapter da = new SqlDataAdapter(Query,con); 
                 da.Fill(ds); 
                  
 

                 
             } 
             catch (Exception e) 
             { 
             } 
             return ds; 
 

         } 
 

         public void InsertandupdateData(string query) 
         { 
             SqlCommand cmd=new SqlCommand(query,con); 
             con.Open(); 
             cmd.ExecuteNonQuery(); 
             con.Close(); 
              
         } 
 

         public void Storedprocwithparameter(string spname,string[] paramenter) 
         { 
 

           SqlCommand cmd=new SqlCommand(spname,con); 
           con.Open(); 
            cmd.CommandType=CommandType.StoredProcedure; 
           foreach(string data in paramenter) 
           { 
               cmd.Parameters.Add(data); 
           } 


           cmd.ExecuteNonQuery(); 
           con.Close(); 
       } 


       public void storedproc(string spname) 
       { 
            
           SqlCommand cmd=new SqlCommand(spname,con); 
           con.Open(); 
            cmd.CommandType=CommandType.StoredProcedure; 
            cmd.ExecuteNonQuery(); 
           con.Close(); 
       } 
   } 
    
   } 


  
