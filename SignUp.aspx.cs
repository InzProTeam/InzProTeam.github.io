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
    public partial class SignUp : System.Web.UI.Page
    {
        readonly string _strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //sign up button click event
        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            if (CheckUserExists())
            {
                Response.Write("<script>alert('Użytkownik o takiej nazwie już istnieje.');</script>");
            }
            else
            {
                SignUpNewUser();
            }
        }


        // user definded method
        bool CheckUserExists()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry;
                querry = "SELECT username FROM USERS WHERE username ='" + TextBoxUserIDUp.Text.Trim() + "'";
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
        void SignUpNewUser()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry;
                querry = "INSERT INTO Users(Username,Password,Email,Birthday,Status) values(@username,@password,@email,@birthday,@status)";
                SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                sqlCommand.Parameters.AddWithValue("@username", TextBoxUserIDUp.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@password", TextBoxPasswordUp.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@email", TextBoxEmailUp.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@birthday", TextBoxDate.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@status", "pending");

                sqlCommand.ExecuteNonQuery();
                sqlCommand.Clone();
                Response.Write("<script>alert('Rejestracja się powiodła. Możesz się zalogować.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + ".');</script>");
            }
        }


    }
}