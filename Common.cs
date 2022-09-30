using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Testone
{
    public class Common
    {
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["TestoneConnectionString"].ConnectionString;
        }
    }
}