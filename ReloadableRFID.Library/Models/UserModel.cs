using System;

namespace ReloadableRFID.Library.Models
{
    public class UserModel
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public int AccountTypeId { get; set; }
        public DateTime DateCreated { get; set; }
    }
}
