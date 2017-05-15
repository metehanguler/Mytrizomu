using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_duyuruGuncelle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string duyuruId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        duyuruId = Request.QueryString["duyuruId"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmkguncelle = new SqlCommand("Select * from Duyurular where duyuruId = '" + duyuruId + "'", baglan.baglan());
            SqlDataReader drkguncelle = cmkguncelle.ExecuteReader();
            DataTable dtkguncelle = new DataTable("tablo");
            dtkguncelle.Load(drkguncelle);

            DataRow row = dtkguncelle.Rows[0];
            TextBox1.Text = row["duyuruAdi"].ToString();
            TextBox2.Text = row["duyuruAciklama"].ToString();

        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));
            SqlCommand cmkguncelle = new SqlCommand("update Duyurular Set duyuruAdi='" + TextBox1.Text.Trim().ToString().Replace("'", "''") + "', duyuruAciklama='" + TextBox2.Text.Trim().ToString().Replace("'", "''") + "', duyuruResim ='/img/'+ '" + FileUpload1.FileName + "' where duyuruId='" + duyuruId + "'", baglan.baglan());
            cmkguncelle.ExecuteNonQuery();
            Response.Write("<script>alert('Güncellendi')</script>");
            
        }
        else
        {
            SqlCommand cmkguncelle = new SqlCommand("update Duyurular Set duyuruAdi='" + TextBox1.Text.Trim().ToString().Replace("'", "''") + "', duyuruAciklama='" + TextBox2.Text.Trim().ToString().Replace("'", "''") + "' where duyuruId='" + duyuruId + "'", baglan.baglan());
            cmkguncelle.ExecuteNonQuery();
            Response.Write("<script>alert('Başlık ve İçerik Güncellendi')</script>");
        }
    }
}