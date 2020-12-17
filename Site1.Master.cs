using System;

namespace InzProWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    LinkButtonSignUp.Visible = true;
                    LinkButtonUserLogin.Visible = true;

                    LinkButtonLogout.Visible = false;
                    LinkButtonHelloUser.Visible = false;

                    LinkButtonMember.Visible = false;
                    LinkButtonAdminLogin.Visible = true;

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButtonSignUp.Visible = false;
                    LinkButtonUserLogin.Visible = false;

                    LinkButtonLogout.Visible = true;
                    LinkButtonHelloUser.Visible = true;
                    LinkButtonHelloUser.Text = "Siema koguciku " + Session["username"].ToString();

                    LinkButtonMember.Visible = false;
                    LinkButtonAdminLogin.Visible = true;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButtonSignUp.Visible = false;
                    LinkButtonUserLogin.Visible = false;
                    LinkButtonHelloUser.Text = "Witaj nadkogucie " + Session["username"].ToString();

                    LinkButtonLogout.Visible = true;
                    LinkButtonHelloUser.Visible = true;

                    LinkButtonMember.Visible = true;
                    LinkButtonAdminLogin.Visible = false;
                }
            }
            catch (Exception exception)
            {
              
            }
        }

        protected void LinkButtonMember_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormMemberManagement.aspx");
        }

        protected void LinkButtonUserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");

        }

        protected void LinkButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session["username"] ="";
            Session["role"] = "";
            Session["status"] = "";
            LinkButtonSignUp.Visible = true;
            LinkButtonUserLogin.Visible = true;

            LinkButtonLogout.Visible = false;
            LinkButtonHelloUser.Visible = false;

            LinkButtonMember.Visible = false;
            LinkButtonAdminLogin.Visible = true;
            Response.Redirect("HomePage.aspx");
        }

        protected void LinkButtonHelloUser_Click(object sender, EventArgs e)
        {
            if(Session["role"].Equals("user"))
            Response.Redirect("WebFormUserProfile.aspx");
        }

        protected void LinkButtonAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}