using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class galeri : System.Web.UI.Page
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand getir = new SqlCommand("select * from Galeri",baglan.baglan());
        SqlDataReader resimgetir = getir.ExecuteReader();
        DataList1.DataSource = resimgetir;
        DataList1.DataBind();
    }
}