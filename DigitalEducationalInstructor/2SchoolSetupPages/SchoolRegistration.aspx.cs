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
            List<tblBaseDistrict> list = schoolSetupPagesClass.GetBaseDistrictsByStateList(ddlCountry.SelectedValue, ddlState.SelectedValue);
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

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearAllFields();
            // Response.Redirect(HttpContext.Current.Request.Url.AbsolutePath);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblSchoolDetail tblSchoolDetail = new tblSchoolDetail
            {
                Sch_Name = txtInstName.Text,
                Sch_Code = txtInstCode.Text,
                Sch_Contact_Person = txtContactPerson.Text,
                Sch_Type_Id = ddlInstType.SelectedValue,
                Sch_CountryId = ddlCountry.SelectedValue,
                Sch_StateId = ddlState.SelectedValue,
                Sch_DistrictId = ddlDistrict.SelectedValue,
                Sch_DistrictName = ddlDistrict.SelectedItem.Text,
                Sch_CityName = txtCity.Text,
                Sch_PINCode = Convert.ToInt32(txtPincode.Text),
                Sch_Address1 = txtAddress1.Text,
                Sch_Address2 = txtAddress2.Text,
                Sch_PhNo1 = txtInstPhNo.Text,
                Sch_Alt_PhNo = txtAlternatePhNo.Text,
                Sch_MobileNo = txtPhNo.Text,
                Sch_EmailId = txtInstEmailId.Text,
                Sch_Sector = radioSector.SelectedValue,
                Univ_Code = ddlAffilUniversity.SelectedValue,
                Sch_University = ddlAffilUniversity.SelectedItem.Text,
                Sch_Std_Range_Code = Convert.ToInt32(ddlStudentRange.SelectedValue),
                Demo = (radioDemoRequired.SelectedValue == "0" ? false : true),
                ContactPreference = ddlHowToReach.SelectedValue,
                Landmark = txtLandMark.Text
            };
            int success = schoolSetupPagesClass.AddSchoolDetails(tblSchoolDetail);
            if (success > 0)
            {
                string script = "alert(\"School - " + tblSchoolDetail.Sch_Name + " added successfully\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                ClearAllFields();
            }

        }

        public void ClearAllFields()
        {
            txtInstName.Text = string.Empty;
            txtInstCode.Text = string.Empty;
            txtContactPerson.Text = string.Empty;
            ddlInstType.SelectedIndex = 0;
            ddlCountry.SelectedIndex = 0;
            ddlState.SelectedIndex = 0;
            ddlDistrict.SelectedIndex = 0;
            ddlDistrict.SelectedIndex = 0;
            txtCity.Text = string.Empty;
            txtPincode.Text = string.Empty;
            txtAddress1.Text = string.Empty;
            txtAddress2.Text = string.Empty;
            txtInstPhNo.Text = string.Empty;
            txtAlternatePhNo.Text = string.Empty;
            txtPhNo.Text = string.Empty;
            txtInstEmailId.Text = string.Empty;
            radioSector.SelectedIndex = 0;
            ddlAffilUniversity.SelectedIndex = 0;
            ddlAffilUniversity.SelectedIndex = 0;
            ddlStudentRange.SelectedIndex = 0;
            radioDemoRequired.SelectedIndex = 0;
            ddlHowToReach.SelectedIndex = 0;
            txtLandMark.Text = string.Empty;
        }
    }
}