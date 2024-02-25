using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Awesome_Sneakers.pages
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            using (var db = new DataClassesDataContext("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\shoai\\source\\repos\\Awesome Sneakers\\Awesome Sneakers\\App_Data\\Database1.mdf\";Integrated Security=True"))
            {
                ProductTable product = new ProductTable()
                {
                    name = name.Text,
                    description = description.Text, 
                    price = price.Text,

                };
                db.ProductTables.InsertOnSubmit(product);
                db.SubmitChanges();
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\shoai\source\repos\Awesome Sneakers\Awesome Sneakers\App_Data\Database1.mdf"";Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update ProductTable set name='" + TextBox1.Text + "', description='" + TextBox2.Text + "', price='" + TextBox3.Text + "' where id = '" + TextBox4.Text + "'";
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\shoai\source\repos\Awesome Sneakers\Awesome Sneakers\App_Data\Database1.mdf"";Integrated Security=True");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from ProductTable where id = '" + productID.Text + "'";
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
        }
    }
}