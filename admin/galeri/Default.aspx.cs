using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string ResimId = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("../admingiris.aspx");
        }

        ResimId=Request.QueryString["ResimId"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from Galeri where ResimId='" + ResimId + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }

        if (!IsPostBack)
        {
            ResimleriGetir();
        }
    }

    private void ResimleriGetir()
    {
        SqlDataAdapter adp = new SqlDataAdapter("Select ResimID,ResimYolu From Galeri Order By ResimID Desc", baglan.baglan());
        DataTable tbl = new DataTable();
        adp.Fill(tbl);

        dtResimler.DataSource = tbl;
        dtResimler.DataBind();

    }
}