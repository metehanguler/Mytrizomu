using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_sliderguncelle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string sliderId;
    string resimAd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        sliderId = Request.QueryString["sliderId"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmkguncelle = new SqlCommand("Select * from Slider where sliderId = '" + sliderId + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextBox1.Text = row["sliderAd"].ToString();
            TextBox2.Text = row["sliderIcerik"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));
            SqlCommand cmkguncelle = new SqlCommand("update Slider Set sliderAd='" + TextBox1.Text.Trim().ToString().Replace("'", "''") + "', sliderIcerik='" + TextBox2.Text.Trim().ToString().Replace("'", "''") + "', sliderResim = '/img/'+ '" + FileUpload1.FileName + "' where sliderId='" + sliderId + "'", baglan.baglan());
            cmkguncelle.ExecuteNonQuery();
            Response.Write("<script>alert('Güncellendi')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";

        }
        else
        {
            SqlCommand cmkguncelle = new SqlCommand("update Slider Set sliderAd='" + TextBox1.Text.Trim().ToString().Replace("'", "''") + "', sliderIcerik='" + TextBox2.Text.Trim().ToString().Replace("'", "''") + "' where sliderId='" + sliderId + "'", baglan.baglan());
            cmkguncelle.ExecuteNonQuery();
            Response.Write("<script>alert('Başlık ve İçerik Güncellendi')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}