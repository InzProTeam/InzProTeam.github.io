<%@ Page Title="FAQ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebFormFAQ.aspx.cs" Inherits="InzProWeb.WebFormFAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="js/expand.js"></script>

<div class="container-xl">
	<div class="row">
		<div class="card badge-light" style="margin:20px 10px 20px 10px">
		<div class="col-lg-12" >
			<div class ="col-lg-12" style="padding-top:20px; padding-bottom: 20px "><img src="imgs/FAQ.jpg"class="img-fluid" alt="FAQ"></div>
			<div class="accordion" id="accordionExample">
				<div class="card">
					<div class="card-header" id="headingOne">
						<h2 class="clearfix mb-0">
							<a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">Czy muszę utworzyć konto, by korzystać z platformy?<i class="material-icons">add</i></a>									
						</h2>
					</div>
					<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">Nie. Niezalogowany użytkownik jest traktowany jako "Gość" i w dalszym ciągu może korzystać z platformy</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h2 class="mb-0">
							<a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Zarejestrowałem/łam się na platofrmie, lecz w dalszym ciągu nie mogę się zalogować. Czy to błąd? <i class="material-icons">add</i></a>                               
						</h2>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						<div class="card-body">Nie, to nie błąd. Każdą rejestrację musi zatwierdzić ręcznie jeden z administratorów. Czasem może zająć to chwilkę. Prosimy o wyrozumiałość.</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingThree">
						<h2 class="mb-0">
							<a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Podczas korzystania z platformy wystąpił błąd. Gdzie mogę go zgłosić? <i class="material-icons">add</i></a>
						</h2>
					</div>
					<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">Wszelkie błędy prosimy zgłaszać na nasz adres mailowy: <a class="p-1" href="" style="text-decoration:none">kogucik@example.com</a> </div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFour">
						<h2 class="mb-0">
							<a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Chciałbym/Chciałabym zagrać w *nazwa gry*. Czy dodacie ją na swoją platformę? <i class="material-icons">add</i></a>                     
						</h2>
					</div>
					<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
						<div class="card-body">Platoforma podlega ciągłemu rozwojowi. Słuchamy sugestii naszych graczy i staramy się sprostać waszym oczekiwaniom :D. Wszelkie pomysły, prośby i sugestie prosimy wysyłać na nasz adres mailowy: <a class="p-1" href="" style="text-decoration:none">kogucik@example.com</a></div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
</div>

</asp:Content>
