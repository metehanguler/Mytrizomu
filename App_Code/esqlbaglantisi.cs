using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public class esqlbaglantisi
{
    public SqlConnection baglan()
    {
       // SqlConnection baglanti = new SqlConnection("Data Source=.;Initial Catalog=fatih;Integrated Security=True;");
       SqlConnection baglanti = new SqlConnection("Server=mytrizomu.com;Database=mytriz_db;uid=mytriz_db_kul;Password=5Yh5fctaa2-;");
        baglanti.Open();
        SqlConnection.ClearPool(baglanti);
        SqlConnection.ClearAllPools();
        return (baglanti);
    }
}
