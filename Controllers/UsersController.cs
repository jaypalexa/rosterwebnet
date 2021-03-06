using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using rosterwebnet.Models;

namespace rosterwebnet.Controllers
{
    [Route("api/[controller]")]
    public class UsersController : Controller
    {
        IConfiguration _config;

        public UsersController(IConfiguration config)
        {
            _config = config;
        }

        [HttpGet("[action]")]
        public IEnumerable<UserListItem> UserListItems()
        {
            var userListItems = new List<UserListItem>();

            var connectionString = _config.GetConnectionString("defaultConnection");

            using (var cn = new SqlConnection(connectionString))
            {
                cn.Open();

                using (var cmd = new SqlCommand())
                {
                    cmd.Connection = cn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = @"  
                        SELECT u.user_name, u.user_email, o.organization_name, u.is_admin 
                        FROM [user] u WITH (NOLOCK) 
                        LEFT JOIN organization o WITH (NOLOCK) ON o.organization_id = u.organization_id
                        ORDER BY u.user_name
                        ;";

                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            var userListItem = new UserListItem();

                            userListItem.UserName = dr.GetString(0);
                            userListItem.UserEmail = dr.GetString(1);
                            userListItem.OrganizationName = !dr.IsDBNull(2) ? dr.GetString(2) : String.Empty;
                            userListItem.IsAdmin = dr.GetBoolean(3);

                            userListItems.Add(userListItem);
                        }
                    }
                }
            }

            return userListItems;
        }
    }
}
