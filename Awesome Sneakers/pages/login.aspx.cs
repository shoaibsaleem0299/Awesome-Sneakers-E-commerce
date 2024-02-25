using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Awesome_Sneakers.pages
{
    public partial class loginaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (var db = new DataClassesDataContext("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\shoai\\source\\repos\\Awesome Sneakers\\Awesome Sneakers\\App_Data\\Database1.mdf\";Integrated Security=True"))
            {
                UsersTable loginuser = new UsersTable()
                {
                    name = name.Text,
                    email = email.Text,
                    contact = contact.Text,
                    password = password2.Text,
                };
                db.UsersTables.InsertOnSubmit(loginuser);
                db.SubmitChanges();
                Label1.Text = "ADD SUCCESFULLY";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (var db = new DataClassesDataContext("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\shoai\\source\\repos\\Awesome Sneakers\\Awesome Sneakers\\App_Data\\Database1.mdf\";Integrated Security=True"))
            {
                string username = Username.Text;
                string password = Password.Text;

                    if (username == "shoaib" && password == "shoaib12")
                    {
                        Response.Redirect("./dashboard.aspx");
                    }
                    else
                    {
                        var loginuser = db.UsersTables.FirstOrDefault(u => u.email == username && u.password == password);

                            if (loginuser != null)
                            {
                                Response.Redirect("./index.aspx");
                            }
                            else
                            {

                                errorMessageLabel.Text = "Invalid username or password. Please try again.";
                            }
                    }
            }
        }
    }
}