<%@ Page Title="Ficha Catastral Urbana Individual" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FichaIndividual.aspx.cs" Inherits="catastro_final.Fichas.FichaIndividual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Cuc" DefaultMode="Insert" CssClass="form-horizontal">
        <EditItemTemplate>
            NumFicha:
            <asp:TextBox Text='<%# Bind("NumFicha") %>' runat="server" ID="NumFichaTextBox" /><br />
            NumFichasPorLote:
            <asp:TextBox Text='<%# Bind("NumFichasPorLote") %>' runat="server" ID="NumFichasPorLoteTextBox" /><br />
            NumFichasPorLoteMax:
            <asp:TextBox Text='<%# Bind("NumFichasPorLoteMax") %>' runat="server" ID="NumFichasPorLoteMaxTextBox" /><br />
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
            UserName:
            <asp:TextBox Text='<%# Bind("UserName") %>' runat="server" ID="UserNameTextBox" /><br />
            <asp:LinkButton runat="server" Text="Actualizar" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="container">
                <fieldset>
                    <legend>Ficha Catastral Urbana Individual</legend>
                    <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="NumFichaTextBox" CssClass="control-label col-md-2">Número de Ficha</asp:Label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" Text='<%# Bind("NumFicha") %>' runat="server" ID="NumFichaTextBox" MaxLength="7" placeholder="000000000"/>
                    </div>
                    <label for="FichasPorLote" class="control-label col-md-2">Fichas por Lote</label>
                    <div class="col-md-4" id="FichasPorLote">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <asp:TextBox CssClass="form-control" Text='<%# Bind("NumFichasPorLote") %>' runat="server" ID="NumFichasPorLoteTextBox" />
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <asp:TextBox CssClass="form-control" Text='<%# Bind("NumFichasPorLoteMax") %>' runat="server" ID="NumFichasPorLoteMaxTextBox" />
                        </div>
                    </div>
                    </div>
                        <hr />
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CucTextBox" CssClass="control-label col-md-2">CUC</asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox CssClass="form-control" Text='<%# Bind("Cuc") %>' runat="server" ID="CucTextBox" placeholder="CUC"/>
                        </div>
                        <asp:Label runat="server" AssociatedControlID="ChcTextBox" CssClass="control-label col-md-2">CHC</asp:Label>
                        <div class="col-md-4">
                             <asp:TextBox CssClass="form-control" Text='<%# Bind("Chc") %>' runat="server" ID="ChcTextBox" placeholder="CHC"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="CRC" class="control-label col-md-2">Código de Referencia Catastral</label>
                        <div class="col-md-10" id="CRC">
                            <div class="col-md-2">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("Ubigeo") %>' runat="server" ID="UbigeoTextBox" value="150120" ReadOnly="true" />
                            </div>
                            <div class="col-md-2">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("Sector") %>' runat="server" ID="SectorTextBox" placeholder="Sector" />
                            </div>
                            <div class="col-md-2">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("Manzana") %>' runat="server" ID="ManzanaTextBox" placeholder="Manzana"/>
                            </div>
                            <div class="col-md-1">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("Lote") %>' runat="server" ID="LoteTextBox" placeholder="Lote"/>
                            </div>
                            <div class="col-md-1">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("Edifica") %>' runat="server" ID="EdificaTextBox" placeholder="Edifica"/>
                            </div>
                            <div class="col-md-1">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("Entrada") %>' runat="server" ID="EntradaTextBox" placeholder="Entrada"/>
                            </div>
                            <div class="col-md-1">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("Piso") %>' runat="server" ID="PisoTextBox" placeholder="Piso"/>
                            </div>
                            <div class="col-md-1">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("Unidad") %>' runat="server" ID="UnidadTextBox" placeholder="Unidad"/>
                            </div>
                            <div class="col-md-1">
                                <asp:TextBox CssClass="form-control" Text='<%# Bind("DC") %>' runat="server" ID="DCTextBox" placeholder="DC"/>
                            </div>
                        </div>  
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CodContribuyenteTextBox" CssClass="control-label col-md-2">Cód. de Contribuyente</asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox CssClass="form-control" Text='<%# Bind("CodContribuyente") %>' runat="server" ID="CodContribuyenteTextBox" />
                        </div>
                        <asp:Label runat="server" AssociatedControlID="CodPredialTextBox" CssClass="control-label col-md-2">Cod. Predial de Rentas</asp:Label>
                        <div class="col-md-4">
                            <asp:TextBox CssClass="form-control" Text='<%# Bind("CodPredial") %>' runat="server" ID="CodPredialTextBox" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UnidadAcumuladaTextBox" CssClass="control-label col-md-2">Unidad Acumulada</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox CssClass="form-control" Text='<%# Bind("UnidadAcumulada") %>' runat="server" ID="UnidadAcumuladaTextBox" />
                        </div>
                    </div>
                                         
                </fieldset>
            
                <asp:TextBox Text='<%# Bind("UserName") %>' runat="server" ID="UserNameTextBox" visible="false"/>
            
                <asp:LinkButton runat="server" Text="Insertar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
            </div>
            
        </InsertItemTemplate>
        <ItemTemplate>
            NumFicha:
            <asp:Label Text='<%# Bind("NumFicha") %>' runat="server" ID="NumFichaLabel" /><br />
            NumFichasPorLote:
            <asp:Label Text='<%# Bind("NumFichasPorLote") %>' runat="server" ID="NumFichasPorLoteLabel" /><br />
            NumFichasPorLoteMax:
            <asp:Label Text='<%# Bind("NumFichasPorLoteMax") %>' runat="server" ID="NumFichasPorLoteMaxLabel" /><br />
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
            UserName:
            <asp:Label Text='<%# Bind("UserName") %>' runat="server" ID="UserNameLabel" /><br />
            <asp:LinkButton runat="server" Text="Editar" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Eliminar" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Nuevo" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' DeleteCommand="DELETE FROM [DatosGenerales] WHERE [Cuc] = @original_Cuc AND (([NumFicha] = @original_NumFicha) OR ([NumFicha] IS NULL AND @original_NumFicha IS NULL)) AND (([NumFichasPorLote] = @original_NumFichasPorLote) OR ([NumFichasPorLote] IS NULL AND @original_NumFichasPorLote IS NULL)) AND (([NumFichasPorLoteMax] = @original_NumFichasPorLoteMax) OR ([NumFichasPorLoteMax] IS NULL AND @original_NumFichasPorLoteMax IS NULL)) AND (([Chc] = @original_Chc) OR ([Chc] IS NULL AND @original_Chc IS NULL)) AND (([Ubigeo] = @original_Ubigeo) OR ([Ubigeo] IS NULL AND @original_Ubigeo IS NULL)) AND (([Sector] = @original_Sector) OR ([Sector] IS NULL AND @original_Sector IS NULL)) AND (([Manzana] = @original_Manzana) OR ([Manzana] IS NULL AND @original_Manzana IS NULL)) AND (([Lote] = @original_Lote) OR ([Lote] IS NULL AND @original_Lote IS NULL)) AND (([Edifica] = @original_Edifica) OR ([Edifica] IS NULL AND @original_Edifica IS NULL)) AND (([Entrada] = @original_Entrada) OR ([Entrada] IS NULL AND @original_Entrada IS NULL)) AND (([Piso] = @original_Piso) OR ([Piso] IS NULL AND @original_Piso IS NULL)) AND (([Unidad] = @original_Unidad) OR ([Unidad] IS NULL AND @original_Unidad IS NULL)) AND (([DC] = @original_DC) OR ([DC] IS NULL AND @original_DC IS NULL)) AND (([CodContribuyente] = @original_CodContribuyente) OR ([CodContribuyente] IS NULL AND @original_CodContribuyente IS NULL)) AND (([CodPredial] = @original_CodPredial) OR ([CodPredial] IS NULL AND @original_CodPredial IS NULL)) AND (([UnidadAcumulada] = @original_UnidadAcumulada) OR ([UnidadAcumulada] IS NULL AND @original_UnidadAcumulada IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))" InsertCommand="INSERT INTO [DatosGenerales] ([NumFicha], [NumFichasPorLote], [NumFichasPorLoteMax], [Cuc], [Chc], [Ubigeo], [Sector], [Manzana], [Lote], [Edifica], [Entrada], [Piso], [Unidad], [DC], [CodContribuyente], [CodPredial], [UnidadAcumulada], [UserName]) VALUES (@NumFicha, @NumFichasPorLote, @NumFichasPorLoteMax, @Cuc, @Chc, @Ubigeo, @Sector, @Manzana, @Lote, @Edifica, @Entrada, @Piso, @Unidad, @DC, @CodContribuyente, @CodPredial, @UnidadAcumulada, @UserName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DatosGenerales]" UpdateCommand="UPDATE [DatosGenerales] SET [NumFicha] = @NumFicha, [NumFichasPorLote] = @NumFichasPorLote, [NumFichasPorLoteMax] = @NumFichasPorLoteMax, [Chc] = @Chc, [Ubigeo] = @Ubigeo, [Sector] = @Sector, [Manzana] = @Manzana, [Lote] = @Lote, [Edifica] = @Edifica, [Entrada] = @Entrada, [Piso] = @Piso, [Unidad] = @Unidad, [DC] = @DC, [CodContribuyente] = @CodContribuyente, [CodPredial] = @CodPredial, [UnidadAcumulada] = @UnidadAcumulada, [UserName] = @UserName WHERE [Cuc] = @original_Cuc AND (([NumFicha] = @original_NumFicha) OR ([NumFicha] IS NULL AND @original_NumFicha IS NULL)) AND (([NumFichasPorLote] = @original_NumFichasPorLote) OR ([NumFichasPorLote] IS NULL AND @original_NumFichasPorLote IS NULL)) AND (([NumFichasPorLoteMax] = @original_NumFichasPorLoteMax) OR ([NumFichasPorLoteMax] IS NULL AND @original_NumFichasPorLoteMax IS NULL)) AND (([Chc] = @original_Chc) OR ([Chc] IS NULL AND @original_Chc IS NULL)) AND (([Ubigeo] = @original_Ubigeo) OR ([Ubigeo] IS NULL AND @original_Ubigeo IS NULL)) AND (([Sector] = @original_Sector) OR ([Sector] IS NULL AND @original_Sector IS NULL)) AND (([Manzana] = @original_Manzana) OR ([Manzana] IS NULL AND @original_Manzana IS NULL)) AND (([Lote] = @original_Lote) OR ([Lote] IS NULL AND @original_Lote IS NULL)) AND (([Edifica] = @original_Edifica) OR ([Edifica] IS NULL AND @original_Edifica IS NULL)) AND (([Entrada] = @original_Entrada) OR ([Entrada] IS NULL AND @original_Entrada IS NULL)) AND (([Piso] = @original_Piso) OR ([Piso] IS NULL AND @original_Piso IS NULL)) AND (([Unidad] = @original_Unidad) OR ([Unidad] IS NULL AND @original_Unidad IS NULL)) AND (([DC] = @original_DC) OR ([DC] IS NULL AND @original_DC IS NULL)) AND (([CodContribuyente] = @original_CodContribuyente) OR ([CodContribuyente] IS NULL AND @original_CodContribuyente IS NULL)) AND (([CodPredial] = @original_CodPredial) OR ([CodPredial] IS NULL AND @original_CodPredial IS NULL)) AND (([UnidadAcumulada] = @original_UnidadAcumulada) OR ([UnidadAcumulada] IS NULL AND @original_UnidadAcumulada IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Cuc" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_NumFicha" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_NumFichasPorLote" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_NumFichasPorLoteMax" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Chc" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Ubigeo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Sector" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Manzana" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Lote" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Edifica" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Entrada" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Piso" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Unidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DC" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_CodContribuyente" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_CodPredial" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_UnidadAcumulada" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_UserName" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NumFicha" Type="String"></asp:Parameter>
            <asp:Parameter Name="NumFichasPorLote" Type="String"></asp:Parameter>
            <asp:Parameter Name="NumFichasPorLoteMax" Type="String"></asp:Parameter>
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
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NumFicha" Type="String"></asp:Parameter>
            <asp:Parameter Name="NumFichasPorLote" Type="String"></asp:Parameter>
            <asp:Parameter Name="NumFichasPorLoteMax" Type="String"></asp:Parameter>
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
            <asp:Parameter Name="UserName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Cuc" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_NumFicha" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_NumFichasPorLote" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_NumFichasPorLoteMax" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Chc" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Ubigeo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Sector" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Manzana" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Lote" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Edifica" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Entrada" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Piso" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Unidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DC" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_CodContribuyente" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_CodPredial" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_UnidadAcumulada" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_UserName" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
