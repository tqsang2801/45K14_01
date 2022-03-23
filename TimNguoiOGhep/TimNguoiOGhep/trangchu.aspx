<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="TimNguoiOGhep.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleHome.css" rel="stylesheet" />
    <link href="StyleHome2.css" rel="stylesheet" />
</head>
<body>
    <div class="app">
        <header class="header">
            <div class="grid">
            <nav class="header__navbar">
                <ul class="header__navbar-list">
                    <li class="header__navbar-item header__navbar-item--strong">
                        <span class="header__navbar-item--no-pointer">Tìm người ở ghép</span>
                            </li>
                </ul>
                <ul class="header__navbar-list">
                    <li class="header__navbar-item header__navbar-item--has-help">Hỗ trợ
                        <div class="header_help">
                            <img src="help.png" class="header_help-img" />
                        </div>
                    </li>
                    <li class="header__navbar-item header__navbar-item--strong">Đăng ký</li>
                    <li class="header__navbar-item header__navbar-item--strong">Đăng nhập</li>
                </ul>
            </nav>
                <div class="header-with-search">
                    <div class="header__logo">
                        
                    </div>
                    <div class="header__search">

                    </div>
                    <div class="header__dangtin">

                    </div>
                </div>
            </div>
        </header>

        <div class="container">

        </div>
        <footer class="footer">

        </footer>
    </div>
    <!--<div class="modal">
        <div class="modal__overlay">

        </div>
        <div class="modal__body">
            <div class ="loginbox" >
            <h2>Sign In</h2>
            <form runat="server">
                 <asp:Label Text="Username" CssClass="lbluser" runat="server" />
                 <asp:TextBox runat="server" CssClass="txtuser" placeholder="Enter username" ID="txt_User" />
                 <asp:Label Text="Password" CssClass="lblpass" runat="server" />
                 <asp:TextBox runat="server" CssClass="txtpass" placeholder="*************" ID="txt_Pass" TextMode="Password" />
                 <asp:Button Text="SIGN IN" CssClass="btnsubmit" runat="server" ID="btn_DangNhap"  ValidationGroup="DangNhap" />
                 <asp:LinkButton Text="Sign up" CssClass="btnsignup" runat="server" PostBackUrl="~/DangKy.aspx" />
            
                 <asp:Label Text="Đăng nhập không thành công." CssClass="lblThongBao" runat="server" ID="lbl_ThongBao" Visible="False" />

                 <asp:RequiredFieldValidator ID="rfv_user" runat="server" ControlToValidate="txt_User" Display="Dynamic" ErrorMessage="*Vui lòng nhập username" ForeColor="#E57575" ValidationGroup="DangNhap" CssClass="rfv_user"></asp:RequiredFieldValidator>
            
                 <asp:RequiredFieldValidator ID="rfv_pass" runat="server" ControlToValidate="txt_Pass" Display="Dynamic" ErrorMessage="*Vui lòng nhập password" ForeColor="#E57575" ValidationGroup="DangNhap" CssClass="rfv_pass"></asp:RequiredFieldValidator>
                 <asp:Label Text="No account yet?" CssClass="lblnoaccount" runat="server" />
            </form>
            </div>
        </div>
    </div>-->
</body>
</html>
