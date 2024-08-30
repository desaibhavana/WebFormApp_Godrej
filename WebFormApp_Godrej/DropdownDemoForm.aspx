<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropdownDemoForm.aspx.cs" Inherits="WebFormApp_Godrej.DropdownDemoForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Country&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLCountry_SelectedIndexChanged">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            State&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddlState" runat="server">
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
