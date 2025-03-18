using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationWebFormsTutorial
{
	public partial class CrossPagePostingTwo : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Page prevPage = PreviousPage;

			if (prevPage != null && prevPage.IsCrossPagePostBack) 
			{ 
				nameLabel.Text = ((TextBox) prevPage.FindControl("nameTextBoxCrossPage")).Text;
				emailLabel.Text = ((TextBox) prevPage.FindControl("emailTextBoxCrossPage")).Text;
			}else
			{
				ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Cross page posting is not enabled!');</script>");
            }
		}
	}
}