<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Facial.aspx.cs" Inherits="WebApp.Facial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="container">
                    <div class="row">
                        <asp:Image ID="Image1" runat="server" ImageUrl="images/Prueba.jpg" class="img-thumbnail" alt="Responsive image" ClientIDMode="Static"/>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <input type="button" ID="btnCamara1" value="Cámara" />
                        </div>
                        <div class="col-sm-6">
                            <asp:FileUpload ID="btnSubirArchivo1" runat="server" />
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" class="btn btn-secondary btn-sm active" />
                        <!--
                        <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-primary btn-sm active"/>
                        -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4">
                            <asp:Label ID="LabelCalidad1" runat="server" Text="Calidad: " class="badge badge-primary"></asp:Label>
                            <asp:TextBox ID="TextCalidad1" runat="server" Enabled="False" class="alert alert-secondary"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                        </div>
                    </div>
                </div>
                <asp:Label ID="NombreImagen1" runat="server" Text="Label" Visible="False"/>
            </div>
            <div class="col-sm-4">
                <div class="container">
                    <div class="row">
                        <div id="my_camera"></div><br/>
                        <input type=button value="Take Snapshot" class="btn btn-primary pull-right" onClick="take_snapshot()">
                        <input type="hidden" name="image" class="image-tag">
                    </div>
                    <div class="row">
                        <asp:Button ID="btnCaptura" runat="server" Text="Capturar" />
                    </div>
                 </div>
            </div>
            <div class="col-sm-4">
                <div class="container">
                    <div class="row">
                        <asp:Image ID="Image2" runat="server" ImageUrl="images/Prueba.jpg" class="img-thumbnail" alt="Responsive image"/>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">                
                            <asp:Button ID="btnCamara2" runat="server" Text="Cámara" />
                        </div>
                        <div class="col-sm-6">
                            <!--<asp:FileUpload ID="btnSubirArchivo2" runat="server" />-->
                            <asp:Button ID="btnUpload2" runat="server" Text="Upload" OnClick="btnUpload2_Click" class="btn btn-secondary btn-sm active" />

                            <asp:FileUpload ID="FileUpload2" runat="server" class="btn btn-primary btn-sm active" />
                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-4">                
                            <asp:Label ID="LabelCalidad2" runat="server" Text="Calidad: " class="badge badge-primary"></asp:Label>
                            <asp:TextBox ID="TextCalidad2" runat="server" Enabled="False" class="alert alert-secondary"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                        </div>
                    </div>
                <asp:Label ID="NombreImagen2" runat="server" Text="Label" Visible="False"/>
                </div>
            </div>
        </div>
    </div>
    <div class="container">        
        <div class="row">
            <div class="col-sm-1">
                <asp:Label ID="Label1" runat="server" Text="Resultado:" class="badge badge-primary"></asp:Label>
                <asp:TextBox ID="Resultado" runat="server" Enabled="False" class="alert alert-secondary"></asp:TextBox>
            </div>
        </div>
    </div>

</asp:Content>
