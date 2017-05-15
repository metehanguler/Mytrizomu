using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_sliderduzenle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string sliderId;
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

         sliderId = Request.QueryString["sliderId"];
        islem = Request.QueryString["islem"];
        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from Slider where sliderId='" + sliderId + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        SqlCommand getir = new SqlCommand("Select * from Slider order by sliderId desc", baglan.baglan());
        SqlDataReader duyurugetir = getir.ExecuteReader();
        DataList1.DataSource = duyurugetir;
        DataList1.DataBind();
    }
}