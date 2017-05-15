<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ilgilisiteler.aspx.cs" Inherits="admin_ilgilisiteler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background: #CBD6F4;
            width: 60%;
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

        .ekle {
            background: #fff;
            margin-bottom: 15px;
            display: inline-block;
            padding: 10px;
            border-radius: 5px;
            font-size: 14px;
            background: #3F4B7C;
            color: #fff;
            transition: all 0.5s ease;
        }

            .ekle:hover {
                transform: scale(1.05);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label"> <h1>Duyuru Ekle</h1></asp:Label>


        <div class="icerik">
            <a href="siteduzenle.aspx"><span class="ekle">İlgili Site Düzenle</span></a>
            <a href="admingiris.aspx"><span class="ekle">AnaSayfaya Dön</span></a>

            <table class="auto-style1">
                <tr>
                    <td>Site Adı : </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="329px" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Site Linki : </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Style="margin-left: 0px"  Width="329px" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Duyuru Resmi : </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server"  Text="Ekle" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
