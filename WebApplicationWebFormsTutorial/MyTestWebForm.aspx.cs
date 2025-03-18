using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationWebFormsTutorial
{
    public partial class WebForm2 : Page
    {
        protected TextBox studentNameTextbox;
        protected TextBox studentClassTextbox;
        protected TextBox studentFeesTextbox;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Response.Write("Postback success, Page is posted back!");
            }
            else
            {
                Response.Write("Page is loaded for the first time!");
            }

            if (Application["studentName"] != null)
            {
                Response.Write("Welcome, " + Application["studentName"]);
                studentNameTextbox.Text = Application["studentName"].ToString();
            }

            studentIdBox.Text = Request.QueryString["Id"];
            studentNameTextbox.Text = Request.QueryString["name"];
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = !string.IsNullOrEmpty(TextBox3.Text) && TextBox3.Text == studentEmailTextbox.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ViewState["name"] = studentNameTextbox.Text;
                ViewState["email"] = studentEmailTextbox.Text;
                ViewState["gender"] = radioBtnMale.Checked ? radioBtnMale.Text :
                         radioBtnFemale.Checked ? radioBtnFemale.Text :
                         radioBtnOther.Checked ? radioBtnOther.Text : string.Empty;

                ViewState["classNumber"] = Convert.ToInt32(studentClassTextbox.Text);
                ViewState["fees"] = Convert.ToInt32(studentFeesTextbox.Text);


                ClearTextBoxes(this);

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your form has been submitted.');</script>");

            }
        }


        protected void RestoreButtonClick(object sender, EventArgs e)
        {
            if (ViewState["gender"] != null && ViewState["fees"] != null && ViewState["name"] != null && ViewState["classNumber"] != null)
            {

                studentNameTextbox.Text = ViewState["name"].ToString();
                studentFeesTextbox.Text = ViewState["fees"].ToString();
                studentEmailTextbox.Text = ViewState["email"].ToString();
                studentClassTextbox.Text = ViewState["classNumber"].ToString();
                switch (ViewState["gender"].ToString())
                {
                    case "Male":
                        radioBtnMale.Checked = true;
                        break;
                    case "Female":
                        radioBtnFemale.Checked = true;
                        break;
                    default:
                        radioBtnOther.Checked = true;
                        break;
                }

            } else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Nothing to restore!');</script>");
            }
        }

        private void ClearTextBoxes(Control parent)
        {
            foreach(Control c in parent.Controls)
            {
                if (c is TextBox)
                {
                    ((TextBox)c).Text = string.Empty;
                }
                else if (c is RadioButton)
                {
                    ((RadioButton)c).Checked = false;
                }
                else
                {
                    if (c.Controls.Count > 0)
                    {
                        ClearTextBoxes(c);
                    }
                }
            }
        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            if(radioBtnMale.Checked || radioBtnFemale.Checked || radioBtnOther.Checked)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TestFormTwo.aspx");
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            if (Application["studentName"] != null)
            {
                Application.Remove("studentName");
            }
            Session.Abandon();

            Response.Redirect("TestFormTwo.aspx");
        }
    }
}