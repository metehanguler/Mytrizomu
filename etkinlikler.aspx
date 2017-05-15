<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="etkinlikler.aspx.cs" Inherits="etkinlikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div id="arsivgenel">
        
            <div class="ebaslik"><h1>Etkinlikler</h1></div>
     
        <div id="arsivicerikgenel">
            
                <asp:DataList ID="DataList1" runat="server" RepeatLayout="Flow">
                    <ItemTemplate>
                        <div id="arsivicerik">
                        <asp:Label ID="Label1" runat="server" Text='<%# string.Format("{0:d MMM yyyy}", Eval("etkinlikTarih"))%>'></asp:Label><br /><br />
                         <a href='etkinlikicerik.aspx?etkinlikId=<%#Eval("etkinlikId") %>'><asp:Label ID="Label2" runat="server" Text='<%# Eval("etkinlikAdi") %>'></asp:Label></a>
                             </div>
                    </ItemTemplate>
                </asp:DataList>
           
        </div>
    </div>
    <div style="clear:both"></div>
</asp:Content>

