using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationWebFormsTutorial
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnClickOfButton(object sender, EventArgs e)
        {
            myLabel.Visible = !myLabel.Visible;
            myLabel.Text = "Welcome to this world!";
        }
    }
}