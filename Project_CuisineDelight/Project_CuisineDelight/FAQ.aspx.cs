using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_CuisineDelight
{
    public partial class FAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            String FAQnumber = btn.CommandArgument;


            switch (FAQnumber){
                case "1":
                    FAQanswer1.Visible = !FAQanswer1.Visible;
                    break;
                case "2":
                    FAQanswer2.Visible = !FAQanswer2.Visible;
                break;
                case "3":
                    FAQanswer3.Visible = !FAQanswer3.Visible;
                    break;
                case "4":
                    FAQanswer4.Visible = !FAQanswer4.Visible;
                    break;
                case "5":
                    FAQanswer5.Visible = !FAQanswer5.Visible;
                    break;
                case "6":
                    FAQanswer6.Visible = !FAQanswer6.Visible;
                    break;
                case "7":
                    FAQanswer7.Visible = !FAQanswer7.Visible;
                    break;
            }
        }
    }
}