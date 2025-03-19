using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationWebFormsTutorial
{
    public partial class RegisterForm : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            // Handle the registration logic here

            SqlConnection connection = new SqlConnection(connectionString);
            //string query = "insert into signUp_data values(@firstname, @lastname,)";
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (MaleRadioBtn.Checked || FemaleRadioBtn0.Checked || OtherGenderRadioBtn.Checked)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}