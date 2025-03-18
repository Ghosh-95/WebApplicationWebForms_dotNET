using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationWebFormsTutorial
{
	public partial class TestFormTwo : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void nameSubmitBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Application.Add("studentName", studentNameTextBoxTwo.Text);
                Response.Redirect("MyTestWebForm.aspx");
            }
        }
    }
}