using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PgStops : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
           
            SqlDataSource1.InsertParameters["AR_Nom"].DefaultValue = (GridView1.FooterRow.FindControl("TBCol2") as TextBox).Text;
            SqlDataSource1.InsertParameters["Ar_Lon"].DefaultValue = (GridView1.FooterRow.FindControl("TBCol3") as TextBox).Text;
            SqlDataSource1.InsertParameters["Ar_Lat"].DefaultValue = (GridView1.FooterRow.FindControl("TBCol4") as TextBox).Text;

            SqlDataSource1.Insert();
        }
    }
}