using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_galeri_videoduzenle : System.Web.UI.Page
{
    string VideoId;
    string islem;
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("../admingiris.aspx");
        }
        VideoId = Request.QueryString["VideoId"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from GaleriVideo where VideoId='" + VideoId + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }

        SqlCommand getir = new SqlCommand("select * from GaleriVideo order by VideoId desc", baglan.baglan());
        SqlDataReader resimgetir = getir.ExecuteReader();
        DataList1.DataSource = resimgetir;
        DataList1.DataBind();
    }
}