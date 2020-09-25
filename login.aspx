<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h5>Este es el login</h5>

                <asp:Login ID="Login1" runat="server" BackColor="White" BorderColor="#FF8080"
        BorderPadding="4" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Font-Names="Comic Sans MS"
        Font-Size="Medium" ForeColor="#FF8080" Height="194px" OnAuthenticate="Login1_Authenticate">
        <TitleTextStyle BackColor="#FF8080" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <TextBoxStyle Font-Size="0.8em" />
        <LoginButtonStyle BackColor="#FF8080" BorderColor="White" BorderStyle="Solid" BorderWidth="1px"
            Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="White" />
    </asp:Login>

        </div>
    </form>
</body>
</html>
