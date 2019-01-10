Imports System.Web.Services

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    <WebMethod()>
    Public Shared Function GetCurrentTime(ByVal name As String) As String
        Return "Hello " & name & Environment.NewLine & "The Current Time is: " & DateTime.Now.ToString
    End Function


End Class