<%@ Page Title="Kółko i Krzyżyk" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tic-Tac-Toe.aspx.cs" Inherits="InzProWeb.Tic_Tac_Toe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="col-12 col-md-11 mx-auto m-3">
            <div class="card badge-light pt-2 pb-3">

                <div class="row" align="center">
                    <div class="game--container">
                        <div data-cell-index="0" class="cell"></div>
                        <div data-cell-index="1" class="cell"></div>
                        <div data-cell-index="2" class="cell"></div>
                        <div data-cell-index="3" class="cell"></div>
                        <div data-cell-index="4" class="cell"></div>
                        <div data-cell-index="5" class="cell"></div>
                        <div data-cell-index="6" class="cell"></div>
                        <div data-cell-index="7" class="cell"></div>
                        <div data-cell-index="8" class="cell"></div>
                    </div>
                </div>
                <div class="row pb-3 mt-n3" align="center">
                    <div class="col">
                        <h3 class="game--status"></h3>
                    </div>
                </div>
                <div class="row" align="center">
                    <div class="col">
                        <button class="btn btn-primary btn-lg">Zagraj ponownie</button>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col-11 m-auto">
                        <b>Zasady gry:</b> Gra dwuosobowa. 
                        Gracze obejmują pola na przemian dążąc do objęcia trzech pól w jednej linii, 
                        przy jednoczesnym uniemożliwieniu tego samego przeciwnikowi.<br />
                        <b>Sterowanie:</b> Myszka.

                    </div>
                </div>

            </div>
        </div>
    </div>
<script src="js/ticTacToe.js" charset="utf-8"></script>
</asp:Content>
