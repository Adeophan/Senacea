Attribute VB_Name = "getDateLocalFormat"
Function getDateFormat() As String
    Dim dateFormat As String
    Dim datOrder As Integer
    Dim datSeparator As String
    
On Error GoTo err_handler:
    
    datOrder = Application.International(xlDateOrder)
    datSeparator = Application.International(xlDateSeparator)
    
    If datOrder = 0 Then
        dateFormat = "mm" & datSeparator & "dd" & datSeparator & "yyyy"
    ElseIf datOrder = 1 Then
        dateFormat = "dd" & datSeparator & "mm" & datSeparator & "yyyy"
    ElseIf datOrder = 2 Then
        dateFormat = "yyyy" & datSeparator & "mm" & datSeparator & "dd"
    End If
    
err_handler:
    If Err.Number <> 0 Then
        Err.Clear
    End If
    getDateFormat = dateFormat
End Function
