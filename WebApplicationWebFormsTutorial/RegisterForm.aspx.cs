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
            string query = "insert into signUp_data values(@firstname, @lastname, @email, @gender, @address, @username, @password)";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@firstname", txtFirstName.Text);
            command.Parameters.AddWithValue("@lastname", txtLastName.Text);
            command.Parameters.AddWithValue("@email", txtEmail.Text);
            command.Parameters.AddWithValue("@gender", MaleRadioBtn.Checked ? "Male" : FemaleRadioBtn0.Checked ? "Female" : "Other");
            command.Parameters.AddWithValue("@address", address.Text);
            command.Parameters.AddWithValue("@username", txtUsername.Text);
            command.Parameters.AddWithValue("@password", txtPassword.Text);

            connection.Open();
            int affectedRows = command.ExecuteNonQuery();


            if (affectedRows > 0)
            {
                string script = $"<script>alert('Registration successful, username is {txtUsername.Text} and password is {txtPassword.Text}');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                Response.Redirect("LogInForm.aspx");
            }
            else
            {
                string script = "<script>alert('Registration failed');</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "FailureMessage", script, true);
            }


            connection.Close();
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