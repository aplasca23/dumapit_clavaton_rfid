using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReloadableRFID.Library.Models
{
    public class CourseModel
    {
        public int Id { get; set; }
        public int DepartmentId { get; set; }
        public string Course { get; set; }
        public DateTime DateCreated { get; set; }
    }
}
