Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub

	Protected Sub btAction_Click(ByVal sender As Object, ByVal e As EventArgs)
		Label1.Text = "PostBack"
	End Sub
End Class