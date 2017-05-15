<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admingiris.aspx.cs" Inherits="admin_admingiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hoşgeldin, admin</title>
    <style>
        body {
            background: #CBD6F4;
            width: 40%;
            margin: 120px auto;
            font-family: Helvetica;
        }

        .icerik {
            background: #fff;
            padding: 50px;
            border-radius: 5px;
            border: 1px solid #CBD6F4;
            display: inline-block;
        }

        .kutu {
            background: #369;
            text-align: center;
            height: 120px;
            width: 120px;
            line-height: 120px;
            border-radius: 10px;
            float: left;
            margin: 10px;
            color: #fff;
            transition: all 0.5s ease;
        }

            .kutu:nth-child(odd) {
                background: #3F4B7C;
            }

            .kutu:nth-child(even) {
                background: #1C2847;
            }

            .kutu:hover {
                transform: scale(1.1);
            }
    </style>
</head>
<body>
    <form runat="server">
        <h1>Admin Paneli</h1>
        <a href="../Default.aspx">Siteye Dön</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Çıkış Yap</asp:LinkButton>

        <div class="icerik">

            <a href="duyuruDuzenle.aspx">
                <div class="kutu">Duyurular</div>
            </a>
            <a href="etkinlikDuzenle.aspx">
                <div class="kutu">Etkinlikler</div>
            </a>

            <div class="kutu">İletişim</div>
            <a href="galeri/default.aspx">
                <div class="kutu">Galeri</div>
            </a>
            <a href="ilgilisiteler.aspx">
                <div class="kutu">İlgili Siteler</div>
            </a>

            <a href="sliderEkle.aspx">
                <div class="kutu">Slider</div>
            </a>


        </div>
    </form>


</body>
</html>
