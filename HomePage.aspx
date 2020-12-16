<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="InzProWeb.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="container-fluid badge-info pt-3 pb-3 mt-md-2">
            <center>
                <img src="imgs/gameB.png" class="img-fluid" alt="" />  
          </center>
        </div>

        <div class="game badge-light">

            <div class="col-12  mx-auto m-3">

                <div class="row">
                    <div class="col">
                        <hr />
                    </div>
                </div>

               <div class="row">
                    <div class="col-md-4 game-item">
                        <div class="game-img-background" style="background-image: url('imgs/tic-tac-toe.jpg');></div>
                        <div class="img-text-game">
                            <div class="logo-game p-5">
                                <center>
                                    <img src="imgs/tic-tac-toeB.svg" alt=""/>  
                                </center>
                            </div>
                        </div>
                        <div class="game-headline pt-md-1">
                            <a href="#">Kółko i krzyżyk</a>
                        </div>
                    </div>

                   <div class="col-md-4 game-item">
                        <div class="game-img-background" style="background-image: url('imgs/snake.jpg');></div>
                        <div class="img-text-game">
                            <div class="logo-game p-5">
                                <center>
                                    <img src="imgs/snakeB.svg" alt=""/>  
                                </center>
                            </div>
                        </div>
                       <div class="game-headline pt-md-1">
                            <a href="#">Wąż</a>
                        </div>
                    </div>

                   <div class="col-md-4 game-item">
                        <div class="game-img-background" style="background-image: url('imgs/tetris.jpg');></div>
                        <div class="img-text-game">
                            <div class="logo-game p-5">
                                <center>
                                    <img src="imgs/tetrisB.svg" alt=""/>  
                                </center>
                            </div>
                        </div>
                       <div class="game-headline pt-md-1">
                            <a href="#">Tetris</a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <hr />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-5">
                        <h5>Podoba Ci się nasza strona? Zostań z nami na dłużej!</h5>
                        <div class="form-group">
                            <asp:Button class="btn btn-info btn-block btn-lg" ID="ButtonSingIn" runat="server" Text="Zaloguj się"></asp:Button>
                        </div>
                        <div class="form-group">
                            <input class="btn btn-secondary btn-block btn-lg" id="ButtonSingUpIn" type="button" value="Zarejestruj się" />
                        </div>
                    </div>
                    <div class="col-md-7 fa-6x">
                        <center>
                            <button class="btn social-media" id="yt"><i class="fab fa-youtube-square " style="color:#FF0000;"></i></button>
                            <button class="btn social-media" id="fb"><i class="fab fa-facebook-square" style="color:#4267B2 "></i></button>
                            <button class="btn social-media" id="insta"><i class="fab fa-instagram-square" style=" background-image: -webkit-linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%);   
                                                                                            background-image:-moz-linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
                                                                                            background-image:linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%); 
                                                                                            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f09433', endColorstr='#bc1888',GradientType=1 );
                                                                                            color:transparent; 
                                                                                            -webkit-background-clip: text;
                                                                                            background-clip: text;"></i></button>
                            <button class="btn social-media" id="tw"> <i class="fab fa-twitter-square" style="color:#1DA1F2"></i></button>
                           </center>

                    </div>

                </div>

            </div>
        </div>
    </div>
    
</asp:Content>
