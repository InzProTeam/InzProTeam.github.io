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
    public partial class WebFormUserProfile : System.Web.UI.Page
    {
        readonly string _strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            GetLoggedByUsername();
            RangeValidatorDate.MinimumValue = DateTime.Now.Date.AddYears(-110).ToString("yyyy-MM-dd");
            RangeValidatorDate.MaximumValue = DateTime.Now.Date.AddYears(-13).ToString("yyyy-MM-dd");
        }

        protected void ButtonUpdateDOB_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                UpdateDoB(TextBoxUpdateDBO.Text);
                ClearTextBox();
            }
        }

        protected void ButtonUpdateEmail_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                UpdateEmail(TextBoxUpdateEmail.Text);
                ClearTextBox();
            }
        }

        protected void ButtonUpdatePassword_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
                UpdatePassword(TextBoxNewPassword.Text);
                ClearTextBox();
            }
        }
        protected void CustomValidatorEmailExists_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (CheckEmailExists())
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        protected void CustomValidatorCorrectPassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (CorrectPassword())
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        //user define method
        void GetLoggedByUsername()
        {

            if (Session["role"].Equals("user"))
            {
                try
                {
                    SqlConnection sqlConnection = new SqlConnection(_strcon);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    string querry = "SELECT * FROM Users WHERE Username='" + Session["username"].ToString() + "'";
                    SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                    SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                    if (sqlDataReader.HasRows)
                    {
                        while (sqlDataReader.Read())
                        {
                            TextBoxUserProfile.Text = sqlDataReader.GetValue(0).ToString();
                            TextBoxCurrentDOB.Text = sqlDataReader.GetValue(3).ToString().Remove(10);
                            TextBoxDOB.Text = sqlDataReader.GetValue(3).ToString().Remove(10);
                            TextBoxEmail.Text = sqlDataReader.GetValue(2).ToString();
                            TextBoxCurrentEmail.Text = sqlDataReader.GetValue(2).ToString();
                            LabelAccountStatus.Text = sqlDataReader.GetValue(4).ToString();

                        }

                    }
                    sqlDataReader.Close();
                    sqlConnection.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + ".');</script>");
                }
            }
        }

        bool CheckEmailExists()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry;
                querry = "SELECT Username FROM Users WHERE Email ='" + TextBoxUpdateEmail.Text.Trim() + "'";
                SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                if (dataTable.Rows.Count > 0)
                {
                    sqlConnection.Close();
                    return true;
                }
                else
                {
                    sqlConnection.Close();
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + ".');</script>");
                return false;
            }

        }

        void UpdateEmail(string status)
        {
            if (Session["role"].Equals("user"))
            {
                try
                {
                    SqlConnection sqlConnection = new SqlConnection(_strcon);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    string querry = "UPDATE Users SET Email='" + status + "' WHERE Username='" + Session["username"].ToString() + "'";
                    SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                    sqlCommand.ExecuteNonQuery();
                    sqlConnection.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + ".');</script>");
                }
            }
        }

        void UpdateDoB(string status)
        {
            if (Session["role"].Equals("user"))
            {
                try
                {
                    SqlConnection sqlConnection = new SqlConnection(_strcon);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    string querry = "UPDATE Users SET Birthday='" + status + "' WHERE Username='" + Session["username"].ToString() + "'";
                    SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                    sqlCommand.ExecuteNonQuery();
                    sqlConnection.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + ".');</script>");
                }
            }
        }

        void UpdatePassword(string status)
        {
            if (Session["role"].Equals("user"))
            {
                try
                {
                    SqlConnection sqlConnection = new SqlConnection(_strcon);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    string querry = "UPDATE Users SET Password='" + status + "' WHERE Username='" + Session["username"].ToString() + "'";
                    SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                    sqlCommand.ExecuteNonQuery();
                    sqlConnection.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + ".');</script>");
                }
            }
        }

        bool CorrectPassword()
        {
            if (Session["role"].Equals("user"))
            {
                try
                {
                    SqlConnection sqlConnection = new SqlConnection(_strcon);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    string querry;
                    querry = "SELECT username FROM Users WHERE Username ='" + Session["username"].ToString() + "' AND Password = '" + TextBoxCurrentPassword.Text + "'";
                    SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                    DataTable dataTable = new DataTable();
                    sqlDataAdapter.Fill(dataTable);
                    if (dataTable.Rows.Count > 0)
                    {
                        sqlConnection.Close();
                        return true;
                    }
                    else
                    {
                        sqlConnection.Close();
                        return false;
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + ".');</script>");
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        void ClearTextBox()
        {
            TextBoxUpdateEmail.Text = "";
            TextBoxNewPassword.Text = "";
            TextBoxConfirmPassword.Text = "";
            TextBoxUpdateDBO.Text = "";
        }


    }
}