<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebFormUserProfile.aspx.cs" Inherits="InzProWeb.WebFormUserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="js/expand.js"></script>

<div class="container-fluid" style="margin-top:20px">
      <div class="row">
         <div class="col-xl-6 mx-auto m-3">
            <div class="card badge-light">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                     </div>
                  </div>
                  <div class="row">
                     <div class="col" style="text-align:center">
                           <img width="100px" src="imgs/generaluser.png" />
                     </div>
                   </div>
                   <div class="row">
                     <div class="col" style="text-align:center">
                         <h4>Twój profil</h4>
                           <span>Status konta - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="LabelAccountStatus" runat="server" Text="Status twojego konta"></asp:Label>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nazwa użytkownika</label>
                        <div class="form-group">
                            <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBoxUserProfile" runat="server" placeholder="Nazwa użytkownika" ReadOnly="True"></asp:TextBox>                    
                            </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                          <label>Data urodzenia</label>
                          <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBoxDOB" runat="server" placeholder="Data urodzenia" ReadOnly="True"></asp:TextBox>
                          </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-8 mx-auto m-3" >
                        <label>Adres email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBoxEmail" runat="server" placeholder="Adres email" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                      <div class="col" style="text-align:center">
                        <asp:Label class="badge badge-pill badge-info" ID="LabelUserProfileChanges" runat="server" Text="Aktualizuj informacje"></asp:Label>
                      </div>
                  </div>
                <div class="accordion" id="accordionExample" style="margin-top:20px">
				    <div class="card">
					    <div class="card-header" id="headingOne">
						    <h2 class="clearfix mb-0">
							    <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">Zmień datę urodzenia<i class="material-icons">add</i></a>									
						    </h2>
					    </div>
					    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
						    <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                       <label>Aktualna data urodzenia</label>
                                       <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxCurrentDOB" runat="server" placeholder="Data urodzenia" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                       <label>Aktualizuj datę urodzenia</label>
                                       <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxUpdateDBO" runat="server" placeholder="Wprowadź date" TextMode="Date" ></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-8 mx-auto">
                                         <asp:Button ID="ButtonUpdateDOB" class="btn btn-lg btn-block btn-info" runat="server" Text="Aktualizuj" />
                                    </div>
                                </div>
						    </div>
					    </div>
				    </div>
                    <div class="card">
					    <div class="card-header" id="headingTwo">
						    <h2 class="clearfix mb-0">
							    <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Zmień adres email<i class="material-icons">add</i></a>									
						    </h2>
					    </div>
					    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						    <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6" >
                                        <label>Aktualny dres email</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxCurrentEmail" runat="server" placeholder="Adres email" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6" >
                                        <label>Aktualizuj adres email</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxUpdateEmail" runat="server" placeholder="Nowy adres email" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-8 mx-auto">
                                         <asp:Button ID="ButtonUpdateEmail" class="btn btn-lg btn-block btn-info" runat="server" Text="Aktualizuj" />
                                    </div>
                                </div>
						    </div>
					    </div>
				    </div>
                    <div class="card">
					    <div class="card-header" id="headingThree">
						    <h2 class="clearfix mb-0">
							    <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Zmień hasło<i class="material-icons">add</i></a>									
						    </h2>
					    </div>
					    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						    <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4">
                                    <label>Podaj stare hasło</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxCurrentPassword" runat="server" placeholder="Obecne hasło" TextMode="Password"></asp:TextBox>
                                        </div>
                                     </div>
                                    <div class="col-md-4">
                                    <label>Wprowadź nowe hasło</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxNewPassword" runat="server" placeholder="Nowe hasło" TextMode="Password"></asp:TextBox>
                                        </div>
                                     </div>
                                     <div class="col-md-4">
                                        <label>Potwierdź hasło</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxConfirmPassword" runat="server" placeholder="Potwierdź nowe hasło" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-8 mx-auto">
                                         <asp:Button ID="ButtonUpdatePassword" class="btn btn-lg btn-block btn-info" runat="server" Text="Aktualizuj" />
                                    </div>
                                </div>
						    </div>
					    </div>
				    </div>
                </div>

               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
