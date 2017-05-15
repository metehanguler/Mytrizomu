<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sliderduzenle.aspx.cs" Inherits="admin_sliderduzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        body {
            background:#CBD6F4;
            width:60%;
            margin:120px auto;
            font-family:Helvetica;
        }
        .icerik {
            background:#fff;
            padding:50px;
            border-radius:5px;
            border:1px solid #CBD6F4;
            display:inline-block;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 562px;
        }
        .auto-style3 {
            width: 194px;
        }
       .ekle {
           background:#fff;
           margin-bottom:15px;
           display:inline-block;
           padding:10px;
           border-radius:5px;
           font-size:14px;
           background:#3F4B7C;
           color:#fff;
           transition:all 0.5s ease;
       }
       .ekle:hover {
           transform:scale(1.05);
       }

       .yesil {
           background:green;
       }
        
    </style>
</head>
<body>
    <h1>Etkinlikler</h1>
    <a href="admingiris.aspx"><span class="ekle">Anasayfa</span></a>  <a href="sliderekle.aspx"><span class="ekle yesil">Slider Ekle</span></a>
    <div class="icerik">
        
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2"><a href='sliderduzenle.aspx?sliderId=<%#Eval("sliderId") %>'>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("sliderAd") %>'></asp:Label>
                            </a></td>
                        <td class="auto-style3"><a href="sliderduzenle.aspx?sliderId=<%#Eval("sliderId") %>&islem=sil">Sil</a></td>
                        <td><a href='sliderguncelle.aspx?sliderId=<%#Eval("sliderId") %>'>Güncelle</a></td>
                    </tr>
                </table>

            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
    </div>
</body>
</html>

