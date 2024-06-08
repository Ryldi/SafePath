<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomingPage.aspx.cs" Inherits="SafePath.View.WelcomingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image: url('../Assets/background.jpg');
            background-size: cover;
            margin: 0;
            height: 95vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .img-logo{
            width: 30vh;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
        <div class="container">
            <asp:Image ID="Img_Logo" runat="server" ImageUrl="~/Assets/logo-welcome.png" CssClass="img-logo"/>
        </div>
        <asp:UpdatePanel ID="Up_Timer" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer" runat="server" Interval="3000" OnTick="Timer_Tick" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
