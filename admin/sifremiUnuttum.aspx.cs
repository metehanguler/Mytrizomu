using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_sifremiUnuttum : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Yonetici where yoneticiKullanici='" + TextBox1.Text + "'", baglan.baglan());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Session["soru"] = dr["gizliSoru"];
            Label1.Text = Session["soru"].ToString();
        }
        else
        {
            Response.Write("<script>alert('Hatalı Kullanıcı Adı...')</script>");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Yonetici where gizliCevap='" + TextBox2.Text + "'", baglan.baglan());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Panel2.Visible = false;
            Panel3.Visible=true;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand guncelle = new SqlCommand("update Yonetici set yoneticiSifre='" + TextBox3.Text + "'", baglan.baglan());
        guncelle.ExecuteNonQuery();
        Response.Write("<script>alert('Şifre Güncellendi')</script>");

    }
}