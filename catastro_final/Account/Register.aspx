﻿<%@ Page Title="Crear un nuevo usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="catastro_final.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Crear un nuevo usuario</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Username" CssClass="col-md-2 control-label">Usuario</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Username" CssClass="form-control" placeholder="Usuario" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Username"
                    CssClass="text-danger" ErrorMessage="El campo de nombre de usuario es obligatorio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Names" CssClass="col-md-2 control-label">Nombres</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Names" CssClass="form-control" placeholder="Nombres"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Names"
                    CssClass="text-danger" ErrorMessage="El campo de Nombres es obligatorio." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Names" CssClass="col-md-2 control-label">Apellido Paterno</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="ApePat" CssClass="form-control" placeholder="Apellido Paterno" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ApePat"
                    CssClass="text-danger" ErrorMessage="El campo de Apellido es obligatorio." />
            </div>
            <asp:Label runat="server" AssociatedControlID="Names" CssClass="col-md-2 control-label">Apellido Materno</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="ApeMat" CssClass="form-control" placeholder="Apellido Materno" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Correo electrónico</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" placeholder="Email"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="El campo de correo electrónico es obligatorio." />
            </div>
            <asp:Label runat="server" AssociatedControlID="Role" CssClass="col-md-2 control-label">Rol</asp:Label>
            <div class="col-md-4">
                <asp:DropDownList runat="server" ID="Role" CssClass="form-control">
                    <asp:ListItem Text="Administrador" Value="Administrador"></asp:ListItem>
                    <asp:ListItem Text="Digitador" Value="Digitador"></asp:ListItem>
                    <asp:ListItem Text="Tecnico" Value="Tecnico"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Contraseña</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" placeholder="Contraseña" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="El campo de contraseña es obligatorio." />
            </div>
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirmar contraseña</asp:Label>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" placeholder="Confirmar contraseña" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="El campo de confirmación de contraseña es obligatorio." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="La contraseña y la contraseña de confirmación no coinciden." />
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Registrarse" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
