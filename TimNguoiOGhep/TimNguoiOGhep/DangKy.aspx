<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="TimNguoiOGhep.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleRegist.css" rel="stylesheet" />
</head>
<body>
    <div class ="registrationbox">
        <img src="user5.png" alt="Alternate Text" class ="user" />
        <h2>Registration</h2>
        <form runat="server">
            <asp:Label Text="Fullname" CssClass="lblfullname" runat="server" /> 
            <asp:TextBox runat="server" CssClass="txtfullname" placeholder="Enter Fullname" ID="txt_Fullname" />
            <asp:Label Text="Username" CssClass="lblusername" runat="server" />
            <asp:TextBox runat="server" CssClass="txtusername" placeholder="Enter Username" ID="txt_Username" />
            <asp:Label Text="Phone" CssClass="lblphone" runat="server" />
            <asp:TextBox runat="server" CssClass="txtphone" placeholder="Enter Phone" ID="txt_Phone" />
            <asp:Label Text="Email" CssClass="lblemail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter Email" ID="txt_Email" />
            <asp:Label Text="Date of birth" CssClass="lblbirth" runat="server" />
            <asp:TextBox runat="server" CssClass="txtbirth" placeholder="dd/mm/yyyy" ID="txt_Birth" TextMode="Date" />
            <asp:Label Text="Sex" CssClass="lblsex" runat="server" />
            <asp:TextBox runat="server" CssClass="txtsex" placeholder="Nam/Nữ" ID="txt_Sex" />
            <asp:Label Text="Address" CssClass="lbladdress" runat="server" />
            <asp:TextBox runat="server" CssClass="txtaddress" placeholder="Enter Address" ID="txt_Address" />
            <asp:Label Text="Password" CssClass="lblpassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtpassword" placeholder="*************" ID="txt_Password" TextMode="Password" />
            <asp:Label Text="Confirm Password" CssClass="lblconfirmpass" runat="server" />
            <asp:TextBox runat="server" CssClass="txtconfirmpass" placeholder="*************" ID="txt_ConfirmPass" TextMode="Password" />
            <asp:Button Text="REGISTER" CssClass="btnregister" runat="server" ID="btn_Register"  ValidationGroup="Registration" />
            <asp:RequiredFieldValidator ID="rfv_fullname" runat="server" ControlToValidate="txt_Fullname" Display="Dynamic" ErrorMessage="*Vui lòng nhập fullname" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_fullname"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_username" runat="server" ControlToValidate="txt_Username" Display="Dynamic" ErrorMessage="*Vui lòng nhập username" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_username"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_phone" runat="server" ControlToValidate="txt_Phone" Display="Dynamic" ErrorMessage="*Vui lòng nhập số điện thoại" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_phone"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="*Vui lòng nhập Email" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_email"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_birth" runat="server" ControlToValidate="txt_Birth" Display="Dynamic" ErrorMessage="*Vui lòng nhập ngày sinh" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_birth"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_sex" runat="server" ControlToValidate="txt_Sex" Display="Dynamic" ErrorMessage="*Vui lòng nhập giới tính" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_sex"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_address" runat="server" ControlToValidate="txt_Address" Display="Dynamic" ErrorMessage="*Vui lòng nhập địa chỉ của bạn" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_address"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_password" runat="server" ControlToValidate="txt_Password" Display="Dynamic" ErrorMessage="*Vui lòng nhập mật khẩu" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_password"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_confirmpass" runat="server" ControlToValidate="txt_ConfirmPass" Display="Dynamic" ErrorMessage="*Vui lòng nhập lại mật khẩu" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_confirmpass"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_Fullname" runat="server" ControlToValidate="txt_Fullname" Display="Dynamic" ErrorMessage="Họ tên không hợp lệ" ForeColor="#E57575" ValidationExpression="^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s\W|_]+$" ValidationGroup="Registration"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="rev_Phone" runat="server" ControlToValidate="txt_Phone" Display="Dynamic" ErrorMessage="Số điện thoại không hợp lệ" ForeColor="#E57575" ValidationExpression="^((0(\d){9}))$" ValidationGroup="Registration"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="rev_Email" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="Email không hợp lệ" ForeColor="#E57575" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Registration"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="cvl_ConfirmPass" runat="server" ControlToCompare="txt_Password" ControlToValidate="txt_ConfirmPass" Display="Dynamic" ErrorMessage="Mật khẩu không khớp" ForeColor="#E57575" ValidationGroup="Registration"></asp:CompareValidator>
        </form>
    </div>
</body>
</html>
