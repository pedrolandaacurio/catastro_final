<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaIndividual.aspx.cs" Inherits="catastro_final.Fichas.FichaIndividual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Cuc" DataSourceID="SqlDataSource1" DefaultMode="Insert" CssClass="form-horizontal" >
        <EditItemTemplate>
            Id:
            <asp:TextBox Text='<%# Bind("Id") %>' runat="server" ID="IdTextBox" /><br />
            UserName:
            <asp:TextBox Text='<%# Bind("UserName") %>' runat="server" ID="UserNameTextBox" /><br />
            NumFicha:
            <asp:TextBox Text='<%# Bind("NumFicha") %>' runat="server" ID="NumFichaTextBox" /><br />
            FichasPorLote:
            <asp:TextBox Text='<%# Bind("FichasPorLote") %>' runat="server" ID="FichasPorLoteTextBox" /><br />
            MaxFichasPorLote:
            <asp:TextBox Text='<%# Bind("MaxFichasPorLote") %>' runat="server" ID="MaxFichasPorLoteTextBox" /><br />
            Cuc:
            <asp:Label Text='<%# Eval("Cuc") %>' runat="server" ID="CucLabel1" /><br />
            Chc:
            <asp:TextBox Text='<%# Bind("Chc") %>' runat="server" ID="ChcTextBox" /><br />
            Ubigeo:
            <asp:TextBox Text='<%# Bind("Ubigeo") %>' runat="server" ID="UbigeoTextBox" /><br />
            Sector:
            <asp:TextBox Text='<%# Bind("Sector") %>' runat="server" ID="SectorTextBox" /><br />
            Manzana:
            <asp:TextBox Text='<%# Bind("Manzana") %>' runat="server" ID="ManzanaTextBox" /><br />
            Lote:
            <asp:TextBox Text='<%# Bind("Lote") %>' runat="server" ID="LoteTextBox" /><br />
            Edifica:
            <asp:TextBox Text='<%# Bind("Edifica") %>' runat="server" ID="EdificaTextBox" /><br />
            Entrada:
            <asp:TextBox Text='<%# Bind("Entrada") %>' runat="server" ID="EntradaTextBox" /><br />
            Piso:
            <asp:TextBox Text='<%# Bind("Piso") %>' runat="server" ID="PisoTextBox" /><br />
            Unidad:
            <asp:TextBox Text='<%# Bind("Unidad") %>' runat="server" ID="UnidadTextBox" /><br />
            DC:
            <asp:TextBox Text='<%# Bind("DC") %>' runat="server" ID="DCTextBox" /><br />
            CodContribuyente:
            <asp:TextBox Text='<%# Bind("CodContribuyente") %>' runat="server" ID="CodContribuyenteTextBox" /><br />
            CodPredial:
            <asp:TextBox Text='<%# Bind("CodPredial") %>' runat="server" ID="CodPredialTextBox" /><br />
            UnidadAcumulada:
            <asp:TextBox Text='<%# Bind("UnidadAcumulada") %>' runat="server" ID="UnidadAcumuladaTextBox" /><br />
            <asp:LinkButton runat="server" Text="Actualizar" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <!--Ocultas-->
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Id") %>' runat="server" ID="IdTextBox" visible="false"/>
            <asp:TextBox CssClass="form-control" Text='<%# Bind("UserName") %>' runat="server" ID="UserNameTextBox" ReadOnly="True" visible="false" />
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="NumFichaTextBox" CssClass="col-md-2 control-label">Nº de Ficha</asp:Label>
                <div class="col-md-4">
                    <asp:TextBox CssClass="form-control" Text='<%# Bind("NumFicha") %>' runat="server" ID="NumFichaTextBox" />
                </div>
            </div>                    
            <asp:TextBox CssClass="form-control" Text='<%# Bind("FichasPorLote") %>' runat="server" ID="FichasPorLoteTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("MaxFichasPorLote") %>' runat="server" ID="MaxFichasPorLoteTextBox" />

            
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Cuc") %>' runat="server" ID="CucTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Chc") %>' runat="server" ID="ChcTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Ubigeo") %>' runat="server" ID="UbigeoTextBox" value="150120" ReadOnly="True" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Sector") %>' runat="server" ID="SectorTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Manzana") %>' runat="server" ID="ManzanaTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Lote") %>' runat="server" ID="LoteTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Edifica") %>' runat="server" ID="EdificaTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Entrada") %>' runat="server" ID="EntradaTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Piso") %>' runat="server" ID="PisoTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("Unidad") %>' runat="server" ID="UnidadTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("DC") %>' runat="server" ID="DCTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("CodContribuyente") %>' runat="server" ID="CodContribuyenteTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("CodPredial") %>' runat="server" ID="CodPredialTextBox" />
            <asp:TextBox CssClass="form-control" Text='<%# Bind("UnidadAcumulada") %>' runat="server" ID="UnidadAcumuladaTextBox" />
            <asp:LinkButton runat="server" Text="Insertar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label Text='<%# Bind("Id") %>' runat="server" ID="IdLabel" /><br />
            UserName:
            <asp:Label Text='<%# Bind("UserName") %>' runat="server" ID="UserNameLabel" /><br />
            NumFicha:
            <asp:Label Text='<%# Bind("NumFicha") %>' runat="server" ID="NumFichaLabel" /><br />
            FichasPorLote:
            <asp:Label Text='<%# Bind("FichasPorLote") %>' runat="server" ID="FichasPorLoteLabel" /><br />
            MaxFichasPorLote:
            <asp:Label Text='<%# Bind("MaxFichasPorLote") %>' runat="server" ID="MaxFichasPorLoteLabel" /><br />
            Cuc:
            <asp:Label Text='<%# Eval("Cuc") %>' runat="server" ID="CucLabel" /><br />
            Chc:
            <asp:Label Text='<%# Bind("Chc") %>' runat="server" ID="ChcLabel" /><br />
            Ubigeo:
            <asp:Label Text='<%# Bind("Ubigeo") %>' runat="server" ID="UbigeoLabel" /><br />
            Sector:
            <asp:Label Text='<%# Bind("Sector") %>' runat="server" ID="SectorLabel" /><br />
            Manzana:
            <asp:Label Text='<%# Bind("Manzana") %>' runat="server" ID="ManzanaLabel" /><br />
            Lote:
            <asp:Label Text='<%# Bind("Lote") %>' runat="server" ID="LoteLabel" /><br />
            Edifica:
            <asp:Label Text='<%# Bind("Edifica") %>' runat="server" ID="EdificaLabel" /><br />
            Entrada:
            <asp:Label Text='<%# Bind("Entrada") %>' runat="server" ID="EntradaLabel" /><br />
            Piso:
            <asp:Label Text='<%# Bind("Piso") %>' runat="server" ID="PisoLabel" /><br />
            Unidad:
            <asp:Label Text='<%# Bind("Unidad") %>' runat="server" ID="UnidadLabel" /><br />
            DC:
            <asp:Label Text='<%# Bind("DC") %>' runat="server" ID="DCLabel" /><br />
            CodContribuyente:
            <asp:Label Text='<%# Bind("CodContribuyente") %>' runat="server" ID="CodContribuyenteLabel" /><br />
            CodPredial:
            <asp:Label Text='<%# Bind("CodPredial") %>' runat="server" ID="CodPredialLabel" /><br />
            UnidadAcumulada:
            <asp:Label Text='<%# Bind("UnidadAcumulada") %>' runat="server" ID="UnidadAcumuladaLabel" /><br />
            <asp:LinkButton runat="server" Text="Editar" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Eliminar" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Nuevo" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' DeleteCommand="DELETE FROM [DatosGenerales] WHERE [Cuc] = @Cuc" InsertCommand="INSERT INTO [DatosGenerales] ([Id], [UserName], [NumFicha], [FichasPorLote], [MaxFichasPorLote], [Cuc], [Chc], [Ubigeo], [Sector], [Manzana], [Lote], [Edifica], [Entrada], [Piso], [Unidad], [DC], [CodContribuyente], [CodPredial], [UnidadAcumulada]) VALUES (@Id, @UserName, @NumFicha, @FichasPorLote, @MaxFichasPorLote, @Cuc, @Chc, @Ubigeo, @Sector, @Manzana, @Lote, @Edifica, @Entrada, @Piso, @Unidad, @DC, @CodContribuyente, @CodPredial, @UnidadAcumulada)" SelectCommand="SELECT * FROM [DatosGenerales]" UpdateCommand="UPDATE [DatosGenerales] SET [Id] = @Id, [UserName] = @UserName, [NumFicha] = @NumFicha, [FichasPorLote] = @FichasPorLote, [MaxFichasPorLote] = @MaxFichasPorLote, [Chc] = @Chc, [Ubigeo] = @Ubigeo, [Sector] = @Sector, [Manzana] = @Manzana, [Lote] = @Lote, [Edifica] = @Edifica, [Entrada] = @Entrada, [Piso] = @Piso, [Unidad] = @Unidad, [DC] = @DC, [CodContribuyente] = @CodContribuyente, [CodPredial] = @CodPredial, [UnidadAcumulada] = @UnidadAcumulada WHERE [Cuc] = @Cuc">
        <DeleteParameters>
            <asp:Parameter Name="Cuc" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="NumFicha" Type="String"></asp:Parameter>
            <asp:Parameter Name="FichasPorLote" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="MaxFichasPorLote" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Cuc" Type="String"></asp:Parameter>
            <asp:Parameter Name="Chc" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ubigeo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Sector" Type="String"></asp:Parameter>
            <asp:Parameter Name="Manzana" Type="String"></asp:Parameter>
            <asp:Parameter Name="Lote" Type="String"></asp:Parameter>
            <asp:Parameter Name="Edifica" Type="String"></asp:Parameter>
            <asp:Parameter Name="Entrada" Type="String"></asp:Parameter>
            <asp:Parameter Name="Piso" Type="String"></asp:Parameter>
            <asp:Parameter Name="Unidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="DC" Type="String"></asp:Parameter>
            <asp:Parameter Name="CodContribuyente" Type="String"></asp:Parameter>
            <asp:Parameter Name="CodPredial" Type="String"></asp:Parameter>
            <asp:Parameter Name="UnidadAcumulada" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="NumFicha" Type="String"></asp:Parameter>
            <asp:Parameter Name="FichasPorLote" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="MaxFichasPorLote" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Chc" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ubigeo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Sector" Type="String"></asp:Parameter>
            <asp:Parameter Name="Manzana" Type="String"></asp:Parameter>
            <asp:Parameter Name="Lote" Type="String"></asp:Parameter>
            <asp:Parameter Name="Edifica" Type="String"></asp:Parameter>
            <asp:Parameter Name="Entrada" Type="String"></asp:Parameter>
            <asp:Parameter Name="Piso" Type="String"></asp:Parameter>
            <asp:Parameter Name="Unidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="DC" Type="String"></asp:Parameter>
            <asp:Parameter Name="CodContribuyente" Type="String"></asp:Parameter>
            <asp:Parameter Name="CodPredial" Type="String"></asp:Parameter>
            <asp:Parameter Name="UnidadAcumulada" Type="String"></asp:Parameter>
            <asp:Parameter Name="Cuc" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
