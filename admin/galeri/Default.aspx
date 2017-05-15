<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="uploadify/uploadify.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="uploadify/swfobject.js"></script>
    <script src="uploadify/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="uploadify/jquery.uploadify.v2.1.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#<%=FileUpload1.ClientID%>").uploadify({
                'uploader': 'uploadify/uploadify.swf',
                'script': 'Upload.ashx',
                'cancelImg': 'images/cancel.png',
                'folder': 'upload',
                'multi': true,
                'buttonText': 'RESIM SEC',
                'auto': true,
                onAllComplete: function (event, data) {
                    location.reload();
                }

            });
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 226px;
        }
        .auto-style2 {
            width: 189px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="170px" />
                    </td>
                    <td class="auto-style2">
                        <a href="./videoyukle.aspx">Video Yükle</a></td>
                        <td><a href="../admingiris.aspx">Panele Dön</a></td>
                </tr>
            </table>
            <br />
            <br />
            <asp:DataList ID="dtResimler" RepeatColumns="4" RepeatDirection="Horizontal"
                runat="server">
                <ItemTemplate>
                    <div style="padding: 0px 15px 15px 15px;">
                        <img src="upload/<%# Eval("ResimYolu") %>" width="160" height="120" />
                        <br />
                        <a href="Default.aspx?ResimId=<%#Eval("ResimId") %>&islem=sil">Sil</a>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
