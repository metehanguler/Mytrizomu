<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="galeri.aspx.cs" Inherits="galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">



    <link rel="stylesheet" type="text/css" media="all" href="lightbox/css/styles.css" />
    <link rel="stylesheet" type="text/css" media="all" href="lightbox/css/jquery.lightbox-0.5.css" />
    <script type="text/javascript" src="lightbox/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="lightbox/js/jquery.lightbox-0.5.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        $(function () {
            $('#thumbnails a').lightBox();
        });
</script>
    <div id="w">
        <div id="content">
            <div id="thumbnails">
                <ul class="clearfix">
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <ItemTemplate>
                            <li><a  href="admin/galeri/upload/<%# Eval("ResimYolu") %>" ><img width="200" height="200" src="admin/galeri/upload/<%# Eval("ResimYolu") %>"></a></li>
                        </ItemTemplate>
                    </asp:DataList>
                </ul>
            </div>
        </div>
        <!-- @end #content -->
    </div>
    <!-- @end #w -->



</asp:Content>

