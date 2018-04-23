<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function hplkUpdate_Click(grid) {
            var isValid = ASPxClientEdit.ValidateEditorsInContainer(grid.GetMainElement());
            if (isValid)
                grid.UpdateEdit();
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="gvEmployees" runat="server" ClientInstanceName="gvEmployees"
            AutoGenerateColumns="False" DataSourceID="dsEmployees" KeyFieldName="EmployeeID"
            OnRowValidating="gvEmployees_RowValidating" OnRowUpdating="gvEmployees_RowUpdating">
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                <dx:GridViewDataTextColumn FieldName="EmployeeID" ReadOnly="True" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="2">
                    <PropertiesTextEdit>
                        <ValidationSettings ValidateOnLeave="False" ValidationGroup="EditForm">
                            <RequiredField IsRequired="True" ErrorText="Last Name is required!" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="3">
                    <PropertiesTextEdit>
                        <ValidationSettings ValidateOnLeave="False" ValidationGroup="EditForm">
                            <RequiredField IsRequired="True" ErrorText="First Name is required!" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Title" VisibleIndex="4">
                    <PropertiesTextEdit>
                        <ValidationSettings ValidateOnLeave="False" ValidationGroup="EditForm">
                            <RequiredField IsRequired="True" ErrorText="Title is required!" />
                        </ValidationSettings>
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="BirthDate" VisibleIndex="5">
                    <PropertiesDateEdit>
                        <ValidationSettings ValidateOnLeave="False" ValidationGroup="EditForm">
                            <RequiredField IsRequired="True" ErrorText="Birth Date is required!" />
                        </ValidationSettings>
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
            </Columns>
            <SettingsEditing EditFormColumnCount="2" Mode="PopupEditForm" PopupEditFormModal="true"
                PopupEditFormWidth="400px" PopupEditFormHorizontalAlign="WindowCenter" PopupEditFormVerticalAlign="WindowCenter" />
            <Templates>
                <EditForm>
                    <table width="100%">
                        <tr>
                            <td>
                                <dx:ASPxGridViewTemplateReplacement ID="gvrplEditors" runat="server" ReplacementType="EditFormEditors"
                                    Width="100%" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dx:ASPxValidationSummary ID="vlsumEditFormSummary" runat="server" ValidationGroup="EditForm">
                                </dx:ASPxValidationSummary>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:HyperLink ID="hplkUpdate" runat="server" Text="Update" OnInit="hplkUpdate_Init">
                                </asp:HyperLink>                                
                                <dx:ASPxGridViewTemplateReplacement ID="gvrplCancel" runat="server" ReplacementType="EditFormCancelButton" />
                            </td>
                        </tr>
                    </table>
                </EditForm>
            </Templates>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="dsEmployees" runat="server" DataFile="~/App_Data/nwind.mdb"
            DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = ?" InsertCommand="INSERT INTO [Employees] ([EmployeeID], [LastName], [FirstName], [Title], [BirthDate]) VALUES (?, ?, ?, ?, ?)"
            SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [BirthDate] FROM [Employees]"
            UpdateCommand="UPDATE [Employees] SET [LastName] = ?, [FirstName] = ?, [Title] = ?, [BirthDate] = ? WHERE [EmployeeID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="BirthDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="BirthDate" Type="DateTime" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
