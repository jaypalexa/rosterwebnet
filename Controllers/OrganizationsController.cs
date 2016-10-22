using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using rosterwebnet.Models;

namespace rosterwebnet.Controllers
{
    [Route("api/[controller]")]
    public class OrganizationsController : Controller
    {
        IConfiguration _config;

        public OrganizationsController(IConfiguration config)
        {
            _config = config;
        }

        [HttpGet("[action]")]
        public IEnumerable<OrganizationListItem> OrganizationListItems()
        {
            var organizationListItems = new List<OrganizationListItem>();

            var connectionString = _config.GetConnectionString("defaultConnection");

            using (var cn = new SqlConnection(connectionString))
            {
                cn.Open();

                using (var cmd = new SqlCommand())
                {
                    cmd.Connection = cn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = @"  
                        SELECT organization_name, city, [state]
                        FROM organization WITH (NOLOCK)  
                        ORDER BY organization_name
                        ;";

                    using (var dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            var organizationListItem = new OrganizationListItem();

                            organizationListItem.OrganizationName = !dr.IsDBNull(0) ? dr.GetString(0) : String.Empty;
                            organizationListItem.City = !dr.IsDBNull(1) ? dr.GetString(1) : String.Empty;
                            organizationListItem.State = !dr.IsDBNull(2) ? dr.GetString(2) : String.Empty;

                            organizationListItems.Add(organizationListItem);
                        }
                    }
                }
            }

            return organizationListItems;
        }
    }
}
