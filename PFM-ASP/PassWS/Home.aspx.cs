using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PassWS
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TBName.Attributes.Add("placeholder", "Your Name...");
            TBEmail.Attributes.Add("placeholder", "Aze@klm.xyz");
            TBSubject.Attributes.Add("placeholder", "It's About...");
            TBMsg.Attributes.Add("placeholder", "Write a Message...");
        }
    }
}