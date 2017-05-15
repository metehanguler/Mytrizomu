using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_siteDuzenle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string siteId = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        siteId = Request.QueryString["siteId"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from ilgiliSiteler where siteId='" + siteId + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }

        if (!IsPostBack)
        {
            ResimleriGetir();
        }
    }

    private void ResimleriGetir()
    {
        SqlDataAdapter adp = new SqlDataAdapter("Select * From ilgiliSiteler Order By siteId Desc", baglan.baglan());
        DataTable tbl = new DataTable();
        adp.Fill(tbl);

        dtResimler.DataSource = tbl;
        dtResimler.DataBind();

    }
}