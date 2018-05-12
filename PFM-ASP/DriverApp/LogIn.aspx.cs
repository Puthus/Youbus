using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exception = System.Exception;

namespace DriverApp
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection _connection = new SqlConnection(@"Data Source=DESKTOP-C60HMR0\SQLEXPRESS;Initial Catalog=Youbus;Integrated Security=True");
        DataSet _readSet = new DataSet();
        SqlDataAdapter _data;

        protected void Btn_OnClick(object sender, EventArgs e)
        {
            try
            {
                _connection.Open();
                _data = new SqlDataAdapter("select * from Account", _connection);
                _readSet.Clear();
                _data.Fill(_readSet, "Account");

                TextBox user = FindControl("userName") as TextBox;
                TextBox pass = FindControl("userPassword") as TextBox;


            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
            finally
            {
                _connection.Close();
            }
           
        }
    }
}