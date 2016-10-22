using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace rosterwebnet.Models
{
    public class UserListItem
    {
        public string UserName { get; set; }
        public string UserEmail { get; set; }
        public string OrganizationName { get; set; }
        public bool IsAdmin { get; set; }
    }
}
