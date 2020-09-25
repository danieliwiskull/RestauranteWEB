
Partial Class Mensajes
    Inherits System.Web.UI.UserControl
    Dim _mensajepopup As Boolean = False
    Dim _tipo_mensaje As Tipo_Mensaje = Tipo_Mensaje.MensajeError
    ' Public Event ItemSelected(ByVal sender As Object, ByVal e As EventArgs)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Visible = False
        If Page.IsPostBack Then
            Me.lbl_mensaje.Text = ""
        Else
            MensajePopup = _mensajepopup
            TipoMensaje = _tipo_mensaje
        End If
        If Not _mensajepopup Then
            If lbl_mensaje.Text.Trim <> "" Then
                Me.Visible = True
            End If
        End If
    End Sub

    Public Property Mensaje() As String
        Get
            Mensaje = lbl_mensaje.Text
        End Get
        Set(ByVal value As String)
            lbl_mensaje.Text = value
        End Set
    End Property

    Public Sub MuestraMsg(ByVal msg As String, Optional ByVal TipoMensaje As Tipo_Mensaje = Tipo_Mensaje.MensajeError)
        If _mensajepopup Then
            'ScriptManager.RegisterStartupScript(me.Page(
        Else
            lbl_mensaje.Text = msg
            lbl_mensaje.Visible = True
            Me.Visible = True

            Select Case TipoMensaje
                Case Tipo_Mensaje.MensajeAlerta
                    Me.lbl_mensaje.CssClass = "messageInf"
                Case Tipo_Mensaje.MensajeError
                    Me.lbl_mensaje.CssClass = "messageErr"
                Case Tipo_Mensaje.MensajeOK
                    Me.lbl_mensaje.CssClass = "messageOk"
            End Select


        End If
    End Sub

    Public Sub MuestraMsg(Optional ByVal TipoMensaje As Tipo_Mensaje = Tipo_Mensaje.MensajeError)
        If _mensajepopup Then
        Else
            Me.Visible = True
            lbl_mensaje.Visible = True
        End If
    End Sub

    Public Property MensajePopup() As Boolean
        Get
            Return _mensajepopup
        End Get
        Set(ByVal value As Boolean)
            _mensajepopup = value
        End Set
    End Property

    Public Property TipoMensaje() As Tipo_Mensaje
        Get
            Return _tipo_mensaje
        End Get
        Set(ByVal value As Tipo_Mensaje)
            _tipo_mensaje = value
            Select Case _tipo_mensaje
                Case Tipo_Mensaje.MensajeAlerta
                    Me.lbl_mensaje.CssClass = "messageInf"
                Case Tipo_Mensaje.MensajeError
                    Me.lbl_mensaje.CssClass = "messageErr"
                Case Tipo_Mensaje.MensajeOK
                    Me.lbl_mensaje.CssClass = "messageOk"
            End Select
        End Set
    End Property

    Public Enum Tipo_Mensaje As Integer
        MensajeError = 1
        MensajeOK = 2
        MensajeAlerta = 3
    End Enum
End Class
