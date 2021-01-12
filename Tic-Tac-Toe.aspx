<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tic-Tac-Toe.aspx.cs" Inherits="InzProWeb.Tic_Tac_Toe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mx-auto m-3">
                    <div class="card-body m1">
                        <div class="row">
                            <div class="col">
                                <center>
                                <h1 class="game--title">Kółko i krzyżyk</h1>
                                </center>
                            </div>
                        </div>                

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
                        <center>
                        <div class="row">
                            <div class="col">
                                <h2 class="game--status"></h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <button class="game--restart btn btn-primary btn-lg">Zagraj ponownie!</button>
                            </div>
                        </div>
                        </center>
                    </div>
                 </div>
             </div>
            </div>
<script src="js/ticTacToe.js" charset="utf-8"></script>
</asp:Content>
