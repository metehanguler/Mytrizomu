<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-1.css">
    <script src="sliderengine/initslider-1.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%;">

        <div id="orta">

            <div class='csslider1 '>
                <div id="amazingslider-wrapper-1" style="display: block; position: relative; margin: 0px auto 56px;">
                    <div id="amazingslider-1" style="display: block; position: relative; margin: 0 auto;">
                        <ul class="amazingslider-slides" style="display: none;">
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href='slidericerik.aspx?sliderId=<%#Eval("sliderId") %>'>
                                            <asp:Image ID="Image2" title='<%# Eval("sliderAd") %>' runat="server" ImageUrl='<%# Eval("sliderResim") %>' /></a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>


        </div>
        <div id="alt">

            <div id="duyurular">

                <div style="width: 100%; display: inline-block; margin-bottom: 15px;">
                    <div class="duyurunot">Duyurular</div>
                    <a href="duyuruarsiv.aspx">
                        <div class="arsivnot">Arşiv &raquo;</div>
                    </a>
                </div>
                <ul class="duyurumenu">



                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="tarihler">
                                    <asp:Label ID="Label1" runat="server" Text='<%# string.Format("{0:d MMM yyyy}", Eval("duyuruTarih"))%>'></asp:Label>
                                </div>
                                <a href='duyurular.aspx?duyuruId=<%#Eval("duyuruId") %>'>
                                    <div class="yaziBaslik">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("duyuruAdi").ToString().PadRight(35).Substring(0,35).TrimEnd() +"..." %>'></asp:Label>
                                    </div>
                                </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>

            <div id="ilgilisiteler">
                <div id="listedis">

                    <asp:DataList ID="dtResimler" RepeatColumns="5" RepeatDirection="Horizontal"
                        runat="server">
                        <ItemTemplate>
                            <div style="padding: 15px">

                                <a href='<%# Eval("siteLink") %>' data-aciklama='<%# Eval("siteAdi") %>'>
                                    <img src="img/<%# Eval("siteResim") %>" /></a>


                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div id="takvim">

<asp:Calendar ID="Calendar1" runat="server"   Font-Names="Verdana"     
BackColor="White"   BorderColor="#3366CC"   Font-Size="8pt"   
ForeColor="#003399"   Height="16px" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" OnDayRender="Calendar1_DayRender" Width="340px" OnSelectionChanged="Calendar1_SelectionChanged">  
    <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />  
    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />  
    <OtherMonthDayStyle ForeColor="#999999" />  
    <DayStyle Height="50px" />  
    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />  
    <DayHeaderStyle ForeColor="#336666" Height="1px" BackColor="#99CCCC" />  
    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
    <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />  
    <WeekendDayStyle BackColor="#CCCCFF" />
</asp:Calendar> 
               


        </div>
    </div>
</div>
</asp:Content>
