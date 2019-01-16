using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace buspass
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string EmpId = TextBox1.Text;
            //string Pass = TextBox2.Text;
            string connection = "server=WSLKCMP5F-582; user id=sa; password=slk@SOFT; database=bp";
            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                string query = "select * from bp_table where EmpId='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader Sdr = cmd.ExecuteReader();
                if (Sdr.Read())
                 {
                     int Role = (int)Sdr["RoleId"];
                     if (Role == 1111)
                        Response.Redirect("admin.aspx",true);
                     else if (Role == 0000)
                        Response.Redirect("user.aspx",true);
                     else
                        lblmsg.Text = "record not found";
                 }
               else
                      lblmsg.Text = "invalid user";
            }

           // conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}