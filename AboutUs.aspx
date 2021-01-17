<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="InzProWeb.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container mt-2 mb-2">
        <div class="row">

            <div class="container-fluid badge-info p-5 mb-2" style="text-align:center;">
              <h1>Siema koguciku!</h1>
              <h4 style="opacity: 0.7;">Poznaj nasz zespół</h4>
            </div>

            <div class="about badge-light">


                <div class="col-12  mx-auto m-3">

                    <div class="row">

                        <div class="about-body m-1">
                            <div class="row p-3">
                                <div class="col-md-12">
                                    <p>Historia naszej strony jest krótka ale piękna. Do jej stworzenia zainspirował nas wykładowca słowami „Zróbcie projekt na zaliczenie”. 
                                        Nic bardziej nie motywuje do pracy niż wizja niezdania przedmiotu. Tak w październiku 2020 roku rozpoczęła się nasza przygoda. 
                                        Bywało ciężko, szczególnie jak trzeba było myśleć, ale udało się. W ten sposób teraz witamy Cię na naszej stronie. 
                                        Chcieliśmy również podziękować za obdarzenie nas zaufaniem i wybranie tej platformy jako miejsca Twojej rozrywki. 
                                        Mamy nadzjeję że poczujesz, że naszym celem jest:</p>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row" style="text-align:center;">
                        <div class="col-4">
                                <i class="fas fa-user-clock fa-3x" ></i><br />
                                Mile spędzony czas           
                        </div>
                        <div class="col-4">
                                <i class="fas fa-gamepad fa-3x"></i><br />
                                Dobra zabawa                       
                        </div>
                        <div class="col-4">
                                <i class="fas fa-trophy fa-3x"></i><br />
                                Zdany przedmiot
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>

                    <div class="Us">
                        <div class="row" style="text-align:center;">
                            <div class="col">
                                <h4>Nasz zespół</h4>
                            </div>
                        </div>
                        <div class="row p-1">
                            <div class="col-md-4">
                            <img src="imgs/PatrykGraca.png"  class="img-fluid" alt=""/>
                            <p class="text-left pt-2"><b>Patryk Graca</b><br /><i>"Kierowniku, dej no zaliczenie"</i></p>
                            </div>
                            <div class="col-md-4">
                            <img src="imgs/MaksymilianSredniawa.png"  class="img-fluid" alt=""/>
                            <p class="text-left pt-2"><b>Maksymilian Średniawa</b><br />
                               Wielki Kanclerz Republiki,
                               Mroczny Lord Sithów Imperator Galaktyki,
                               Przywódca Ostatecznego Porządku <br />
                               <i>"Uczynię ją legalną"</i></p>
                            </div>
                            <div class="col-md-4">
                           <img src="imgs/KarolinaPierlak.png"  class="img-fluid" alt=""/>
                           <p class="text-left pt-2"><b>Karolina Pierlak</b><br />
                               Księżniczka Alderaanu,
                               Senator Alderaanu,
                               Generał Ruchu Oporu,
                               Prezydent Nowej Republiki<br />
                               <i>"Gubernatorze Tarkin, poznałam pana po smrodzie"</i></p>
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
                            <asp:Button class="btn btn-info btn-block btn-lg" ID="ButtonLogin" runat="server" Text="Zaloguj się" OnClick="ButtonLogin_Click" />
                        </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-secondary btn-block btn-lg" ID="ButtonSingUpIn" runat="server" Text="Zarejestruj się" OnClick="ButtonSingUpIn_Click" />
                        </div>
                    </div>
                    <div class="col-md-1">
                           
                    </div>
                    <div class="col-md-5 col-lg-5 fa-6x">
                        <div class="row">
                            <div class="col-3" style="text-align:center;">
                                 <button class="btn social-media" id="yt"><a href="https://www.youtube.com/" class="fab fa-youtube-square " style="color:#FF0000; text-decoration: none;"></a></button>
                            </div>
                            <div class="col-3" style="text-align:center;">
                                 <button class="btn social-media" id="fb"><a href="https://www.facebook.com/" class="fab fa-facebook-square" style="color: #4267B2; text-decoration: none; "></a></button>
                            </div>
                            <div class="col-3" style="text-align:center;">
                                  <button class="btn social-media" id="insta">
                                      <a href="https://www.instagram.com/" class="fab fa-instagram-square" style="background: radial-gradient(circle farthest-corner at 35% 90%, #fec564, transparent 50%), 
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
                                                                                                                                  background-clip: text; text-decoration: none;">
                                                                                                                                  </a></button>
                            </div>
                            <div class="col-3" style="text-align:center;">
                                <button class="btn social-media" id="tw"> <a href="https://twitter.com/?lang=pl" class="fab fa-twitter-square" style="color: #1DA1F2; text-decoration: none;"></a></button>
                            </div>
                        </div>

                    </div>

                </div>


                </div>




            </div>
        </div>
    </div>
</asp:Content>
