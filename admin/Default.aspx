<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
          <link rel="stylesheet" href="css/style.css">

</head>
<body>
    <form id="form1" runat="server">
  <div class="login-page">
  <div class="form">
   
    
<asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı"></asp:TextBox>
<asp:TextBox ID="TextBox2" type="password" runat="server" placeholder="Şifre" TextMode="Password"></asp:TextBox>
      <asp:Button ID="Button2" runat="server" Text="Giriş Yap" OnClick="Button2_Click" BackColor="#4CAF50"/>
      <asp:Label ID="Label1" runat="server" Text="Label"><a href="sifremiUnuttum.aspx">Şifrenizi mi Unuttunuz?</a></asp:Label>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    </form>
</body>
</html>
