using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class admin_Default : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Yonetici where yoneticiKullanici='" + TextBox1.Text + "' and yoneticiSifre='" + TextBox2.Text + "'", baglan.baglan());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["yoneticiKullanici"] = dr["yoneticiKullanici"];
            Response.Redirect("admingiris.aspx");
        }
        else
        {
            Response.Write("<script>alert('Hatalı Giriş...')</script>");
        }
    }
}