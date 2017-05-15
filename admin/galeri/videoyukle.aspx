<%@ Page Language="C#" AutoEventWireup="true" CodeFile="videoyukle.aspx.cs" Inherits="admin_galeri_videoyukle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="http://www.mytrizomu.com/admin/galeri/default.aspx"><span class="ekle">Anasayfa</span></a><br />
            <br />
            <a href="videoduzenle.aspx"><span class="ekle">Video Düzenle</span></a><br />
            <br />

            Video İsmi :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Video Youtube Linki :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click" />




        </div>
    </form>
</body>
</html>
