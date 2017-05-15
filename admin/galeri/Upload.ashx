<%@ WebHandler Language="C#" Class="Upload" %>

using System;
using System.Web;
using System.IO;
using System.Data.SqlClient;
using System.Data;
public class Upload : IHttpHandler
{
    esqlbaglantisi baglan = new esqlbaglantisi();
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        context.Response.Expires = -1;
        try
        {
            HttpPostedFile postedFile = context.Request.Files["Filedata"];
            string id = context.Request["id"];
            string savepath = "";
            string tempPath = "";

            tempPath = context.Request["folder"];

            //If you prefer to use web.config for folder path, uncomment below line:
            //tempPath = System.Configuration.ConfigurationManager.AppSettings["FolderPath"]; 


            savepath = context.Server.MapPath(tempPath);
            string filename = postedFile.FileName;
            if (!Directory.Exists(savepath))
                Directory.CreateDirectory(savepath);
            string ext = System.IO.Path.GetExtension(filename);
            string resimGuid = Guid.NewGuid().ToString();

            postedFile.SaveAs(savepath + @"\" + resimGuid  + ext);


            string url = context.Request.Path;

            
            try
            {
                SqlCommand command = new SqlCommand("Insert Into Galeri (ResimYolu) values(@ResimYolu)", baglan.baglan());
                command.Parameters.AddWithValue("@ResimYolu", resimGuid + ext);
                command.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                context.Response.Write(ex.ToString()); 
            }
            finally
            {
                context.Response.Write("asd");
                context.Response.StatusCode = 200;
            }
        }
        catch (Exception ex)
        {
            context.Response.Write("Error: " + ex.Message);
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}