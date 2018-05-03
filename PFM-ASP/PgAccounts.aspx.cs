using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PgAccounts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["Email"].DefaultValue = (GridViewAccA.FooterRow.FindControl("TBCol1") as TextBox).Text;
        SqlDataSource1.InsertParameters["Password"].DefaultValue = (GridViewAccA.FooterRow.FindControl("TBCol2") as TextBox).Text;
        SqlDataSource1.InsertParameters["Type"].DefaultValue = "A";

        SqlDataSource1.Insert();
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        SqlDataSource2.InsertParameters["Email"].DefaultValue = (GridViewAccA.FooterRow.FindControl("TBCol1") as TextBox).Text;
        SqlDataSource2.InsertParameters["Password"].DefaultValue = (GridViewAccA.FooterRow.FindControl("TBCol2") as TextBox).Text;
        SqlDataSource2.InsertParameters["Type"].DefaultValue = "D";

        SqlDataSource2.Insert();
    }



    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        SqlDataSource4.InsertParameters["Email"].DefaultValue = (GridViewAccA.FooterRow.FindControl("TBCol1") as TextBox).Text;
        SqlDataSource4.InsertParameters["Password"].DefaultValue = (GridViewAccA.FooterRow.FindControl("TBCol2") as TextBox).Text;
        SqlDataSource4.InsertParameters["Type"].DefaultValue = "P";

        SqlDataSource4.Insert();
    }

    protected void TBCol2_TextChanged(object sender, EventArgs e)
    {

    }
}