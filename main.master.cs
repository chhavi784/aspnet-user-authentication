using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
	protected void Page_Load(object sender, EventArgs e)
	{
        string pageName = System.IO.Path.GetFileName(Request.Path);

        if (pageName.ToLower() == "abc.aspx")
        {
            navv_members.Visible = false;
            navav_members.Visible = false;
            navvvv_member.Visible = false;
            navs_member.Visible = false;
            member.Visible = false;
            navv__members.Visible = false;
            navv_membersss.Visible = false;
            navv__memberscredential.Visible = false;
            navv__memberssfinancial.Visible = false;
            navv__membersmajor.Visible = false;

            return;
        }
        if (!IsPostBack)
		{


			if (Session["role"] != null && Session["role"].ToString() == "employee")
			{
				navv_members.Visible = false;
				navav_members.Visible = false;
				navvvv_member.Visible = true;
				navs_member.Visible = true;
				member.Visible = true;


			}
			//if (Session["role"] != null && Session["role"].ToString() == "employee")
			//{


			//             navv__memberscredential.Visible = true;
			//             navv__memberssfinancial.Visible = true;
			//             navv__membersmajor.Visible = true;
			//	//navs_member.Visible = true;
			//	//member.Visible = true;


			//}

			else if (Session["role"] != null && Session["role"].ToString() == "admin")
            {
                navv_members.Visible = true;
                navav_members.Visible = true;
               
                navv__members.Visible = true;
                navv_membersss.Visible=true;
                navv_members.Visible=true;

            }
            else
            {
               

                navv_members.Visible = false;
                navav_members.Visible = false;
            }

           
        }
		}

	private void getUserDetails(string userid)
	{
		try
		{
			using (SqlConnection cnn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["constr"].ConnectionString))
			{
				cnn.Open();

				using (SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [User_Master] where login_id='" + userid + "';", cnn))
				{

					DataSet ds = new DataSet();
					da.Fill(ds);

					if (ds.Tables[0].Rows.Count > 0)
					{

						lblLoginId.Text = "ID : " + ds.Tables[0].Rows[0]["login_id"].ToString();
						//lblName.Text = "Name : " + ds.Tables[0].Rows[0]["Username"].ToString();
						//lblrole.Text = "Email : " + ds.Tables[0].Rows[0]["email"].ToString();


						Response.Cookies["UN"].Value = ds.Tables[0].Rows[0]["Username"].ToString();

					}
				}
			}
		}
		catch (Exception Ex)
		{

		}
		finally
		{

		}
	}


}
