using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;



public partial class _Default : System.Web.UI.Page
{
    string[,] etkinlik;
    esqlbaglantisi baglan = new esqlbaglantisi();
    protected void Page_Load(object sender, EventArgs e)
    {


        etkinlik = new string[13, 32];
        etkinlik[3, 22] = "2.Yazılı";
        etkinlik[4, 23] = "23 nisan milli egemenlik bayramı";
        etkinlik[4, 26] = "Asp.net Sınavı";
        etkinlik[5, 1] = "İşçi Bayramı";
        etkinlik[5, 19] = "Gençlik ve Spor Bayramı";


        SqlCommand getir = new SqlCommand("Select top 8 * from Duyurular order by duyuruId desc", baglan.baglan());
        SqlDataReader duyurugetir = getir.ExecuteReader();
        Repeater1.DataSource = duyurugetir;
        Repeater1.DataBind();


        SqlCommand egetir = new SqlCommand("Select top 4 * from Slider order by sliderId desc", baglan.baglan());
        SqlDataReader etkinlikgetir = egetir.ExecuteReader();
        Repeater2.DataSource = etkinlikgetir;
        Repeater2.DataBind();

     SqlCommand sitegetir = new SqlCommand("Select top 10 * from ilgiliSiteler order by siteId desc", baglan.baglan());
        SqlDataReader drsitegetir = sitegetir.ExecuteReader();
        dtResimler.DataSource = drsitegetir;
        dtResimler.DataBind();



    }


    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        
        LinkButton btn = new LinkButton();
        btn.ID = "Date" + e.Day.Date.ToString("MMddyyyy");
        string url = "etkinlikller.aspx";
        btn.Attributes.Add("onclick", "window.open('" + url + "');");
        e.Cell.Controls.Add(btn);

        if (e.Day.IsOtherMonth)
        {
            e.Cell.Controls.Clear();
        }
        else
        {
            Label lbl = new Label();
            lbl.CssClass = "css_appointment";
            string etkin = etkinlik[e.Day.Date.Month, e.Day.Date.Day];

            if (etkin != "")
            {
                lbl.Text = "<br />";
                lbl.Text += etkin;
                e.Cell.Controls.Add(lbl);
            }
           
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //do something
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Response.Redirect("etkinlikler.aspx");
    }
}