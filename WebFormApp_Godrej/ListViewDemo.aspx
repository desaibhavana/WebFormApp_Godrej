<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewDemo.aspx.cs" Inherits="WebFormApp_Godrej.ListViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EMPNO" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EMPNOLabel" runat="server" Text='<%# Eval("EMPNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ENAMELabel" runat="server" Text='<%# Eval("ENAME") %>' />
                        </td>
                        <td>
                            <asp:Label ID="JOBLabel" runat="server" Text='<%# Eval("JOB") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MGRLabel" runat="server" Text='<%# Eval("MGR") %>' />
                        </td>
                        <td>
                            <asp:Label ID="HIREDATELabel" runat="server" Text='<%# Eval("HIREDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SALLabel" runat="server" Text='<%# Eval("SAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="COMMLabel" runat="server" Text='<%# Eval("COMM") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DEPTNOLabel" runat="server" Text='<%# Eval("DEPTNO") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="EMPNOLabel1" runat="server" Text='<%# Eval("EMPNO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ENAMETextBox" runat="server" Text='<%# Bind("ENAME") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="JOBTextBox" runat="server" Text='<%# Bind("JOB") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MGRTextBox" runat="server" Text='<%# Bind("MGR") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="HIREDATETextBox" runat="server" Text='<%# Bind("HIREDATE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SALTextBox" runat="server" Text='<%# Bind("SAL") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="COMMTextBox" runat="server" Text='<%# Bind("COMM") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DEPTNOTextBox" runat="server" Text='<%# Bind("DEPTNO") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="EMPNOTextBox" runat="server" Text='<%# Bind("EMPNO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ENAMETextBox" runat="server" Text='<%# Bind("ENAME") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="JOBTextBox" runat="server" Text='<%# Bind("JOB") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MGRTextBox" runat="server" Text='<%# Bind("MGR") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="HIREDATETextBox" runat="server" Text='<%# Bind("HIREDATE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SALTextBox" runat="server" Text='<%# Bind("SAL") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="COMMTextBox" runat="server" Text='<%# Bind("COMM") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DEPTNOTextBox" runat="server" Text='<%# Bind("DEPTNO") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EMPNOLabel" runat="server" Text='<%# Eval("EMPNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ENAMELabel" runat="server" Text='<%# Eval("ENAME") %>' />
                        </td>
                        <td>
                            <asp:Label ID="JOBLabel" runat="server" Text='<%# Eval("JOB") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MGRLabel" runat="server" Text='<%# Eval("MGR") %>' />
                        </td>
                        <td>
                            <asp:Label ID="HIREDATELabel" runat="server" Text='<%# Eval("HIREDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SALLabel" runat="server" Text='<%# Eval("SAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="COMMLabel" runat="server" Text='<%# Eval("COMM") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DEPTNOLabel" runat="server" Text='<%# Eval("DEPTNO") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">EMPNO</th>
                                        <th runat="server">ENAME</th>
                                        <th runat="server">JOB</th>
                                        <th runat="server">MGR</th>
                                        <th runat="server">HIREDATE</th>
                                        <th runat="server">SAL</th>
                                        <th runat="server">COMM</th>
                                        <th runat="server">DEPTNO</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EMPNOLabel" runat="server" Text='<%# Eval("EMPNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ENAMELabel" runat="server" Text='<%# Eval("ENAME") %>' />
                        </td>
                        <td>
                            <asp:Label ID="JOBLabel" runat="server" Text='<%# Eval("JOB") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MGRLabel" runat="server" Text='<%# Eval("MGR") %>' />
                        </td>
                        <td>
                            <asp:Label ID="HIREDATELabel" runat="server" Text='<%# Eval("HIREDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SALLabel" runat="server" Text='<%# Eval("SAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="COMMLabel" runat="server" Text='<%# Eval("COMM") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DEPTNOLabel" runat="server" Text='<%# Eval("DEPTNO") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" DeleteCommand="DELETE FROM [EMP] WHERE [EMPNO] = @EMPNO" InsertCommand="INSERT INTO [EMP] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO]) VALUES (@EMPNO, @ENAME, @JOB, @MGR, @HIREDATE, @SAL, @COMM, @DEPTNO)" SelectCommand="SELECT * FROM [EMP]" UpdateCommand="UPDATE [EMP] SET [ENAME] = @ENAME, [JOB] = @JOB, [MGR] = @MGR, [HIREDATE] = @HIREDATE, [SAL] = @SAL, [COMM] = @COMM, [DEPTNO] = @DEPTNO WHERE [EMPNO] = @EMPNO">
                <DeleteParameters>
                    <asp:Parameter Name="EMPNO" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EMPNO" Type="Int32" />
                    <asp:Parameter Name="ENAME" Type="String" />
                    <asp:Parameter Name="JOB" Type="String" />
                    <asp:Parameter Name="MGR" Type="Int32" />
                    <asp:Parameter Name="HIREDATE" Type="DateTime" />
                    <asp:Parameter Name="SAL" Type="Decimal" />
                    <asp:Parameter Name="COMM" Type="Decimal" />
                    <asp:Parameter Name="DEPTNO" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ENAME" Type="String" />
                    <asp:Parameter Name="JOB" Type="String" />
                    <asp:Parameter Name="MGR" Type="Int32" />
                    <asp:Parameter Name="HIREDATE" Type="DateTime" />
                    <asp:Parameter Name="SAL" Type="Decimal" />
                    <asp:Parameter Name="COMM" Type="Decimal" />
                    <asp:Parameter Name="DEPTNO" Type="Int32" />
                    <asp:Parameter Name="EMPNO" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
