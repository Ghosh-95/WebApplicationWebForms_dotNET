using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplicationWebFormsTutorial
{
    public partial class LogInForm : System.Web.UI.Page
    {
        string cs;
        protected void Page_Load(object sender, EventArgs e)
        {
            cs = ConfigurationManager.ConnectionStrings["DBCS"]?.ConnectionString;
            if (cs == null)
            {
                throw new Exception("Connection string 'DBCS' not found in configuration.");
            }
        }

        protected void logInButton_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(cs);
            string query = "select * from user_info where username = @username and user_password = @password";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@username", usernameTextBox.Text);
            command.Parameters.AddWithValue("@password", passwordTextBox.Text);

            connection.Open();

            SqlDataReader dataReader = command.ExecuteReader();
            if (dataReader.HasRows)
            {
                Session["user"] = usernameTextBox.Text;
                ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Log in successful');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Log in failed');</script>");
            }
            connection.Close();
        }
    }
}
