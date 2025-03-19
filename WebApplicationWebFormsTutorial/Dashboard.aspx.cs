using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationWebFormsTutorial
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session.Abandon();
                Response.Redirect("LogInForm.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('You are not logged in');</script>");
            }
        }
    }
}