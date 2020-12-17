﻿using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.ModelBinding;
using System.Web.UI.WebControls;

namespace InzProWeb
{
    public partial class SignUp : System.Web.UI.Page
    {
        readonly string _strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            RangeValidatorDate.MinimumValue = DateTime.Now.Date.AddYears(-110).ToString("yyyy-MM-dd");
            RangeValidatorDate.MaximumValue = DateTime.Now.Date.AddYears(-13).ToString("yyyy-MM-dd");
        }

        //sign up button click event
        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                SignUpNewUser();
                Response.Redirect("userlogin.aspx");
            }
        }
        protected void CustomValidatorTest_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (CheckUserExists())
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        protected void CustomValidatorPasswordLength_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var password = args.Value.ToCharArray();
            var count = password.Length;

            if (count < 8 || count >30)
            {
                args.IsValid = false;

            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void CustomValidatorPasswordUpperCase_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var password = args.Value.ToCharArray();
            var count = password.Length;
            for (int i = 0; i < count; i++)
            {
                if (password[i] >= 65 && password[i] <= 90)
                {
                    args.IsValid = true;
                    return;
                }
            }

            args.IsValid = false;
        }

        protected void CustomValidatorPasswordSpecial_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var password = args.Value.ToCharArray();
            var count = password.Length;
            for (int i = 0; i < count; i++)
            {
                if (password[i] == 33
                    || password[i] >= 35 && password[i] <= 38
                    || password[i] >= 40 && password[i] <= 42
                    || password[i] == 64 
                    || password[i] == 94)
                {
                    args.IsValid = true;
                    return;
                }
            }

            args.IsValid = false;
        }

        protected void CustomValidatorEmailExists_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (CheckEmailExists())
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid=true;
            }
        }

        protected void CustomValidatorUserLength_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 3 || args.Value.Length > 40)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        protected void CustomValidatorProhibitedSigns_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var password = args.Value;
            for (int index = 0; index < password.Length; index++)
            {
                var number = password[index];
                if (number == 33
                    || number >= 35 && number <= 38
                    || number >= 40 && number <= 42
                    || number == 64
                    || number == 94)
                {
                    args.IsValid = false;
                    return;
                }

            }
            args.IsValid = true;
        }

        protected void CustomValidatorProhibitedSigns2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var password = args.Value;
            for (int index = 0; index < password.Length; index++)
            {
                var number = password[index];
                if (number == 33
                    || number >= 35 && number <= 38
                    || number >= 40 && number <= 42
                    || number == 64
                    || number == 94)
                {
                    args.IsValid = false;
                    return;
                }

            }
            args.IsValid = true;
            
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
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + ".');</script>");
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
                querry = "SELECT Username FROM Users WHERE Email ='" + TextBoxEmailUp.Text.Trim() + "'";
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