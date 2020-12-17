using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace InzProWeb
{
    public partial class adminlogin : System.Web.UI.Page
    {
        readonly string _strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSingInAdmin_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                AdminLogin();
                Response.Redirect("HomePage.aspx");
            }
            
        }

        protected void CustomValidatorLoginSucces_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            if (LoginSucces())
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        //User Define method

        void AdminLogin()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry = "SELECT * FROM Admin WHERE Username='" + TextBoxAdminNameIn.Text.Trim() + "' AND Password = '" + TextBoxPasswordAdminIn.Text.Trim() + "'";
                SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                if (sqlDataReader.HasRows)
                {
                    while (sqlDataReader.Read())
                    {
                        Response.Write("<script>alert('" + sqlDataReader.GetValue(0).ToString() + "');</script>");
                        Session["username"] = sqlDataReader.GetValue(0).ToString();
                        Session["role"] = "admin";
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + ".');</script>");
            }
        }



        bool LoginSucces()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry;
                querry = "SELECT username FROM Admin WHERE Username ='" + TextBoxAdminNameIn.Text.Trim() + "' AND Password = '" +TextBoxPasswordAdminIn.Text.Trim() + "'";
                SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                if (dataTable.Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + ".');</script>");
                return false;
            }
        }
    }
}