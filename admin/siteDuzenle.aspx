<%@ Page Language="C#" AutoEventWireup="true" CodeFile="siteDuzenle.aspx.cs" Inherits="admin_siteDuzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="ilgilisiteler.aspx">Geri Dön</a><br />
        <br />
        <br />
&nbsp;<asp:DataList ID="dtResimler" RepeatColumns="4" RepeatDirection="Horizontal"
                runat="server">
                <ItemTemplate>
                    <div style="padding: 0px 15px 15px 15px;">
                        <img src="../img/<%# Eval("siteResim") %>" width="160" height="120" />
                        <br />
                        <a href="siteDuzenle.aspx?siteId=<%#Eval("siteId") %>&islem=sil">Sil</a>
                    </div>
                </ItemTemplate>
            </asp:DataList>
    </div>
    </form>
</body>
</html>
