<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="InzProWeb.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="container-fluid badge-info pt-3 pb-3 mt-2" style="text-align:center;">
                <img src="imgs/gameB.png" class="img-fluid" alt="" />  
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
                        <a href="Tic-Tac-Toe.aspx"><div class="game-img-background" style="background-image: url('imgs/tic-tac-toe.jpg');></div></a>
                        <div class="img-text-game">
                            <div class="logo-game p-5" style="text-align:center;">
                                    <img src="imgs/tic-tac-toeB.svg" alt=""/>  
                            </div>
                        </div>
                        <div class="game-headline pt-md-1">
                            <a href="Tic-Tac-Toe.aspx">Kółko i krzyżyk</a>
                        </div>
                    </div>

                   <div class="col-md-4 game-item">
                       <a  href="Snake.aspx"><div class="game-img-background" style="background-image: url('imgs/snake.jpg');></div></a>
                        <div class="img-text-game">
                            <div class="logo-game p-5" style="text-align:center;">
                                    <img src="imgs/snakeB.svg" alt=""/>
                            </div>
                        </div>
                       <div class="game-headline pt-md-1">
                            <a href="Snake.aspx">Wąż</a>
                        </div>
                    </div>

                   <div class="col-md-4 game-item">
                        <a href="WebFormTetris.aspx"><div class="game-img-background" style="background-image: url('imgs/tetris.jpg');></div></a>
                        <div class="img-text-game">
                            <div class="logo-game p-5" style="text-align:center;">
                                    <img src="imgs/tetrisB.svg" alt=""/>  
                            </div>
                        </div>
                       <div class="game-headline pt-md-1">
                            <a href="WebFormTetris.aspx">Tetris</a>
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
                            <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Zaloguj się"></asp:Button>
                        </div>
                        <div class="form-group">
                            <input class="btn btn-secondary btn-block btn-lg" id="ButtonSingUpIn" type="button" value="Zarejestruj się" />
                        </div>
                    </div>
                    <div class="col-md-1">
                           
                    </div>
                    <div class="col-md-5 col-lg-5 fa-6x">
                        <div class="row">
                            <div class="col-3" style="text-align:center;">
                                 <button class="btn social-media" id="yt"><i class="fab fa-youtube-square " style="color:#FF0000;"></i></button>
                            </div>
                            <div class="col-3" style="text-align:center;">
                                 <button class="btn social-media" id="fb"><i class="fab fa-facebook-square" style="color:#4267B2 "></i></button>
                            </div>
                            <div class="col-3" style="text-align:center;">
                                  <button class="btn social-media" id="insta"><i class="fab fa-instagram-square" style="background: radial-gradient(circle farthest-corner at 35% 90%, #fec564, transparent 50%), 
                                                                                                                                  radial-gradient(circle farthest-corner at 0 140%, #fec564, transparent 50%), 
                                                                                                                                  radial-gradient(ellipse farthest-corner at 0 -25%, #5258cf, transparent 50%),
                                                                                                                                  radial-gradient(ellipse farthest-corner at 20% -50%, #5258cf, transparent 50%),
                                                                                                                                  radial-gradient(ellipse farthest-corner at 100% 0, #893dc2, transparent 50%),
                                                                                                                                  radial-gradient(ellipse farthest-corner at 60% -20%, #893dc2, transparent 50%),
                                                                                                                                  radial-gradient(ellipse farthest-corner at 100% 100%, #d9317a, transparent),
                                                                                                                                  linear-gradient(#6559ca, #bc318f 30%, #e33f5f 50%, #f77638 70%, #fec66d 100%);
                                                                                                                                  color:transparent; 
                                                                                                                                  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f09433', endColorstr='#bc1888',GradientType=1 );
                                                                                                                                  -webkit-background-clip: text;
                                                                                                                                  background-clip: text;">
                                                                                                                                  </i></button>
                            </div>
                            <div class="col-3" style="text-align:center;">
                                <button class="btn social-media" id="tw"> <i class="fab fa-twitter-square" style="color:#1DA1F2"></i></button>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>
    
</asp:Content>
