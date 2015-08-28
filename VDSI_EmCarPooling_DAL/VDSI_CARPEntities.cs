using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.EntityClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VDSI_EmCarPooling_DAL
{
    public partial class VDSI_CARPEntities : DbContext
    {
        public VDSI_CARPEntities(string connectionString)
            :base(connectionString)
        {

        }

        public static VDSI_CARPEntities createInstance()
        {
            EntityConnectionStringBuilder sb = new EntityConnectionStringBuilder();
            sb.Metadata = "res://*/CarPooling.csdl|res://*/CarPooling.ssdl|res://*/CarPooling.msl";
            sb.Provider = "System.Data.SqlClient";
            sb.ProviderConnectionString = @"data source=SCSBWIN-119391\SQLEXPRESS;initial catalog=VDSI_CARP;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";
            return new VDSI_CARPEntities(sb.ConnectionString);
        }
        public static string createInstanceConString()
        {
            EntityConnectionStringBuilder sb = new EntityConnectionStringBuilder();
            sb.Metadata = "res://*/CarPooling.csdl|res://*/CarPooling.ssdl|res://*/CarPooling.msl";
            sb.Provider = "System.Data.SqlClient";
            sb.ProviderConnectionString = @"data source=SCSBWIN-119391\SQLEXPRESS;initial catalog=VDSI_CARP;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework";
            return sb.ConnectionString;
        }
    }
}
