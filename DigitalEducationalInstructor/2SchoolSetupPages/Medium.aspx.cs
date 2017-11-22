using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DAL;
using System.Text;
using DAL.DataAccessCode;

namespace WebApplication7.Pages
{
    public partial class Medium : System.Web.UI.Page
    {

        static IDbConnection db = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
        string cs = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter adapt;
        DataTable dt;
        MediumDAL objmedium = new MediumDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            objmedium.InsertMedium(txtmediumname.Text, txtmediumdescription.Text, 6);
            ShowData();
        }

        protected void ShowData()
        {
            
            grdmedium.DataSource = objmedium.GetAll();
            grdmedium.DataBind();
            string sb = "";
            sb = null;
            foreach (BO contact in objmedium.GetBaseMedium())
            {
                sb = sb + contact.MediumName + ",";
            }
            lblmedium.Text = sb;
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
            objmedium.UpadteMedium(mediumname.Text, mediumdescription.Text, Convert.ToInt16(id.Text));
            grdmedium.EditIndex = -1;
            ShowData();
            
        }

        protected void grdmedium_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = grdmedium.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
            objmedium.DeleteMedium(Convert.ToInt16(id.Text));

            ShowData();
        }

        protected void grdmedium_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdmedium.EditIndex = -1;
            ShowData();
        }
       
    }
}