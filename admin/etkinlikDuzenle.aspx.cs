using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class etkinlikDuzenle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string etkinlikId;
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        etkinlikId = Request.QueryString["etkinlikId"];
        islem = Request.QueryString["islem"];
        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from Etkinlik where etkinlikId='" + etkinlikId + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        SqlCommand getir = new SqlCommand("Select * from Etkinlik order by etkinlikId desc", baglan.baglan());
        SqlDataReader duyurugetir = getir.ExecuteReader();
        DataList1.DataSource = duyurugetir;
        DataList1.DataBind();
    }
}