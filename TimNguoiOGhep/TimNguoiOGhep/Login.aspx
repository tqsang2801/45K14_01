<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TimNguoiOGhep.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
<div class ="loginbox" >
        <img src="user5.png" alt="Alternate Text" class="user"/>
        <h2>Sign In</h2>
         <form runat="server">
             <asp:Label Text="Username" CssClass="lbluser" runat="server" />
             <asp:TextBox runat="server" CssClass="txtuser" placeholder="Enter username" ID="txt_User" />
             <asp:Label Text="Password" CssClass="lblpass" runat="server" />
             <asp:TextBox runat="server" CssClass="txtpass" placeholder="*************" ID="txt_Pass" TextMode="Password" />
             <asp:Button Text="SIGN IN" CssClass="btnsubmit" runat="server" ID="btn_DangNhap" OnClick="btn_DangNhap_Click" ValidationGroup="DangNhap" />
             <asp:LinkButton Text="Sign up" CssClass="btnsignup" runat="server" PostBackUrl="~/DangKy.aspx" />
            
             <asp:Label Text="Đăng nhập không thành công." CssClass="lblThongBao" runat="server" ID="lbl_ThongBao" Visible="False" />

             <asp:RequiredFieldValidator ID="rfv_user" runat="server" ControlToValidate="txt_User" Display="Dynamic" ErrorMessage="*Vui lòng nhập username" ForeColor="#E57575" ValidationGroup="DangNhap" CssClass="rfv_user"></asp:RequiredFieldValidator>
            
             <asp:RequiredFieldValidator ID="rfv_pass" runat="server" ControlToValidate="txt_Pass" Display="Dynamic" ErrorMessage="*Vui lòng nhập password" ForeColor="#E57575" ValidationGroup="DangNhap" CssClass="rfv_pass"></asp:RequiredFieldValidator>
             <asp:Label Text="No account yet?" CssClass="lblnoaccount" runat="server" />


         </form>
    </div>

</body>
</html>
