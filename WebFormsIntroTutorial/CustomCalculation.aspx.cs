using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Fees;
// Add reference to namespace to use from separate project within same solution
// If not change from just typing, under this project you can right click References > Add reference > Choose project

namespace WebFormsIntroTutorial
{
    public partial class CustomCalculation : Page
    {
        public decimal BasePrice = 100.00m;

        protected void Page_Load(object sender, EventArgs e)
        {
            ltBasePrice.Text = BasePrice.ToString("C");
        }

        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            States states = new States();
            decimal fee = states.GetFee(ddlStates.SelectedValue);
            decimal finalPrice = BasePrice + fee;
            ltCustomPrice.Text = finalPrice.ToString("C");
        }
    }
}