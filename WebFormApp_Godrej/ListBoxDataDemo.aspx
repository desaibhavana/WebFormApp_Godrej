<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBoxDataDemo.aspx.cs" Inherits="WebFormApp_Godrej.ListBoxDataDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 468px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DNAME" DataValueField="DEPTNO" Height="312px" Width="291px"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT [DEPTNO], [DNAME] FROM [DEPT]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="EMPNO" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="EMPNO" HeaderText="EMPNO" ReadOnly="True" SortExpression="EMPNO" />
                                <asp:BoundField DataField="ENAME" HeaderText="ENAME" SortExpression="ENAME" />
                                <asp:BoundField DataField="JOB" HeaderText="JOB" SortExpression="JOB" />
                                <asp:BoundField DataField="MGR" HeaderText="MGR" SortExpression="MGR" />
                                <asp:BoundField DataField="HIREDATE" HeaderText="HIREDATE" SortExpression="HIREDATE" />
                                <asp:BoundField DataField="SAL" HeaderText="SAL" SortExpression="SAL" />
                                <asp:BoundField DataField="COMM" HeaderText="COMM" SortExpression="COMM" />
                                <asp:BoundField DataField="DEPTNO" HeaderText="DEPTNO" SortExpression="DEPTNO" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT * FROM [EMP] WHERE ([DEPTNO] = @DEPTNO)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ListBox1" Name="DEPTNO" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
           
            <br />
            <br />
        </div>
    </form>
</body>
</html>
