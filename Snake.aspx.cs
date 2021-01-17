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
    public partial class Snake : System.Web.UI.Page
    {
        readonly string _strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["role"]))
            {
                TextBoxScore.Visible = false;
                ButtonSave.Visible = false;
            }
            else if (Session["role"].Equals("user"))
            {
                TextBoxScore.Visible = true;
                ButtonSave.Visible = true;
            }
            else
            {
                TextBoxScore.Visible = false;
                ButtonSave.Visible = false;
            }
        }
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SaveScore();
            }

            TextBoxScore.Text = "";
        }

        void SaveScore()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(_strcon);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string querry;
                querry = "INSERT INTO GameStatistic(GameName,Username,Score,ScoreDate) values(@gameName,@username,@score,@scoreDate)";
                SqlCommand sqlCommand = new SqlCommand(querry, sqlConnection);
                SqlCommand sqlCommandDate = new SqlCommand("SELECT getdate() AS [now]", sqlConnection);
                SqlDataReader sqlDataReader = sqlCommandDate.ExecuteReader();
                DateTime time = DateTime.Now;
                if (sqlDataReader.HasRows)
                {
                    while(sqlDataReader.Read())
                    time = sqlDataReader.GetDateTime(0);
                }
                sqlDataReader.Close();
                string txt = TextBoxScore.Text;
                sqlCommand.Parameters.AddWithValue("@gameName", "snake");
                sqlCommand.Parameters.AddWithValue("@username", Session["username"].ToString());
                sqlCommand.Parameters.AddWithValue("@score", TextBoxScore.Text.ToString());
                sqlCommand.Parameters.AddWithValue("@scoreDate",time  );

                sqlCommand.ExecuteNonQuery();
                sqlConnection.Close();
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + ".');</script>");
            }
        }

        protected void ButtonRestart_Click(object sender, EventArgs e)
        {
            TextBoxScore.Text = "";
        }

        protected void CustomValidatorActive_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Session["role"].Equals("user") && Session["status"].Equals("active"))
            {
                args.IsValid = true;
                return;
            }

            args.IsValid = false;
            return;
        }
    }
}