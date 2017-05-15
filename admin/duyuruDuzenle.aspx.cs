using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_duyuruDuzenle : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    string duyuruId;
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["yoneticiKullanici"] == null)
        {
            Response.Redirect("default.aspx");
        }

        duyuruId = Request.QueryString["duyuruId"];
        islem = Request.QueryString["islem"];
        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from Duyurular where duyuruId='" + duyuruId + "'", baglan.baglan());
            cmdsil.ExecuteNonQuery();
        }
        SqlCommand getir = new SqlCommand("Select * from Duyurular order by duyuruId desc", baglan.baglan());
        SqlDataReader duyurugetir = getir.ExecuteReader();
        DataList1.DataSource = duyurugetir;
        DataList1.DataBind();
    }
}