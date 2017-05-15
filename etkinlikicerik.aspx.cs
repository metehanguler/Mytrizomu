using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class etkinlikicerik : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string etkinlikId;

    protected void Page_Load(object sender, EventArgs e)
    {
        etkinlikId = Request.QueryString["etkinlikId"];
        SqlCommand getir = new SqlCommand("Select * from Etkinlik where etkinlikId='" + etkinlikId + "'", baglan.baglan());
        SqlDataReader etkinlikgetir = getir.ExecuteReader();
        DataList1.DataSource = etkinlikgetir;
        DataList1.DataBind();

 SqlCommand cmkguncelle = new SqlCommand("Select * from Etkinlik where etkinlikId = '" + etkinlikId + "'", baglan.baglan());
        SqlDataReader drkguncelle = cmkguncelle.ExecuteReader();
        DataTable dtkguncelle = new DataTable("tablo");
        dtkguncelle.Load(drkguncelle);

        DataRow row = dtkguncelle.Rows[0];
        Page.Title = row["etkinlikAdi"].ToString();
    }
}