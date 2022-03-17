<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormDangKy.aspx.cs" Inherits="FormDangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 64%;
        }
        .auto-style2 {
            width: 464px;
            text-align: right;
        }
        .auto-style3 {
            font-size: x-large;
            color: #009933;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            width: 464px;
            height: 26px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style6 {
            height: 26px;
            width: 789px;
        }
        .auto-style7 {
            width: 789px;
        }
        .auto-style8 {
            width: 464px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style9 {
            width: 464px;
            font-weight: bold;
            height: 27px;
            text-align: right;
        }
        .auto-style10 {
            width: 789px;
            height: 27px;
        }
        .auto-style11 {
            width: 464px;
            font-weight: bold;
            height: 27px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đăng ký tài khoản</span></strong></p>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên đăng nhập:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_TenDangNhap" runat="server" placeholder="Nhập vào tên đăng nhập" Height="27px" ToolTip="Nhập tên đăng nhập" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfv_TenDangNhap" runat="server" ErrorMessage="Không được để trống !!!" ForeColor="#CC0000" ControlToValidate="txt_TenDangNhap" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mật khẩu:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_MatKhau" runat="server" placeholder="Nhập vào mật khẩu" Height="26px" TextMode="Password" ToolTip="Nhập mật khẩu" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfv_MatKhau" runat="server" ControlToValidate="txt_MatKhau" ErrorMessage="Không được để trống !!!" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhập lại mật khẩu:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_NhapLaiMatKhau" runat="server" placeholder="Nhập lại mật khẩu" Height="27px" TextMode="Password" ToolTip="Nhập lại mật khẩu" Width="282px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    </td>
                <td class="auto-style10">
                    <asp:CompareValidator ID="cvl_NhapLaiMatKhau" runat="server" ControlToCompare="txt_MatKhau" ControlToValidate="txt_NhapLaiMatKhau" ErrorMessage="Mật khẩu không khớp !!!" ForeColor="#CC0000" ValidationGroup="DangKy" Display="Dynamic"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfv_NhapLaiMatKhau" runat="server" ControlToValidate="txt_NhapLaiMatKhau" ErrorMessage="Không được để trống !!!" ForeColor="#CC0000" ValidationGroup="DangKy" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số điện thoại:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_SDT" runat="server" placeholder="+84" Height="25px" ToolTip="Nhập số điện thoại" Width="284px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    </td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="rev_SDT" runat="server" ControlToValidate="txt_SDT" ErrorMessage="Số điện thoại không hợp lệ !!!" ForeColor="#CC0000" ValidationExpression="^((0(\d){9}))$" ValidationGroup="DangKy" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfv_SDT" runat="server" ControlToValidate="txt_SDT" ErrorMessage="Không được để trống !!!" ForeColor="#CC0000" ValidationGroup="DangKy" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_Email" runat="server" placeholder="example@gmail.com" Height="28px" ToolTip="Nhập Email" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                </td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txt_Email" ErrorMessage="Email không hợp lệ !!!" ForeColor="#CC0000" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="DangKy" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="txt_Email" ErrorMessage="Không được để trống !!!" ForeColor="#CC0000" ValidationGroup="DangKy" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style7">
                    <br />
                    <asp:Button ID="btn_DangKy" runat="server" BackColor="#009933" Height="39px" Text="Đăng Ký" ValidationGroup="DangKy" Width="106px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Dong" runat="server" BackColor="Red" Height="39px" Text="Đóng" Width="77px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
