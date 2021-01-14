﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebFormTetris.aspx.cs" Inherits="InzProWeb.WebFormTetris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">
                <div class="col-md-12 mx-auto m-3">
                    <div class="card-body m1">
                        <div class="row">
                            <div class="col-9-md">
                                    <center><div id="score"></div></center>
                                    <center><canvas id="tetris" width="240" height="400" /></center>
                                    <script src="js/tetris.js"></script>
                            </div>
                            <div class="col-3-md">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Refresh" runat="server" Text="Zrestartuj gre" OnClick="Refresh_Click" />
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="ButtonSave" runat="server" Text="Zapisz wynik" />
                                <asp:TextBox ID="TextBoxScore" ClientIDMode="Static" runat="server"></asp:TextBox>
                                <script> 
                                    function SetReadOnly() {
                                        textbox = document.getElementById("TextBoxScore");
                                        if (textbox) {
                                            textbox.readOnly = "readonly";
                                            MyTextBox.value = "";
                                        }
                                    }
                                    SetReadOnly();

                                </script>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
          </div>
                    
</asp:Content>
