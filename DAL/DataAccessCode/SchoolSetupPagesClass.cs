using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;

namespace DAL.DataAccessCode
{
    public class SchoolSetupPagesClass
    {
        static IDbConnection db = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);

        public List<tblBaseSchoolCollegeType> GetBaseSchoolTypeList()
        {
            string sqlquery = "select * from tblBaseSchoolCollegeTypes where Record_Status=1";

            var list = db.Query<tblBaseSchoolCollegeType>(sqlquery).ToList();
            return list;
        }
        

    }
}
