using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

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

            if (Page.IsValid)
            {
                UserLogin();
                Response.Redirect("HomePage.aspx");
            }
        }

        protected void ButtonSingUpIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        protected void CustomValidatorUserLogin_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
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
        //user define method

        void UserLogin()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry = "SELECT * FROM Users WHERE Username='" + TextBoxUsernameIn.Text.Trim() + "' AND Password = '" + TextBoxPasswordIn.Text.Trim() + "'";
                Console.WriteLine(TextBoxUsernameIn.Text.Trim());
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
                querry = "SELECT username FROM Users WHERE Username ='" + TextBoxUsernameIn.Text.Trim() + "' AND Password = '" + TextBoxPasswordIn.Text.Trim() + "'";
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