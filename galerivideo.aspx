<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="galerivideo.aspx.cs" Inherits="galerivideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">



    <link rel="stylesheet" type="text/css" media="all" href="lightbox/css/styles.css" />
    <link rel="stylesheet" type="text/css" media="all" href="lightbox/css/jquery.lightbox-0.5.css" />
    <script type="text/javascript" src="lightbox/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="lightbox/js/jquery.lightbox-0.5.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#thumbnails a').lightBox();
        });

        $(document).ready(function () {
            $("a[rel^='prettyPhoto']").prettyPhoto();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    





    <div id="w">
        <div id="content">
             <ul class="clearfix">
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <ItemTemplate>
                            <div class="videoplay" style="float:left;padding:15px">
                            <li>
                                <a target="_blank" href="https://www.youtube.com/embed/<%# Eval("VideoYolu") %>" ><img height="200" width="200" src="https://i.ytimg.com/vi/<%# Eval("VideoYolu")%>/hqdefault.jpg" /></a>
                            </li><br />
                           <div style=" text-align:center;"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("VideoAdi") %>'></asp:Label></div></div>
                        </ItemTemplate>
                    </asp:DataList>
                </ul>
            
        </div>
        <!-- @end #content -->
    </div>
    <!-- @end #w -->


</asp:Content>



