<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="TimNguoiOGhep.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            font-size: x-large;
            color: #009933;
            background-color: #FFFFFF;
        }
        .auto-style1 {
            width: 64%;
        }
        .auto-style14 {
        width: 464px;
        font-weight: bold;
        text-align: left;
        height: 37px;
    }
    .auto-style15 {
        width: 789px;
        height: 37px;
    }
        .auto-style8 {
            width: 464px;
            font-weight: bold;
            text-align: left;
        }
        .auto-style7 {
            width: 789px;
        }
        .auto-style11 {
            width: 464px;
            font-weight: bold;
            height: 27px;
            text-align: left;
        }
        .auto-style10 {
            width: 789px;
            height: 27px;
        }
        .auto-style12 {
            width: 464px;
            font-weight: bold;
            text-align: left;
            height: 30px;
        }
        .auto-style13 {
            width: 789px;
            height: 30px;
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
        .auto-style9 {
            width: 464px;
            font-weight: bold;
            height: 27px;
            text-align: right;
        }
        .auto-style2 {
            width: 464px;
            text-align: right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p>
            <strong><span class="auto-style3">&nbsp;Đăng ký tài khoản</span></strong></p>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Họ:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txt_Ho" runat="server" Height="27px" placeholder="Nhập vào họ của bạn" ToolTip="Nhập vào họ của bạn" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfv_Ho" runat="server" ControlToValidate="txt_Ho" Display="Dynamic" ErrorMessage="Không được để trống" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev_Ho" runat="server" ControlToValidate="txt_Ho" Display="Dynamic" ErrorMessage="Họ không hợp lệ" ForeColor="#CC0000" ValidationExpression="^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s\W|_]+$" ValidationGroup="DangKy"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_Ten" runat="server" Height="27px" placeholder="Nhập vào tên của bạn" ToolTip="Nhập vào tên của bạn" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfv_Ten" runat="server" ControlToValidate="txt_Ten" Display="Dynamic" ErrorMessage="Không được để trống" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev_Ten" runat="server" ControlToValidate="txt_Ten" Display="Dynamic" ErrorMessage="Tên không hợp lệ" ForeColor="#CC0000" ValidationExpression="^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s\W|_]+$" ValidationGroup="DangKy"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên đăng nhập:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_TenDangNhap" runat="server" Height="27px" placeholder="Nhập vào tên đăng nhập" ToolTip="Nhập tên đăng nhập" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfv_TenDangNhap" runat="server" ControlToValidate="txt_TenDangNhap" ErrorMessage="Không được để trống" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mật khẩu:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_MatKhau" runat="server" Height="26px" placeholder="Nhập vào mật khẩu" TextMode="Password" ToolTip="Nhập mật khẩu" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfv_MatKhau" runat="server" ControlToValidate="txt_MatKhau" ErrorMessage="Không được để trống" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nhập lại mật khẩu:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_NhapLaiMatKhau" runat="server" Height="27px" placeholder="Nhập lại mật khẩu" TextMode="Password" ToolTip="Nhập lại mật khẩu" Width="282px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style10">
                    <asp:CompareValidator ID="cvl_NhapLaiMatKhau" runat="server" ControlToCompare="txt_MatKhau" ControlToValidate="txt_NhapLaiMatKhau" Display="Dynamic" ErrorMessage="Mật khẩu không khớp" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfv_NhapLaiMatKhau" runat="server" ControlToValidate="txt_NhapLaiMatKhau" Display="Dynamic" ErrorMessage="Không được để trống" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giới tính:</td>
                <td class="auto-style13">
                    <asp:RadioButton ID="rbn_Nam" runat="server" GroupName="GioiTinh" Text="Nam" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbn_Nu" runat="server" GroupName="GioiTinh" Text="Nữ" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbn_Khac" runat="server" GroupName="GioiTinh" Text="Khác" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số điện thoại:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_SDT" runat="server" Height="25px" placeholder="+84" ToolTip="Nhập số điện thoại" Width="284px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="rev_SDT" runat="server" ControlToValidate="txt_SDT" Display="Dynamic" ErrorMessage="Số điện thoại không hợp lệ" ForeColor="#CC0000" ValidationExpression="^((0(\d){9}))$" ValidationGroup="DangKy"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfv_SDT" runat="server" ControlToValidate="txt_SDT" Display="Dynamic" ErrorMessage="Không được để trống" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_Email" runat="server" Height="28px" placeholder="example@gmail.com" ToolTip="Nhập Email" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="Email không hợp lệ" ForeColor="#CC0000" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="DangKy"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="Không được để trống" ForeColor="#CC0000" ValidationGroup="DangKy"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">
                    <br />
                    <asp:Button ID="btn_DangKy" runat="server" BackColor="#009933" Height="39px" Text="Đăng Ký" ValidationGroup="DangKy" Width="106px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Dong" runat="server" BackColor="Red" Height="39px" Text="Đóng" Width="77px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
