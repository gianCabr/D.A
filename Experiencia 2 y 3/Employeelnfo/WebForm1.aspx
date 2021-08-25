<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Employeelnfo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            font-family: Andalus;
            background-image: url('descarga.jpg');
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="nuevoEstilo1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Height="36px" Text="Desarrollo de Software" Width="630px"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
&nbsp;
            <asp:TextBox ID="Nombre" runat="server" Height="24px" Width="230px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Apellidos" runat="server" Text="Apellido"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="APELLido" runat="server" Height="24px" Width="230px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Codigo" runat="server" Text="Codigo"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="230px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rol&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Rol" runat="server" Width="230px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Posicion" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="Posición" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Posición_SelectedIndexChanged" OnTextChanged="RadioButtonList1_SelectedIndexChanged" RepeatLayout="Flow" Width="230px">
                <asp:ListItem Selected="True">Trabajador</asp:ListItem>
                <asp:ListItem Selected="True">Jefe</asp:ListItem>
                <asp:ListItem Selected="True">Vicepresidente</asp:ListItem>
                <asp:ListItem Selected="True">Presidente</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Grabar" runat="server" OnClick="Button2_Click" Text="Grabar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Limpiar" runat="server" OnClick="Button3_Click" Text="Limpiar " />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="InfoLabel" runat="server" Height="48px" Text="Label" Width="680px"></asp:Label>
        </div>
    </form>
</body>
</html>
