using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace rosterwebnet.Controllers
{
    [Route("api/[controller]")]
    public class UsersController : Controller
    {
        [HttpGet("[action]")]
        public IEnumerable<UserListItem> UserListItems()
        {
            var userListItems = new List<UserListItem>();

            //db655bd3a830d145428b03a69b008ec7f8
            //var connectionString = @"Server=tcp:rosterwebnet.database.windows.net,1433;Initial Catalog=db655bd3a830d145428b03a69b008ec7f8;Persist Security Info=False;User ID=jpalexander;Password=MM!supp0rt;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            var connectionString = @"Server=tcp:rosterwebnet.database.windows.net,1433;Initial Catalog=rosterwebnet_db;Persist Security Info=False;User ID=jpalexander;Password=MM!supp0rt;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            //var connString2 = ConfigurationManager.ConnectionStrings["MyDataBase"].ConnectionString;
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
                            //userListItem.OrganizationName = dr.GetString(2);
                            userListItem.IsAdmin = dr.GetBoolean(3);

                            userListItems.Add(userListItem);
                        }
                    }
                }
            }

            return userListItems;
        }

        public class UserListItem
        {
            public string UserName { get; set; }
            public string UserEmail { get; set; }
            public string OrganizationName { get; set; }
            public bool IsAdmin { get; set; }
        }
    }
}
