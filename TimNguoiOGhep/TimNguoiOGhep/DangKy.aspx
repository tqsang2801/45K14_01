<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="TimNguoiOGhep.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleRegist.css" rel="stylesheet" />
</head>
<body>
    <div class ="signupbox">
        <form runat="server">
            <asp:Label Text="Sign Up" CssClass="lblsignup" runat="server" />
            <asp:Label Text="Username" CssClass="lblusername" runat="server" />
            <asp:TextBox runat="server" CssClass="txtusername" placeholder="Enter Username" ID="txt_Username" />
            <asp:Label Text="Password" CssClass="lblpassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtpassword" placeholder="***********" ID="txt_Password" TextMode="Password" />
            <asp:Label Text="Confirm Password" CssClass="lblconfirmpass" runat="server" />
            <asp:TextBox runat="server" CssClass="txtconfirmpass" placeholder="***********" ID="txt_ConfirmPass" TextMode="Password" />
            <asp:Label Text="Fullname" CssClass="lblfullname" runat="server" /> 
            <asp:TextBox runat="server" CssClass="txtfullname" placeholder="Enter Fullname" ID="txt_Fullname" />
            <asp:Label Text="Phone" CssClass="lblphone" runat="server" />
            <asp:TextBox runat="server" CssClass="txtphone" placeholder="Enter Phone" ID="txt_Phone" />
            <asp:Label Text="Address" CssClass="lbladdress" runat="server" />
            <asp:TextBox runat="server" CssClass="txtaddress" placeholder="Enter Address" ID="txt_Address" />
            <asp:Button Text="SIGN UP" CssClass="btnsignup" runat="server" ID="btn_SignUp"  ValidationGroup="Registration" />
            <asp:RequiredFieldValidator ID="rfv_fullname" runat="server" ControlToValidate="txt_Fullname" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_fullname"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_username" runat="server" ControlToValidate="txt_Username" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_username"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_phone" runat="server" ControlToValidate="txt_Phone" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_phone"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_address" runat="server" ControlToValidate="txt_Address" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_address"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_password" runat="server" ControlToValidate="txt_Password" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_password"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfv_confirmpass" runat="server" ControlToValidate="txt_ConfirmPass" Display="Dynamic" ErrorMessage="*" ForeColor="#E57575" ValidationGroup="Registration" CssClass="rfv_confirmpass"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev_Fullname" runat="server" ControlToValidate="txt_Fullname" Display="Dynamic" ErrorMessage="*Invalid fullname" ForeColor="#E57575" ValidationExpression="^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s\W|_]+$" ValidationGroup="Registration" CssClass="rev_fullname"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="rev_Phone" runat="server" ControlToValidate="txt_Phone" Display="Dynamic" ErrorMessage="*Invalid phone number" ForeColor="#E57575" ValidationExpression="^((0(\d){9}))$" ValidationGroup="Registration" CssClass="rev_phone"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="cvl_ConfirmPass" runat="server" ControlToCompare="txt_Password" ControlToValidate="txt_ConfirmPass" Display="Dynamic" ErrorMessage="*Incorrect password" ForeColor="#E57575" ValidationGroup="Registration" CssClass="cvl_confirmpass"></asp:CompareValidator>
        </form>
    </div>
</body>
</html>
