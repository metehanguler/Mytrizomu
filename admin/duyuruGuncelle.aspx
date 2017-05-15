<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="duyuruGuncelle.aspx.cs" Inherits="admin_duyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Duyuru Güncelle</h1>
    
    <div class="icerik">
         <a href="admingiris.aspx"><span class="ekle">Anasayfa</span></a> 
         <a href="duyuruDuzenle.aspx"><span class="ekle" style="background: green">Duyurular</span></a> 

    <table class="auto-style1">
        <tr>
            <td>Duyuru Başlığı : </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Duyuru İçeriği : </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="187px" style="margin-left: 0px" TextMode="MultiLine" Width="329px"></asp:TextBox>
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
                <asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click1" />
            </td>
        </tr>
    </table></div>
</asp:Content>

