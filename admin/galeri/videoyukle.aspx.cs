using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_galeri_videoyukle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand ekle = new SqlCommand("insert into GaleriVideo (VideoAdi,VideoYolu) values('"+TextBox1.Text+"','"+TextBox2.Text+"')",baglan.baglan());
        ekle.ExecuteNonQuery();
        Response.Write("<script>alert('İçerik Eklendi')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}