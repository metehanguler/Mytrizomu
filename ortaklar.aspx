<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ortaklar.aspx.cs" Inherits="ortaklar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div style="width:90%;padding:15px; display:flex; margin:20px auto;  background:rgba(255,255,255,0.6)">
        <div style="float:left;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/triz.jpg" Height="176px" Width="167px" />
        </div>
        <div style="float:left; margin-left:35px; font-family: 'book antiqua', palatino; font-size: 20pt; color:black; line-height:35px; width: 743px;">
            <asp:Label ID="Label1" runat="server" Text="Proje Ortakları" Font-Bold="True"></asp:Label>
        </div>
    </div>
</asp:Content>

