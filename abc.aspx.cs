using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class abc : System.Web.UI.Page
{

    cls_Common_cls objcls = new cls_Common_cls();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {


        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
        {
            con.Open();


            string checkquerys = "Select Emp_ID from login where Emp_ID  = '" + txtEmpID.Text + "'";
            SqlDataReader drs;
            using (SqlCommand cmmd = new SqlCommand(checkquerys, con))
            {

                drs = cmmd.ExecuteReader();
                if (drs.HasRows)
                {
                    lableerror.Text = "Employe ID already exists ";
                    lableerror.ForeColor = System.Drawing.Color.Red;
                    lableerror.Visible = true;
                    return;
                   
                }

                else
                {
                    
                    string checkquery = "Select Mobile_No from login where Mobile_No  = '" + txtMobile.Text + "'";
                    SqlDataReader dr;
                    using (SqlCommand cmd = new SqlCommand(checkquery, con))
                    {

                        dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            lableerror.Text = "Phone number already exists ";
                            lableerror.ForeColor = System.Drawing.Color.Red;
                            lableerror.Visible = true;
                            return;
                        }

                        else
                        {
                           
                            string insertquery = "INSERT INTO registration([Emp_ID],[First_Name],[Last_Name],[Password],[Mobile_No],[Category],[Desig],[Dept]) VALUES(@employee,@firstname,@lastname,@password,@mobile,@category,@degis,@dept)";

                            SqlCommand command = new SqlCommand(insertquery, con);


                            command.Parameters.AddWithValue("@employee", txtEmpID.Text);
                            command.Parameters.AddWithValue("@firstname", txtName.Text);
                            command.Parameters.AddWithValue("@lastname", txtLastName.Text);
                            command.Parameters.AddWithValue("@password", txt_pas.Text);
                  command.Parameters.AddWithValue("@mobile", txtMobile.Text);
                            //command.Parameters.AddWithValue("@doj", DateTime.ParseExact(txtjoindate.Text, "dd/MM/yyyy", null).ToString("MM/dd/yyyy"));
                            command.Parameters.AddWithValue("@category", txtddlcategory.SelectedValue);
                            command.Parameters.AddWithValue("@degis", txtdes.Text);
                            command.Parameters.AddWithValue("@dept", txtdep.Text);
                            int i = command.ExecuteNonQuery();







                            if (i != 0)
                            {

                              


                                //objcls.DisplayAJAXMessage(this, "Data saved");
                                objcls.DisplayAJAXMessageRedirect(this, "Data saved", "loginpage.aspx");

                                // string retval = abc1("aasda", "asda");

                            }
                            

                        }
                    }

  
                  lableerror.Visible = false;


                }


            }

        }



    }


}
   