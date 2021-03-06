﻿<%@ Page Title="Logowanie" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="InzProWeb.userlogin" %>
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
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Nazwa użytkownika</h3> 
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
                                <label>Nazwa użytkownika</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxUsernameIn" runat="server" placeholder="Nazwa użytkownika"></asp:TextBox>
                                    <small>
                                        <asp:CustomValidator ID="CustomValidatorUserLogin" runat="server" Display="Dynamic" ForeColor="red" ErrorMessage="Niepoprawna nazwa lub hasło użytkownika" OnServerValidate="CustomValidatorUserLogin_ServerValidate"></asp:CustomValidator>
                                    </small>
                                </div>

                                <label>Hasło</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxPasswordIn" runat="server" placeholder="Hasło" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button  class="btn btn-info btn-block btn-lg" ID="ButtonSingIn" runat="server" Text="Zaloguj się" OnClick="ButtonSingIn_Click"></asp:Button>
                                </div>

                                <div class="form-group">
                                   
                                    <asp:Button   class="btn btn-secondary btn-block btn-lg" ID="ButtonSingUpIn" runat="server" Text="Zarejestruj się" OnClick="ButtonSingUpIn_Click"></asp:Button>
                                   
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="HomePage.aspx"><< Wróć do strony głównej</a><br />

            </div>

        </div>
    </div>


</asp:Content>
