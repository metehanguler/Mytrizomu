<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="duyuruarsiv.aspx.cs" Inherits="duyuruarsiv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="arsivgenel">
       <div class="ebaslik"><h1>Duyuru Arşiv</h1></div>
        <div id="arsivicerikgenel">
            
                <asp:DataList ID="DataList1" runat="server" RepeatLayout="Flow">
                    <ItemTemplate>
                        <div id="arsivicerik">
                        <asp:Label ID="Label1" runat="server" Text='<%# string.Format("{0:d MMM yyyy}", Eval("duyuruTarih"))%>'></asp:Label><br /><br />
                         <a href='duyurular.aspx?duyuruId=<%#Eval("duyuruId") %>'><asp:Label ID="Label2" runat="server" Text='<%# Eval("duyuruAdi") %>'></asp:Label></a>
                             </div>
                    </ItemTemplate>
                </asp:DataList>
           
        </div>
    </div>
</asp:Content>

