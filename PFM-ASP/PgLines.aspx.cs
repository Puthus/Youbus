using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PgLines : System.Web.UI.Page
{
    int Count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        try
        {
            if (GridView1.Rows.Count == 0)
            {
                SqlDataSource1.InsertParameters["Num_Ligne"].DefaultValue = " ";
                SqlDataSource1.Insert();

                GridView1.Rows[0].Cells[0].Visible = false;
            }
        }
        catch (Exception ex)
        {
            LabelError.Text = ex.Message;
        }
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        
    }

    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        Count = Convert.ToInt32(e.AffectedRows.ToString());
    }

    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlDataSource1.InsertParameters["Num_Ligne"].DefaultValue = (GridView1.FooterRow.FindControl("TBCol1") as TextBox).Text;
            SqlDataSource1.InsertParameters["Debut"].DefaultValue = (GridView1.FooterRow.FindControl("DDCol2") as DropDownList).SelectedItem.Text;
            SqlDataSource1.InsertParameters["Fin"].DefaultValue = (GridView1.FooterRow.FindControl("DDCol3") as DropDownList).SelectedItem.Text;
            SqlDataSource1.InsertParameters["Freq"].DefaultValue = (GridView1.FooterRow.FindControl("TBCol4") as TextBox).Text;
            SqlDataSource1.InsertParameters["Prix"].DefaultValue = (GridView1.FooterRow.FindControl("TBCol5") as TextBox).Text;

            SqlDataSource1.Insert();
        }
    }
}