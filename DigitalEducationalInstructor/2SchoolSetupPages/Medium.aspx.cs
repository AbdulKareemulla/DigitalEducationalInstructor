using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DigitalEducationalInstructor._2SchoolSetupPages
{
    public partial class Medium : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["myconnectionstring"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter adapt;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
                lblmedium.Text = "Telugu,Hindi,English";
            }

        }

        protected void ShowData()
        {
            dt = new DataTable();
            con = new SqlConnection(cs);
            con.Open();
            adapt = new SqlDataAdapter("Select RecordId,MediumName,MediumDescription from tblSchoolWiseMediums", con);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                grdmedium.DataSource = dt;
                grdmedium.DataBind();
            }
            con.Close();
        }

        protected void grdmedium_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdmedium.EditIndex = -1;
            ShowData();
        }

        protected void grdmedium_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdmedium.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void grdmedium_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = grdmedium.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
            TextBox mediumname = grdmedium.Rows[e.RowIndex].FindControl("txtmediumname") as TextBox;
            TextBox mediumdescription = grdmedium.Rows[e.RowIndex].FindControl("txtmediumdescription") as TextBox;
            con = new SqlConnection(cs);
            con.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("Update tblSchoolWiseMediums set MediumName='" + mediumname.Text + "',MediumDescription='" + mediumdescription.Text + "' where RecordId=" + Convert.ToInt32(id.Text), con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            grdmedium.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }
    }
}