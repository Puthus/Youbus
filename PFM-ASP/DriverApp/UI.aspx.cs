using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DriverApp
{
    public partial class UI : System.Web.UI.Page
    {
        SqlConnection Cnx;
        SqlCommand Cmd;
        SqlDataReader DR;
        string BusMat = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Cnx = new SqlConnection(@"Data Source=DESKTOP-NERR214\SQLEXPRESS;Initial Catalog=Youbus;Integrated Security=True");
            Cmd = new SqlCommand("Select B_Matricule from Bus B join Account A on B.B_Account = A.Id_Account");
            try
            {
                Cnx.Open();
                Cmd.Connection = Cnx;
                DR = Cmd.ExecuteReader();
                BusMat = DR.GetString(0);
                PT.Text = "NumMat :" + BusMat;
            }
            catch (Exception ex)
            {
                PT.ForeColor = System.Drawing.Color.IndianRed;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
                // PT.Text = ex.Message;
            }
            finally
            {
                Cnx.Close();
            }
        }

        protected void Bnt_Click(object sender, EventArgs e)
        {
            // Cmd.CommandText = ("Insert into Msg values ('Alert'," + BusMat + ",'Admin','" + TextBox2.Text + "')");
            try
            {
                int x;
                x = Int32.Parse("test");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
            }
        }
    }
}