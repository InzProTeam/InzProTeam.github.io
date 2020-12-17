<%@ Page Title="Rejestracja" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="InzProWeb.SignUp" %>

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
                                    <div>
                                        <small>
                                            <asp:CustomValidator ID="CustomValidatorProhibitedSigns" runat="server" Display="Dynamic" ControlToValidate="TextBoxUserIDUp" ForeColor="red" ErrorMessage="Niedozwolony znak ~ ` - _ = + { } [ ] : ; ' &quot; , . < > / ? | \ " ClientValidationFunction="IfProhibitedSigns" OnServerValidate="CustomValidatorProhibitedSigns_ServerValidate"></asp:CustomValidator>
                                        </small>
                                    </div>
                                    <small>
                                        <asp:CustomValidator ID="CustomValidatorUserLength" runat="server" Display="Dynamic" ControlToValidate="TextBoxUserIDUp" ForeColor="red" ErrorMessage="Nazwa użytkownika powinna mieć długość 3-40 znaków" OnServerValidate="CustomValidatorUserLength_ServerValidate" ClientValidationFunction="UsernameLength"></asp:CustomValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUser" runat="server" Display="Dynamic" ControlToValidate="TextBoxUserIDUp" ForeColor="red" ErrorMessage="To pole nie może być puste"></asp:RequiredFieldValidator>
                                        <asp:CustomValidator ID="CustomValidatorTest" runat="server" Display="Dynamic" ForeColor="red" ControlToValidate="TextBoxUserIDUp" ErrorMessage="Użytkownik o takiej nazwie już istnieje" OnServerValidate="CustomValidatorTest_ServerValidate"></asp:CustomValidator>
                                    </small>
                                </div>

                                <label>Hasło</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxPasswordUp" runat="server" placeholder="Hasło" TextMode="Password"></asp:TextBox>

                                    <div>
                                        <small>
                                            <asp:CustomValidator ID="CustomValidatorProhibitedSigns2" runat="server" Display="Dynamic" ControlToValidate="TextBoxPasswordUp" ForeColor="red" ErrorMessage="Niedozwolony znak ~ ` - _ = + { } [ ] : ; ' &quot; , . < > / ? | \ " ClientValidationFunction="IfProhibitedSigns" OnServerValidate="CustomValidatorProhibitedSigns2_ServerValidate"></asp:CustomValidator>
                                        </small>
                                    </div>
                                  
                                    <div>
                                        <small>
                                            <asp:CustomValidator ID="CustomValidatorPasswordLength" ControlToValidate="TextBoxPasswordUp" Display="Dynamic" ForeColor="red" runat="server" ErrorMessage="Hasło powino mieć długość od 8 - 30 znaków" ClientValidationFunction="PasswordLength" OnServerValidate="CustomValidatorPasswordLength_ServerValidate"></asp:CustomValidator>
                                        </small>
                                    </div>
                                    <div>
                                        <small>
                                            <asp:CustomValidator ID="CustomValidatorPasswordUpperCase" runat="server" ControlToValidate="TextBoxPasswordUp" Display="Dynamic" ForeColor="red" ErrorMessage="Hasło musi mieć przynajmniej jeden wielki znak" ClientValidationFunction="IfUpperCase" OnServerValidate="CustomValidatorPasswordUpperCase_ServerValidate"></asp:CustomValidator>
                                        </small>
                                    </div>
                                    <div>
                                        <small>
                                            <asp:CustomValidator ID="CustomValidatorPasswordSpecial" runat="server" ControlToValidate="TextBoxPasswordUp" Display="Dynamic" ForeColor="red" ErrorMessage="Hasło musi mieć przynajmniej jeden znak specialny !@#$%^&*()" ClientValidationFunction="IfSpecial" OnServerValidate="CustomValidatorPasswordSpecial_ServerValidate"></asp:CustomValidator>
                                        </small>
                                    </div>
                                </div>

                                <label>Potwierdź hasło</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxConfirmPasswordUp" runat="server" placeholder="Potwierdź hasło" TextMode="Password"></asp:TextBox>
                                    <div>
                                        <small>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" Display="Dynamic" ForeColor="red" ControlToValidate="TextBoxConfirmPasswordUp" ErrorMessage="To pole nie może być puste"></asp:RequiredFieldValidator>
                                        </small>

                                    </div>
                                    <div>
                                        <small>
                                            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" Display="Dynamic" ControlToCompare="TextBoxConfirmPasswordUp" ControlToValidate="TextBoxPasswordUp" ForeColor="red" ErrorMessage="Hasła do siebie nie pasują"></asp:CompareValidator>
                                        </small>
                                    </div>


                                </div>

                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxEmailUp" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <small>
                                        <asp:CustomValidator ID="CustomValidatorEmailExists" runat="server" Display="Dynamic" ForeColor="red" ControlToValidate="TextBoxEmailUp" ErrorMessage="Ten mail został wykorzystany już do rejestracji. Użyj innego maila." OnServerValidate="CustomValidatorEmailExists_ServerValidate"></asp:CustomValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" Display="Dynamic" ForeColor="red" ControlToValidate="TextBoxEmailUp" ErrorMessage="To pole nie może być puste"></asp:RequiredFieldValidator>
                                    </small>
                                </div>

                                <label>Data urodzenia</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxDate" runat="server" placeholder="Wprowadź date" TextMode="Date"></asp:TextBox>
                                    <small>
                                        <asp:RangeValidator ID="RangeValidatorDate" runat="server" Display="Dynamic" ForeColor="red" ControlToValidate="TextBoxDate" Type="Date" ErrorMessage="Podaj poprawną datę urodzenia, musisz mieć ukończone 13 lat"></asp:RangeValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBirthday" runat="server" Display="Dynamic" ForeColor="red" ControlToValidate="TextBoxDate" ErrorMessage="To pole nie może być puste"></asp:RequiredFieldValidator>
                                    </small>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="ButtonSignUp" runat="server" Text="Zarejestruj się" OnClick="ButtonSignUp_Click" />

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
