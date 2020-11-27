using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InzProWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButtonMember_Click(object sender, EventArgs e)
        {
            
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

        }

        protected void LinkButtonHelloUser_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButtonAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}