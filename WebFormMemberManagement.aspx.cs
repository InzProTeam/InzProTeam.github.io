using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace InzProWeb
{
    public partial class WebFormMemberManagement : System.Web.UI.Page
    {
        readonly string _strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewMemberList.DataBind();
        }
        protected void LinkButtonUser_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("admin"))
                GetMemberByUsername();
        }

        protected void LinkButtonActivate_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("admin"))
                UpdateMemberByUsername("active");
        }

        protected void LinkButtonPending_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("admin"))
                UpdateMemberByUsername("pending");
        }

        protected void LinkButtonDisactive_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("admin"))
                UpdateMemberByUsername("deactivate");
        }

        protected void ButtonDeletePerm_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("admin"))
                DeleteMemberByUsername();
        }
        //user defined function
        void GetMemberByUsername()
        {

            if (IfMemberExist())
            {
                try
                {
                    SqlConnection sqlConnection = new SqlConnection(_strcon);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    string querry = "SELECT * FROM Users WHERE Username='" + TextBoxUser.Text.Trim() + "'";
                    SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                    SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                    if (sqlDataReader.HasRows)
                    {
                        while (sqlDataReader.Read())
                        {
                            TextBoxAccount.Text = sqlDataReader.GetValue(4).ToString();
                            TextBoxEmail.Text = sqlDataReader.GetValue(2).ToString();
                            TextBoxDOB.Text = sqlDataReader.GetValue(3).ToString().Remove(10);

                        }

                    }
                    else
                    {
                        ClearForm();
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

        void UpdateMemberByUsername(string status)
        {
            if (IfMemberExist())
            {
                try
                {
                    SqlConnection sqlConnection = new SqlConnection(_strcon);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    string querry = "UPDATE Users SET Status='" + status + "' WHERE Username='" + TextBoxUser.Text.Trim() + "'";
                    SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                    sqlCommand.ExecuteNonQuery();
                    sqlConnection.Close();
                    GridViewMemberList.DataBind();
                    TextBoxAccount.Text = status;
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + ".');</script>");
                }
            }
        }

        void DeleteMemberByUsername()
        {

            if (IfMemberExist())
            {
                try
                {
                    SqlConnection sqlConnection = new SqlConnection(_strcon);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    string querry = "DELETE FROM Users WHERE Username='" + TextBoxUser.Text.Trim() + "'";
                    SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                    sqlCommand.ExecuteNonQuery();
                    sqlConnection.Close();
                    GridViewMemberList.DataBind();
                    ClearForm();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + ".');</script>");
                }
            }
        }

        void ClearForm()
        {
            TextBoxAccount.Text = "";
            TextBoxEmail.Text = "";
            TextBoxDOB.Text = "";
            TextBoxUser.Text = "";
        }

        bool IfMemberExist()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry = "SELECT * FROM Users WHERE Username='" + TextBoxUser.Text.Trim() + "'";
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
    }
}