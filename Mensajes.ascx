<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Mensajes.ascx.vb" Inherits="Mensajes" %>
<style type="text/css">
.messageErr {
    background: url(images/msg_err.gif);
    background-position: center left;
    background-repeat: no-repeat;
    text-align: center;
    font-size: 11px;
    font-weight: bold;
  
    background-color: #FFF4F4;
    border-color: #FFD2D2;
    color: #FF0000;
    
    border-width: 1px;
    border-style: solid;
    padding-top: 7px;
    padding-bottom: 7px;
    padding-left:10px;
    padding-right: 7px;
    display: block;
    clear: both; 
    
    margin: 0px  auto 0px auto;
    margin-top:5px;
    
}

.messageOk {

    background: url(images/msg_ok.gif);
    background-position: center left;
    background-repeat: no-repeat;
    text-align: center;
    font-size: 11px;
    font-weight: bold;
  
    background-color: #F5FFF0;
    border-color: #00D200;
    color: #004A00;
    
    border-width: 1px;
    border-style: solid;
    padding-top: 7px;
    padding-bottom: 7px;
    padding-left:10px;
    padding-right: 7px;
    display: block;
    clear: both; 
    
    /*width : 100%;*/
    margin: 0px  auto 0px auto;
    margin-top:5px;
    
    
}

.messageInf {
    background: url(images/msg_inf.gif); 
    background-position: center left;
    background-repeat: no-repeat;
    text-align: center;
    font-size: 11px;
    font-weight: bold;
  
    background-color: #FFFFF0;
    border-color: #ECEC00;
    color: #484800;
    
    border-width: 1px;
    border-style: solid;
    padding-top: 7px;
    padding-bottom: 7px;
    padding-left:10px;
    padding-right: 7px;
    display: block;
    clear: both; 
 
 
    margin: 0px  auto 0px auto;
    margin-top:5px;
 
}

.label_error{
  text-align: center;
  font-size: 11px;
  font-weight: bold;
  background-color: #FFF4F4;
  border-color: #FFD2D2;
  border-width: 1px;
  border-style: solid;
  padding-top: 7px;
  padding-bottom: 7px;
  color: #FF0000;
}
</style>
<asp:Label ID="lbl_mensaje" runat="server" Class="messageOk" Visible="False"></asp:Label>
