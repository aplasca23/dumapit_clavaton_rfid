using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReloadableRFID.Library.Models
{
    public class StudentModel
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string StudentNo { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public DateTime Dob { get; set; }
        public string Gender { get; set; }
        public string Address { get; set; }
        public int DepartmentId { get; set; }
        public int CourseId { get; set; }
        public int YearLevelId { get; set; }
        public byte[] Photo { get; set; }
        public DateTime DateCreated { get; set; }
    }
}
