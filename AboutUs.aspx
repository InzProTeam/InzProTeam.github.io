<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="InzProWeb.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">
        <div class="row">

            <div class="container-fluid badge-info p-5">
                <center>

              <h1>Siema koguciku!</h1>
              <h4 style="opacity: 0.7;">Poznaj nasz zespół</h4>
          </center>
            </div>

            <div class="about badge-light">


                <div class="col-12  mx-auto m-3">

                    <div class="row">
                        <%--<div class="about-body m-1">
                            <div class="row p-3">
                                <div class="col-md-10">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum pharetra placerat. Sed eu ligula eget tortor ornare pharetra. Quisque vel congue mi. Mauris sapien metus, convallis id augue in, interdum rhoncus justo. Maecenas interdum eleifend vulputate. Mauris bibendum odio malesuada erat volutpat venenatis. Curabitur eget porta risus, eu semper sem. Pellentesque massa tellus, rutrum pretium sagittis et, condimentum ac erat. Donec id magna nec ante placerat mollis id nec elit. Phasellus placerat orci nisi, eu fringilla lacus feugiat eu.</p>
                                    <p >Historia naszej strony jest krótka ale piękna. Do jej stworzenia zainspirował nas wykładowca słowami „Zróbcie projekt na zaliczenie”. Nic bardziej nie motywuje do pracy niż wizja niezdania przedmiotu. Tak w październiku 2020 roku rozpoczęła się nasza przygoda. Bywało ciężko, szczególnie jak trzeba było myśleć, ale udało się. W ten sposób teraz witamy Cię na naszej stronie. Chcieliśmy również podziękować za obdarzenie nas zaufaniem i wybranie tej platformy jako miejsca Twojej rozrywki.  </p>

                                </div>
                                <div class="col-md-2">
                                    <center>
                  <img width="150px" src="imgs/logo.png" lt=""/>
               </center>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                        <div class="about-body m-1">
                            <div class="row p-3">
                                <div class="col-md-12">
                                    <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum pharetra placerat. Sed eu ligula eget tortor ornare pharetra. Quisque vel congue mi. Mauris sapien metus, convallis id augue in, interdum rhoncus justo. Maecenas interdum eleifend vulputate. Mauris bibendum odio malesuada erat volutpat venenatis. Curabitur eget porta risus, eu semper sem. Pellentesque massa tellus, rutrum pretium sagittis et, condimentum ac erat. Donec id magna nec ante placerat mollis id nec elit. Phasellus placerat orci nisi, eu fringilla lacus feugiat eu.</p>--%>
                                    <p <%--class="text-justify"--%>>Historia naszej strony jest krótka ale piękna. Do jej stworzenia zainspirował nas wykładowca słowami „Zróbcie projekt na zaliczenie”. Nic bardziej nie motywuje do pracy niż wizja niezdania przedmiotu. Tak w październiku 2020 roku rozpoczęła się nasza przygoda. Bywało ciężko, szczególnie jak trzeba było myśleć, ale udało się. W ten sposób teraz witamy Cię na naszej stronie. Chcieliśmy również podziękować za obdarzenie nas zaufaniem i wybranie tej platformy jako miejsca Twojej rozrywki. Mamy nadzjeję że poczujesz, że naszym celem jest:</p>

                                </div>
                            </div>
                        </div>
                    </div>

                     <%--<div class="row">
                        <div class="col">
                            <center>
                               <h5>Naszym celem jest:</h5> 
                            </center>
                        </div>
                    </div>--%>

                    <div class="row  ">
                        <div class="col-4">
                            <center>
                                <i class="fas fa-user-clock fa-3x" ></i><br />
                                Mile spędzony czas
                            </center>            
                        </div>
                        <div class="col-4">
                            <center>
                                <i class="fas fa-gamepad fa-3x"></i><br />
                                Dobra zabawa
                            </center>                         
                        </div>
                        <div class="col-4">
                            <center>
                                <i class="fas fa-trophy fa-3x"></i><br />
                                Zdany przedmiot
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr />
                        </div>
                    </div>


                    <div class="Us">
                        <div class="row">
                            <div class="col">
                                <center>
                            <h4>Nasz zespół</h4>
                        </center>
                            </div>
                        </div>
                        <div class="row p-1">
                            <div class="col-md-4">
                                <center>
                            <img <%--width="250px"--%> src="imgs/PatrykGraca.png"  class="img-fluid" alt=""/>
                            <p class="text-left pt-2"><b>Patryk Graca</b><br /><i>"Kierowniku, dej no zaliczenie"</i></p>
                        </center>
                            </div>
                            <div class="col-md-4">
                                <center>
                            <img <%--width="250px"--%> src="imgs/PatrykGraca.png"  class="img-fluid" alt=""/>
                            <p class="text-left pt-2"><b>Maksymilian Śreniawa</b><br />
                               Wielki Kanclerz Republiki,
                               Mroczny Lord Sithów Imperator Galaktyki,
                               Przywódca Ostatecznego Porządku <br />
                               <i>"Uczynię ją legalną"</i></p>
                        </center>
                            </div>
                            <div class="col-md-4">
                                <center>
                           <img <%--width="250px"--%> src="imgs/PatrykGraca.png"  class="img-fluid" alt=""/>
                           <p class="text-left pt-2"><b>Karolina Pierlak</b><br />
                               Księżniczka Alderaanu,
                               Senator Alderaanu,
                               Generał Ruchu Oporu,
                               Prezydent Nowej Republiki<br />
                               <i>"Gubernatorze Tarkin, poznałam pana po smrodzie"</i></p>
                        </center>
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
                                    <asp:Button  class="btn btn-info btn-block btn-lg" ID="ButtonSingIn" runat="server" Text="Zaloguj się" OnClick="ButtonSingIn_Click"></asp:Button>
                                </div>

                                <div class="form-group">
                                    <asp:Button   class="btn btn-secondary btn-block btn-lg" ID="ButtonSingUp" runat="server"  Text="Zarejestruj się" OnClick="ButtonSingUp_Click"></asp:Button>
                                </div>
                        </div>
                        <div class="col-7 fa-6x">
                            <center>
                                <i class="fab fa-youtube-square " style="color:#FF0000"></i>
                                <i class="fab fa-facebook-square" style="color:	#4267B2"></i>
                                <i class="fab fa-instagram-square" style=" background-image: -webkit-linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%);   
    background-image:-moz-linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
    background-image:linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%); 
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f09433', endColorstr='#bc1888',GradientType=1 );
    color:transparent; 
   -webkit-background-clip: text;
   background-clip: text;"></i>
                                <i class="fab fa-twitter-square" style="color:#1DA1F2"></i>
                           </center>

                        </div>
                        
                    </div>


                </div>




            </div>
        </div>
    </div>
</asp:Content>
