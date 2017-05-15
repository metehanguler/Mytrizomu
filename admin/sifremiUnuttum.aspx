<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sifremiUnuttum.aspx.cs" Inherits="admin_sifremiUnuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                Kullanıcı adınızı giriniz :
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
            </asp:Panel>


            <asp:Panel ID="Panel3" runat="server">
                Şifre : <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
