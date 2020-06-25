using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsIntroTutorial
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            //this method was created using aspx automatically, then we wrote for it to redirect to Contact page
            // Run by right clicking project name > View > Run in browser
            Response.Redirect("~/Contact");
        }

        protected void btnNewPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NewPage");
        }
    }
}