
using System.Configuration;
using System.Data.SqlClient;
using System;


public partial class loginpage : System.Web.UI.Page
{ 
  protected void Page_Load(object sender, EventArgs e)
  {


   }
   protected void loginbtn_Click(object sender, EventArgs e)
{
    string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

 
    string empQuery = "SELECT First_Name, Dept FROM registration WHERE Emp_ID = @EmpID AND Password = @Password";
    using (SqlConnection con = new SqlConnection(cs))
    using (SqlCommand empCmd = new SqlCommand(empQuery, con))
    {
        empCmd.Parameters.AddWithValue("@EmpID", txtid.Text);
        empCmd.Parameters.AddWithValue("@Password", txtPassword.Text);

        con.Open();
        using (SqlDataReader dr = empCmd.ExecuteReader())
        {
            if (dr.Read())
            {
                Session["Emp_ID"] = txtid.Text;
                Session["First_Name"] = dr["First_Name"].ToString();
                Session["Dept"] = dr["Dept"].ToString();
                    Session["role"] = "employee";

                    Response.Redirect("Requisition.aspx");
                return;
            }
        }
        con.Close();
    }
     
    string adminQuery = "SELECT * FROM adminlogin WHERE Username = @Username AND Password = @Password";
    using (SqlConnection con = new SqlConnection(cs))
    using (SqlCommand adminCmd = new SqlCommand(adminQuery, con))
    {
        adminCmd.Parameters.AddWithValue("@Username", txtid.Text);
        adminCmd.Parameters.AddWithValue("@Password", txtPassword.Text);

        con.Open();
        using (SqlDataReader dr = adminCmd.ExecuteReader())
        {
            if (dr.Read())
            {
                Session["Admin_ID"] = dr["Username"].ToString();
                    Session["role"] = "admin";

                    Response.Redirect("aprovedform.aspx");
                return;
            }
        }
    }

    lblerror.Visible = true;
    lblerror.Text = "Invalid ID or Password.";
}

}