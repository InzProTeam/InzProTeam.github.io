using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InzProWeb
{

    public partial class userlogin : System.Web.UI.Page
    {
        readonly string _strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSingIn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry = "SELECT * FROM Users WHERE Username='" + TextBoxUsernameIn.Text.Trim() + "' AND Password = '" + TextBoxPasswordIn.Text.Trim() + "'";
                SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                if (sqlDataReader.HasRows)
                {
                    while (sqlDataReader.Read())
                    {
                        Response.Write("<script>alert('" + sqlDataReader.GetValue(0).ToString() + "');</script>");
                        Session["username"] = sqlDataReader.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = sqlDataReader.GetValue(4).ToString();
                    }
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Nie poprawna nazwa użytkownika lub hasło.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + ".');</script>");
            }
        }
    }
}