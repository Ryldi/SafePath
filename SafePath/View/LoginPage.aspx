<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SafePath.View.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-top: 18vh;
            gap: 6vh;
        }

        .textbox-container {
            display: grid;
            gap: 3vh;
        }

        .img-logo {
            width: 28vh;
        }

        .textbox {
            width: 23vh;
            height: 5vh;
            font-size: 1.5vh;
            border: none;
            left: 1vh;
        }

            .textbox:focus {
                border-color: #4CAF50;
                background-color: transparent;
                outline: none;
            }

        .pass-sub-container, .email-sub-container {
            border: 2px solid grey;
            border-radius: 10px;
            width: 27vh;
            padding-left: 1vh;
        }

        .pass-sub-container {
            display: flex;
            align-items: center;
        }

        .forgot-url {
            font-size: 2vh;
            text-decoration: none;
            font-family: Arial, Helvetica, sans-serif;
            color: #0981DA;
        }

        .btn-signin {
            background-color: #3862F3;
            border-radius: 100vh;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 2vh;
            color: white;
            padding: 1vh;
            width: 27vh;
        }

        .regist-url {
            color: #635DFF;
            text-decoration: none;
        }

        .nav-regist-container {
            display: flex;
            justify-content: center;
            font-size: 2vh;
            font-family: Arial, Helvetica, sans-serif;
            gap: 0.5vh;
        }

        .status-container {
            display: flex;
            justify-content: center;
            font-size: 1.5vh;
            font-family: Arial, Helvetica, sans-serif;
        }

        .label{
            position: relative;
            background-color: white;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 1vh;
            left: 1vh;
            top: 0.8vh;
            padding-left: 0.5vh;
            padding-right: 0.5vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="logo-container">
                <asp:Image ID="Img_Logo" runat="server" ImageUrl="~/Assets/logo-horizontal-stack.jpg" CssClass="img-logo" />
            </div>
            <div class="textbox-container">
                <div class="email-container">
                    <asp:Label ID="Lbl_Email" runat="server" Text="Email address" CssClass="label"></asp:Label>
                    <div class="email-sub-container">
                        <asp:TextBox ID="Tb_Email" runat="server" CssClass="textbox" PlaceHolder="Your email address"></asp:TextBox>
                    </div>
                </div>
                <div class="pass-container">
                    <asp:Label ID="Lbl_Password" runat="server" Text="Password" CssClass="label"></asp:Label>
                    <div class="pass-sub-container">
                        <asp:TextBox ID="Tb_Password" runat="server" CssClass="textbox" PlaceHolder="Your password"></asp:TextBox>
                        <asp:ImageButton ID="Btn_ShowPassword" runat="server" ImageUrl="~/Assets/show.png" Width="50" Height="55" OnClick="Btn_ShowPassword_Click" Show="0" CssClass="btn-show" />
                    </div>
                </div>
                <div>
                    <asp:HyperLink ID="Hl_ForgotPass" runat="server" CssClass="forgot-url" NavigateUrl="~/View/ForgotPassPage.aspx">Forgot password?</asp:HyperLink>
                </div>
            </div>
            <div class="status-container">
                <asp:Label ID="Lbl_Status" runat="server" Text=""></asp:Label>
            </div>
            <div class="btn-container">
                <asp:Button ID="Btn_SignIn" runat="server" Text="SIGN IN" CssClass="btn-signin" OnClick="Btn_SignIn_Click"/>
            </div>
            <div class="nav-regist-container">
                <div>Don't have an account? </div>
                <asp:HyperLink ID="Hl_SignUp" runat="server" CssClass="regist-url" NavigateUrl="~/View/RegisterPage.aspx">Sign up</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
