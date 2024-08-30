<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieLogin1.aspx.cs" Inherits="WebFormApp_Godrej.CookieLogin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
      .auto-style3 {
          width: 50%;
      }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <table align="center" class="auto-style3">
      <tr>
          <td>
              <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td>
              <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="txtPWD" runat="server" TextMode="Password"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td colspan="2">
              <asp:CheckBox ID="chkRememberME" runat="server" Text="Remember Me" />
          </td>
      </tr>
      <tr>
          <td colspan="2" style="text-align: center">
              <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
          </td>
      </tr>
  </table>
        </div>
    </form>
</body>
</html>
