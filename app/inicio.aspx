<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Estacionamiento.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        Ingrese su Patente</p>
    <p>
    </p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPatente" ErrorMessage="Patente Requerida para Continuar"></asp:RequiredFieldValidator>
    <p>
        <asp:TextBox ID="txtPatente" runat="server" Height="98px" Width="297px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="62px" PostBackUrl="~/app/ingresar.aspx" Text="Ingresar" Width="125px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="62px" Text="Retirar" Width="131px" PostBackUrl="~/app/retirar.aspx" />
    </p>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server">Listados</asp:LinkButton>
    </p>
</asp:Content>
