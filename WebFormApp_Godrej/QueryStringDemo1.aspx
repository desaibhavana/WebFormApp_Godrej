<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStringDemo1.aspx.cs" Inherits="WebFormApp_Godrej.QueryStringDemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        UserName
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Address&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Transfer" />
    </form>
</body>
</html>
