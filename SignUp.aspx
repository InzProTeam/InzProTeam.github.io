<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="InzProWeb.SignUp" %>
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
                                    <h3>Zarejestruj się</h3> 
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
                                    <asp:TextBox CssClass="form-control" ID="TextBoxUserIDUp" runat="server" placeholder="Nazwa użytkownika"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUser" runat="server" Display="Dynamic"
                                                                ControlToValidate="TextBoxUserIDUp" ErrorMessage="To pole nie może być puste."></asp:RequiredFieldValidator>
                                </div>

                                <label>Hasło</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxPasswordUp" runat="server" placeholder="Hasło" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidatorPassword" runat="server" Display="Dynamic" 
                                                          ControlToCompare="TextBoxPasswordUp" ControlToValidate="TextBoxConfirmPasswordUp" 
                                                          ErrorMessage="Hasła do siebie nie pasują."></asp:CompareValidator>
                                   
                                </div>

                                <label>Potwierdź hasło</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxConfirmPasswordUp" runat="server" placeholder="Potwierdź hasło" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" Display="Dynamic"
                                                                ControlToValidate="TextBoxConfirmPasswordUp" ErrorMessage="To pole nie może być puste."></asp:RequiredFieldValidator>
                                  
                               
                                </div>

                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxEmailUp" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" Display="Dynamic"
                                                                ControlToValidate="TextBoxEmailUp" ErrorMessage="To pole nie może być puste."></asp:RequiredFieldValidator>
                                </div>

                                <label>Data urodzenia</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxDate" runat="server" placeholder="Wprowadź date" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorBirthday" runat="server" Display="Dynamic"
                                                                ControlToValidate="TextBoxDate" ErrorMessage="To pole nie może być puste."></asp:RequiredFieldValidator>
                                </div>

                                <div class="form-group">
                                    <asp:Button  class="btn btn-success btn-block btn-lg" ID="ButtonSignUp" runat="server" Text="Zarejestruj się" OnClick="ButtonSignUp_Click"/>

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
