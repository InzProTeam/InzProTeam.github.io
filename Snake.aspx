<%@ Page Title="Snake" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Snake.aspx.cs" Inherits="InzProWeb.Snake" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-12 col-md-11 mx-auto m-3">
            <div class="card badge-light pt-2 pb-3">

                <div class="row" align="center">
                    <%--<div class="col-md-6 mx-auto m-3" align="center">--%>
                    <div class="col-md-12 mx-auto<%-- mt-3--%>">
                        <div id="score">WYNIK</div>
                    </div>
                    <div class="col-md-12 mx-auto">
                        <canvas id="snake" height="400" width="400"></canvas>
                    </div>
                </div>
                <div class="row" align="center">
                    <div class="col-6 mx-auto m-3" align="center">
                        <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Zagraj ponownie" OnClick="ButtonRestart_Click" />
                    </div>
                </div>

                <div class="row" align="center">
                    <div class="col-6 mx-auto">
                        <asp:TextBox ID="TextBoxScore" ClientIDMode="Static" runat="server"></asp:TextBox>
                        <div>
                            <small>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorScore" runat="server" ControlToValidate="TextBoxScore" Display="Dynamic" ForeColor="red" ErrorMessage="Nie udało Ci się nabić jeszcze wyniku ;)" ValidationGroup="Score"></asp:RequiredFieldValidator>
                            </small>
                        </div>
                        <div>
                            <small>
                                <asp:CustomValidator ID="CustomValidatorActive" runat="server" Display="Dynamic" ForeColor="red" ErrorMessage="Twoje konto nie zostało jeszcze aktywowane lub zostało dezaktywowane z powodu naruszenia zasad strony" OnServerValidate="CustomValidatorActive_ServerValidate" ValidationGroup="Score"></asp:CustomValidator>
                            </small>
                        </div>
                    </div>
                </div>
                <div class="row" align="center">
                    <div class="col-6 m-auto pt-sm-3">
                        <asp:Button Class="btn btn-secondary btn-block btn-lg" ID="ButtonSave" runat="server" Text="Zapisz wynik" OnClick="ButtonSave_Click" ValidationGroup="Score" />
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-11 m-auto">
                        <b>Zasady gry:</b> Sterujesz wężem, który zjada owoce. Każdy owoc wydłuża węża o jedną kratkę oraz dodaje punkty. 
                        Celem gry jest stworzenie jak najdłuższego węża. Gra kończy się gdy wąż zderzy się z własnym ciałem.<br />
                        <b>Sterowanie:</b> WSAD.

                    </div>
                </div>

            </div>

            <%--<div class="row mb-2">
                <a href="#"><< Wróć do strony głównej</a><br />
            </div>--%>
        </div>
    </div>

    <script src="js/snake.js"></script>
    <script>

        function setReadOnly() {

            var textbox = document.getElementById("TextBoxScore");
            if (textbox)
                textbox.readOnly = "readonly";
        }
        setReadOnly();
        SnakeGame();


    </script>

</asp:Content>
