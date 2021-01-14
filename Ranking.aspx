﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ranking.aspx.cs" Inherits="InzProWeb.Ranking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">

        <div class="row">

            <div class="col-md-12 mt-md-2 mb-md-2">
                <div class="card badge-light">
                    <div class="card-body">
                        <div class="row">
                            <div class="col" style="text-align: center;">
                                <img src="imgs/ribbon-medal.svg" style="width: 10%;" alt="" />
                                <h4>RANKING</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="game-headline" style="text-align: center;">
                                    <a href="Snake.aspx">
                                        <h5>WĄŻ</h5>
                                    </a>
                                </div>
                                <asp:GridView class="table thead-dark table-striped table-bordered" ID="RankingSnake" runat="server"></asp:GridView>
                            </div>
                            <div class="col-lg-6 pt-md-2 pt-lg-0">
                                <div class="game-headline" style="text-align: center;">
                                    <a href="#">
                                        <h5>TETRIS</h5>
                                    </a>
                                </div>
                                <asp:GridView class="table thead-dark table-striped table-bordered" ID="RankingTetris" runat="server"></asp:GridView>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-5 col-lg-3">
                                <img src="imgs/ranking.jpg" class="img-fluid border rounded" alt="" />
                            </div>

                            <div class="col-md-7 col-lg-5 pt-sm-2 pt-md-0">
                                        Żeby wygrać trzeba grać! Każdy zalogowany użytkownik może znaleźć się w top 10 najlepszych graczy. 
                                        Gratulujemy wszystkim, którzy znaleźli się wśród najlepszych oraz życzymy powodzenia, tym których jeszcze tam nie ma :)   
                                        <br /><br /><i>"Musisz najpierw wygrać w umyśle, zanim wygrasz w życiu"</i> - John Addison
                            </div>

                            <%--<div class="col-md-2 col-lg-0">
                                    
                            </div>--%>

                            <div class="col-md-10 col-lg-4 pt-sm-2 pt-lg-0 ml-md-5 ml-lg-0">
                            
                                        Chcesz być w naszym rankingu i nie masz konta? Zapraszamy do zostania kogucikiem! Powodzenia!
                              <div class="row">
                                  <div class="col-md-2 col-lg-1">
                                             
                                </div>    
                                <div class="col-md-8 col-lg-9 pt-1" >
                                        <div class="form-group">
                                            <asp:Button class="btn btn-info btn-block <%--btn-lg--%>" ID="ButtonSingIn" runat="server" Text="Zaloguj się"></asp:Button>
                                        </div>
                                        <div class="form-group">
                                            <input class="btn btn-secondary btn-block <%--btn-lg--%>" id="ButtonSingUpIn" type="button" value="Zarejestruj się" />
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