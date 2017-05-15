using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class slidericerik : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string sliderId;

    protected void Page_Load(object sender, EventArgs e)
    {
        sliderId = Request.QueryString["sliderId"];
        SqlCommand getir = new SqlCommand("Select * from Slider where sliderId='" + sliderId + "'", baglan.baglan());
        SqlDataReader etkinlikgetir = getir.ExecuteReader();
        DataList1.DataSource = etkinlikgetir;
        DataList1.DataBind();

        SqlCommand cmkguncelle = new SqlCommand("Select * from Slider where sliderId = '" + sliderId + "'", baglan.baglan());
        SqlDataReader drkguncelle = cmkguncelle.ExecuteReader();
        DataTable dtkguncelle = new DataTable("tablo");
        dtkguncelle.Load(drkguncelle);

        DataRow row = dtkguncelle.Rows[0];
        Page.Title = row["sliderAd"].ToString();
    }
}