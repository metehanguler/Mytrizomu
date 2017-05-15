<%@ Page Language="C#" AutoEventWireup="true" CodeFile="videoduzenle.aspx.cs" Inherits="admin_galeri_videoduzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="w">
            <a href="../admingiris.aspx"><span class="ekle">Anasayfa</span></a>

            <div id="content">
                <ul class="clearfix">
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <ItemTemplate>
                            <div class="videoplay" style="float: left; padding: 15px; list-style-type: none;">
                                <li>
                                    <a target="_blank" href="https://www.youtube.com/embed/<%# Eval("VideoYolu") %>">
                                        <img height="200" width="200" src="https://i.ytimg.com/vi/<%# Eval("VideoYolu")%>/hqdefault.jpg" /></a>
                                </li>

                                <br />
                                <div style="text-align: center;">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("VideoAdi") %>'></asp:Label>
                                </div>
                                <div style="text-align: center; margin-top: 10px;">
                                    <a href="videoduzenle.aspx?VideoId=<%#Eval("VideoId") %>&islem=sil">Sil</a>

                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:DataList>
                </ul>

            </div>
            <!-- @end #content -->
        </div>
        <!-- @end #w -->
    </form>
</body>
</html>
