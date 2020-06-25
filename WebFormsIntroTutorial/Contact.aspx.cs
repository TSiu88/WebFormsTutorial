using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsIntroTutorial
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Can access element made into a server control by the id
            divMessage.Attributes.Add("style", "color:blue;");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Takes info from form textbox and ddl and adds it to literal message
            // If form left blank and button clicked, can make it not show message with Validation
            string message = string.Format("Your name is {0}, email is {1}, age is {2} and your color is {3}",
                txtName.Text, txtEmail.Text, txtAge.Text, ddlColor.SelectedValue);
            ltMessage.Text = message;
        }
    }
}