using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class duyurular : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string duyuruId;
    protected void Page_Load(object sender, EventArgs e)
    {
        duyuruId = Request.QueryString["duyuruId"];
        SqlCommand getir = new SqlCommand("Select * from Duyurular where duyuruId='"+duyuruId+"'", baglan.baglan());
        SqlDataReader duyurugetir = getir.ExecuteReader();
        DataList1.DataSource = duyurugetir;
        DataList1.DataBind();



        SqlCommand cmkguncelle = new SqlCommand("Select * from Duyurular where duyuruId = '" + duyuruId + "'", baglan.baglan());
        SqlDataReader drkguncelle = cmkguncelle.ExecuteReader();
        DataTable dtkguncelle = new DataTable("tablo");
        dtkguncelle.Load(drkguncelle);

        DataRow row = dtkguncelle.Rows[0];
        Page.Title = row["duyuruAdi"].ToString();


    }

    protected void SetPageTitle(object title)
    {
        this.Title = title.ToString();
    }
}