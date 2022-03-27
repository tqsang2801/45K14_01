<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyTTCN.aspx.cs" Inherits="TimNguoiOGhep.QuanLyTTCN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleTTCN.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class ="loginbox" >
        <h2>Thông tin cá nhân</h2>
         <form runat="server">
             <asp:Label Text="Username" CssClass="lbluser" runat="server" />
             <asp:TextBox runat="server" CssClass="txtuser" ID="txt_User" />
             <asp:Label Text="Họ tên" CssClass="lblhoten" runat="server" />
             <asp:TextBox runat="server" CssClass="txthoten" ID="txt_HoTen"  />
             <asp:Label Text="Giới tính" CssClass="lblgioitinh" runat="server" />
             <asp:TextBox runat="server" CssClass="txtgioitinh" ID="txt_GioiTinh" />
             <asp:Label Text="Số điện thoại" CssClass="lblsdt" runat="server" />
             <asp:TextBox runat="server" CssClass="txtsdt" ID="txt_Sdt" />
             <asp:Label Text="Email" CssClass="lblemail" runat="server" />
             <asp:TextBox runat="server" CssClass="txtemail" ID="txt_Email" />
             <asp:Label Text="Ngày sinh" CssClass="lblngaysinh" runat="server" />
             <asp:TextBox runat="server" CssClass="txtngaysinh" ID="txt_NgaySinh" />
             <asp:Label Text="Địa chỉ" CssClass="lbldiachi" runat="server" />
             <asp:TextBox runat="server" CssClass="txtdiachi" ID="txt_DiaChi" />
             <asp:Label Text="Link facebook" CssClass="lblfb" runat="server" />
             <asp:TextBox runat="server" CssClass="txtfb" ID="txt_LinkFB" />
             <asp:Button Text="Cập nhật" CssClass="btnsubmit" runat="server" ID="btn_CapNhat" ValidationGroup="CapNhat" />
             <asp:Label Text="Cập nhật thất bại." CssClass="lblThongBao" runat="server" ID="lbl_ThongBao" Visible="False" />
             <asp:RequiredFieldValidator ID="rfv_user" runat="server" ControlToValidate="txt_User" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="CapNhat" CssClass="rfv_user"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="rfv_hoten" runat="server" ControlToValidate="txt_HoTen" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="CapNhat" CssClass="rfv_hoten"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="rfv_gioitinh" runat="server" ControlToValidate="txt_GioiTinh" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="CapNhat" CssClass="rfv_gioitinh"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="rfv_sdt" runat="server" ControlToValidate="txt_Sdt" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="CapNhat" CssClass="rfv_sdt"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="CapNhat" CssClass="rfv_email"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="rfv_ngaysinh" runat="server" ControlToValidate="txt_NgaySinh" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="CapNhat" CssClass="rfv_ngaysinh"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="rfv_diachi" runat="server" ControlToValidate="txt_DiaChi" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="CapNhat" CssClass="rfv_diachi"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="rfv_linkfb" runat="server" ControlToValidate="txt_LinkFB" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="CapNhat" CssClass="rfv_linkfb"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="rev_HoTen" runat="server" ControlToValidate="txt_HoTen" Display="Dynamic" ErrorMessage="*Nhập dạng chuỗi" ForeColor="#E57575" ValidationExpression="^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s\W|_]+$" ValidationGroup="CapNhat" CssClass="rev_hoten"></asp:RegularExpressionValidator>
             <asp:RegularExpressionValidator ID="rev_Sdt" runat="server" ControlToValidate="txt_Sdt" Display="Dynamic" ErrorMessage="*Nhập đủ 10 số" ForeColor="#E57575" ValidationExpression="^((0(\d){9}))$" ValidationGroup="CapNhat" CssClass="rev_sdt"></asp:RegularExpressionValidator>
             <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="*example@gmail.com" ForeColor="#E57575" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="CapNhat" CssClass="rev_email"></asp:RegularExpressionValidator>
             <asp:RegularExpressionValidator ID="rev_NgaySinh" runat="server" ControlToValidate="txt_NgaySinh" Display="Dynamic" ErrorMessage="*dd/mm/yyyy" ForeColor="#E57575" ValidationExpression="^(?:0[1-9]|[12]\d|3[01])([\/.-])(?:0[1-9]|1[012])\1(?:19|20)\d\d$" ValidationGroup="CapNhat" CssClass="rev_ngaysinh"></asp:RegularExpressionValidator>
             <asp:RegularExpressionValidator ID="rev_LinkFB" runat="server" ControlToValidate="txt_LinkFB" Display="Dynamic" ErrorMessage="*Nhập đúng đường dẫn" ForeColor="#E57575" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?" ValidationGroup="CapNhat" CssClass="rev_linkfb"></asp:RegularExpressionValidator>
         </form>
    </div>
</body>
</html>
