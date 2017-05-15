<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="slidericerik.aspx.cs" Inherits="slidericerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<!-- Go to www.addthis.com/dashboard to customize your tools --> <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-58fceefb6fded969"></script> 
    <link href="reset.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Gentium+Book+Basic:400,400italic,700,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="duyurugenel">
        <div style="width:90%; margin:0 auto; background:#fafafa; padding:40px 20px;">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <div class="duyurubaslik">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("sliderAd") %>'></asp:Label>
                    </div>
                    <div class="duyururesim">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("sliderResim") %>' Width="100%" Height="100%" />
                    </div>
                    <div class="duyuruicerik">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("sliderIcerik") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
<div class="addthis_inline_share_toolbox"></div>
        </div>
        <div class="rightcontainer">

        </div>
    </div>
</asp:Content>



