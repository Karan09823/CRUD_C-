using System;
using System.Data.SqlClient;
using System.Configuration;

namespace CRUD
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnCreate(object sender, EventArgs e)
        {
            string con = ConfigurationManager.ConnectionStrings["CRUD"].ConnectionString;

            using (SqlConnection db = new SqlConnection(con))
            {
                db.Open();

                string insert = "insert into Table_1 (u_fname, u_lname, u_contact, u_email) values (@FirstName, @LastName, @Contact, @Email)";
                using (SqlCommand cmd = new SqlCommand(insert, db))
                {
                    cmd.Parameters.AddWithValue("@FirstName", txtFname.Text);
                    cmd.Parameters.AddWithValue("@LastName", txtLName.Text);
                    cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
                    cmd.Parameters.AddWithValue("@Email", txtMail.Text);

                    int m = cmd.ExecuteNonQuery();

                    if (m != 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Data Inserted !!');", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Data Insertion Failed !!');", true);
                    }
                }
            }
        }
    }
}
