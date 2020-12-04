<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="InzProWeb.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto m-3">
                
                <div class="card badge-light">
                    <div class="card-body m-1 <%--badge-info--%>">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/adminuser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Nazwa admina</h3> 
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <label>Nazwa admina</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxAdminNameIn" runat="server" placeholder="Nazwa admina"></asp:TextBox>
                                </div>

                                <label>Hasło</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxPasswordAdminIn" runat="server" placeholder="Hasło" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button  class="btn btn-info btn-block btn-lg" ID="ButtonSingInAdmin" runat="server" Text="Zaloguj się" OnClick="ButtonSingInAdmin_Click"></asp:Button>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <a href="#"><< Wróć do strony głównej</a><br />

            </div>

        </div>
    </div>

</asp:Content>
