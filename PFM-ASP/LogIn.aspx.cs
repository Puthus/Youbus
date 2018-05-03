using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;


public partial class LogIn : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        userName.Attributes.Add("placeholder", "Aze@klm.xyz");
        userPassword.Attributes.Add("placeholder", "Password");
    }

    protected void Btn_Click(object sender, EventArgs e)
    {
       if (Page.IsValid)
        {
            bool Exists = false;
            using (SqlConnection Cnx = new SqlConnection("Data Source = DESKTOP-TSI04DE\\SQLEXPRESS; Initial Catalog = LocBus; Integrated Security = True"))
            {
                using (SqlCommand Cmd = new SqlCommand("PS_Login"))
                {
                    Cmd.CommandType = CommandType.StoredProcedure;
                    Cmd.Parameters.AddWithValue("@Username", userName);
                    Cmd.Parameters.AddWithValue("@Password", userPassword);

                    try
                    {
                        Cmd.Connection = Cnx;
                        Cnx.Open();
                        Exists = Convert.ToBoolean(Cmd.ExecuteReader());
                    }
                    catch (Exception ex)
                    {
                        Label1.Visible = true;
                        Label1.Text = ex.Message;
                    }
                    finally
                    {
                        Cnx.Close();
                    }
                }
                if (Exists)
                {
                    FormsAuthentication.RedirectFromLoginPage(userName.Text, true);

                }
            }
        }
    }
}