Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web.UI.WebControls
Imports DevExpress.Web
Imports DevExpress.Web.Data

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub hplkUpdate_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim hyperLink As HyperLink = TryCast(sender, HyperLink)
		Dim container As GridViewEditFormTemplateContainer = TryCast(hyperLink.NamingContainer, GridViewEditFormTemplateContainer)
		hyperLink.NavigateUrl = String.Format("javascript:hplkUpdate_Click({0})", container.Grid.ClientInstanceName)
	End Sub

	Protected Sub gvEmployees_RowValidating(ByVal sender As Object, ByVal e As ASPxDataValidationEventArgs)
		Dim gridView As ASPxGridView = TryCast(sender, ASPxGridView)

		If e.NewValues("LastName").ToString() = e.OldValues("LastName").ToString() Then
			e.Errors(gridView.Columns("LastName")) = "Last Name value has not been changed!"
			e.RowError = "Server-side validation fails!"
		End If
	End Sub

	Protected Sub gvEmployees_RowUpdating(ByVal sender As Object, ByVal e As ASPxDataUpdatingEventArgs)
		Dim gridView As ASPxGridView = TryCast(sender, ASPxGridView)

		'Comment a line below to allow updating
		e.Cancel = True
		gridView.CancelEdit()
	End Sub
End Class
