using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PgBuses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            SqlDataSource1.InsertParameters["B_Matricule"].DefaultValue = (GridView1.FooterRow.FindControl("TBCol1") as TextBox).Text;
            SqlDataSource1.InsertParameters["B_type"].DefaultValue = (GridView1.FooterRow.FindControl("DDCol2") as DropDownList).SelectedItem.Text;
            SqlDataSource1.InsertParameters["B_Status"].DefaultValue = (GridView1.FooterRow.FindControl("DDCol3") as DropDownList).SelectedItem.Text;
            SqlDataSource1.InsertParameters["B_Account"].DefaultValue = (GridView1.FooterRow.FindControl("DDCol4") as DropDownList).SelectedItem.Text;
            SqlDataSource1.InsertParameters["Num_Ligne"].DefaultValue = (GridView1.FooterRow.FindControl("DDCol5") as DropDownList).SelectedItem.Text;

            SqlDataSource1.Insert();
        }
    }
}