using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DAL.DataAccessCode;

namespace BAL._2SchoolSetupPages
{
    public class SchoolRegistrationBAL
    {
        SchoolSetupPagesClass schoolSetup = new SchoolSetupPagesClass();
        public List<tblBaseSchoolCollegeType> GetBaseSchoolTypeList()
        {
            List<tblBaseSchoolCollegeType> list = schoolSetup.GetBaseSchoolTypeList();
            return list;
        }
    }
}
