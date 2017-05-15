using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_etkinlikguncelle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string etkinlikId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        etkinlikId = Request.QueryString["etkinlikId"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmkguncelle = new SqlCommand("Select * from Etkinlik where etkinlikId = '" + etkinlikId + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextBox1.Text = row["etkinlikAdi"].ToString();
            TextBox2.Text = row["etkinlikAciklama"].ToString();
TextBox3.Text = row["etkinlikTarih"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));
            SqlCommand cmkguncelle = new SqlCommand("update Etkinlik Set etkinlikAdi='" + TextBox1.Text.Trim().ToString().Replace("'", "''") + "', etkinlikAciklama='" + TextBox2.Text.Trim().ToString().Replace("'", "''") + "', etkinlikResim ='/img/'+ '" + FileUpload1.FileName + "',etkinlikTarih='"+TextBox3.Text.Trim().ToString().Replace("'", "''")+"' where etkinlikId='" + etkinlikId + "'", baglan.baglan());
            cmkguncelle.ExecuteNonQuery();
            Response.Write("<script>alert('İçerik Eklendi')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";

        }
        else
        {
            SqlCommand cmkguncelle = new SqlCommand("update Etkinlik Set etkinlikAdi='" + TextBox1.Text.Trim().ToString().Replace("'", "''") + "', etkinlikAciklama='" + TextBox2.Text.Trim().ToString().Replace("'", "''") + "',etkinlikTarih='" + TextBox3.Text.Trim().ToString().Replace("'", "''") + "' where etkinlikId='" + etkinlikId + "'", baglan.baglan());
            cmkguncelle.ExecuteNonQuery();
                        Response.Write("<script>alert('İçerik Eklendi')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";

        }
    }
}