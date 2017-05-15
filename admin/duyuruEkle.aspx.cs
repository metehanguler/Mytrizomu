using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_Default2 : System.Web.UI.Page
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
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));
            SqlCommand ekle = new SqlCommand("insert into Duyurular (duyuruAdi,duyuruAciklama,duyuruResim) values ('" + TextBox1.Text.Trim().ToString().Replace("'", "''") + "','" + TextBox2.Text.Trim().ToString().Replace("'", "''") + "','/img/'+'" + FileUpload1.FileName + "')", baglan.baglan());
            ekle.ExecuteNonQuery();
            Response.Write("<script>alert('İçerik Eklendi')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";            

        }
        else
        {
            Label1.Text = "<h1 class='uyari'>Dosya Yüklenmedi. Lütfen resim seçiniz!</h1>";
        }
    }
}