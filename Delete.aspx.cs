using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSearch(object sender, EventArgs e)
        {
            string con = ConfigurationManager.ConnectionStrings["CRUD"].ConnectionString;

            using (SqlConnection db = new SqlConnection(con))
            {
                db.Open();
                string select = "SELECT u_fname, u_lname, u_contact, u_email FROM Table_1 WHERE u_email = @Email";
                using (SqlCommand cmd = new SqlCommand(select, db))
                {
                    cmd.Parameters.AddWithValue("@Email", txtSearchMail.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtFname.Text = reader["u_fname"].ToString();
                            txtLName.Text = reader["u_lname"].ToString();
                            txtContact.Text = reader["u_contact"].ToString();
                            txtMail.Text = reader["u_email"].ToString();
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No record found with the provided email.');", true);
                        }
                    }
                }
            }
        }


        protected void BtnDelete(object sender, EventArgs e)
        {
            string con = ConfigurationManager.ConnectionStrings["CRUD"].ConnectionString;

            using (SqlConnection db = new SqlConnection(con))
            {
                db.Open();
                string delete = "DELETE FROM Table_1 WHERE u_email = @Email";
                using (SqlCommand cmd = new SqlCommand(delete, db))
                {
                    cmd.Parameters.AddWithValue("@Email", txtSearchMail.Text);

                    int m = cmd.ExecuteNonQuery();

                    if (m != 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Data Deleted Successfully!');", true);
                        // Clear the textboxes after deletion
                        txtFname.Text = string.Empty;
                        txtLName.Text = string.Empty;
                        txtContact.Text = string.Empty;
                        txtMail.Text = string.Empty;
                        txtSearchMail.Text = string.Empty;
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Data Deletion Failed!');", true);
                    }
                }
            }
        }



    }
}