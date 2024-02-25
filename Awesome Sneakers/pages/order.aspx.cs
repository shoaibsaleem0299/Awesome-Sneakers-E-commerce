using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Awesome_Sneakers.pages
{
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void order_Click(object sender, EventArgs e)
        {
            using (var db = new DataClassesDataContext("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\shoai\\source\\repos\\Awesome Sneakers\\Awesome Sneakers\\App_Data\\Database1.mdf\";Integrated Security=True"))
            {
                Order orders = new Order()
                {
                    Id = Convert.ToInt16(id.Text),
                    name = text1.Text,
                    price = text2.Text,
                    quantity = text3.Text
                };
                db.Orders.InsertOnSubmit(orders);
                db.SubmitChanges();
                Response.Redirect("./index.aspx");
            }
        }
    }
}