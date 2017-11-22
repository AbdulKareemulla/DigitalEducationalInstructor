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
                BindBaseUniversities();
                BindBaseStudentCapacity();
                BindBaseCountries();
                BindBaseStatesByCountry();
                BindBaseDistrictByState();
            }
        }

        public void BindBaseSchoolTypes()
        {
            List<tblBaseSchoolCollegeType> list = schoolSetupPagesClass.GetBaseSchoolTypeList();
            ddlInstType.DataTextField = "SchoolTypeDescription";
            ddlInstType.DataValueField = "SchoolTypeCode";
            ddlInstType.DataSource = list;
            ddlInstType.DataBind();
            ddlInstType.Items.Insert(0, "Select");
        }
        public void BindBaseUniversities()
        {
            List<tblBaseUniversity> list = schoolSetupPagesClass.GetBaseUniversityList();
            ddlAffilUniversity.DataTextField = "University_Name";
            ddlAffilUniversity.DataValueField = "University_Code";
            ddlAffilUniversity.DataSource = list;
            ddlAffilUniversity.DataBind();
            ddlAffilUniversity.Items.Insert(0, "Select");
        }

        public void BindBaseStudentCapacity()
        {
            List<tblBaseSchoolStudentRange> list = schoolSetupPagesClass.GetBaseStudentCapacityList();
            ddlStudentRange.DataTextField = "Range";
            ddlStudentRange.DataValueField = "Range_Code";
            ddlStudentRange.DataSource = list;
            ddlStudentRange.DataBind();
            ddlStudentRange.Items.Insert(0, "Select");
        }

        public void BindBaseCountries()
        {
            List<tblBaseCountries> list = schoolSetupPagesClass.GetBaseCountriesList();
            ddlCountry.DataTextField = "CountryName";
            ddlCountry.DataValueField = "CountryCode";
            ddlCountry.DataSource = list;
            ddlCountry.DataBind();
            ddlCountry.Items.Insert(0, "Select");
        }

        public void BindBaseStatesByCountry()
        {
            List<tblBaseState> list = schoolSetupPagesClass.GetBaseStatesByCountryList(ddlCountry.SelectedValue);
            ddlState.DataTextField = "StateName";
            ddlState.DataValueField = "StateCode";
            ddlState.DataSource = list;
            ddlState.DataBind();
            ddlState.Items.Insert(0, "Select");
        }

        public void BindBaseDistrictByState()
        {
            List<tblBaseDistrict> list = schoolSetupPagesClass.GetBaseDistrictsByStateList(ddlCountry.SelectedValue,ddlState.SelectedValue);
            ddlDistrict.DataTextField = "DistrictName";
            ddlDistrict.DataValueField = "DistrictCode";
            ddlDistrict.DataSource = list;
            ddlDistrict.DataBind();
            ddlDistrict.Items.Insert(0, "Select");
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindBaseStatesByCountry();
            BindBaseDistrictByState();
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindBaseDistrictByState();
        }
    }
}