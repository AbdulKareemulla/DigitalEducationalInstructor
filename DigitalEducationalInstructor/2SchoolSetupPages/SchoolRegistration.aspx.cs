using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using BAL;
//using BAL._2SchoolSetupPages;
using DAL;
using DAL.DataAccessCode;

namespace DigitalEducationalInstructor._2SchoolSetupPages
{
    public partial class SchoolRegistration : System.Web.UI.Page
    {
        SchoolSetupPagesClass schoolSetupPagesClass = new SchoolSetupPagesClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Bind the base dropdown fields
            if (!IsPostBack)
            {
                BindBaseSchoolTypes();
            }
        }

        public void BindBaseSchoolTypes()
        {
            List<tblBaseSchoolCollegeType> list = schoolSetupPagesClass.GetBaseSchoolTypeList();
            ddlInstType.DataTextField = "SchoolTypeDescription";
            ddlInstType.DataValueField = "SchoolTypeCode";
            ddlInstType.DataSource = list;
            ddlInstType.DataBind();
        }
    }
}