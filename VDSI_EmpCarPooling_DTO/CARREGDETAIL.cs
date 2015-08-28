using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VDSI_EmpCarPooling_DTO
{
    public class CARREGDETAILDTO
    {
        public string Email { get; set; }
        public string EmpId { get; set; }
        public string From { get; set; }
        public int Id { get; set; }
        public string InTime { get; set; }
        public string OutTime { get; set; }
        public bool? Status { get; set; }
        public string To { get; set; }
        public string Via { get; set; }
    }
}
