<%@ Page Title="Snake" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Snake.aspx.cs" Inherits="InzProWeb.Snake" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto m-3" align="center">
                <div id="score">WYNIK</div>
                <canvas id="snake" width="400" height="400"></canvas>
                <asp:Button class="btn btn-secondary btn-block btn-lg" ID="ButtonRestart" runat="server" Text="Restart" OnClick="ButtonRestart_Click" />
                <asp:TextBox ID="TextBoxScore" ClientIDMode="Static" runat="server"></asp:TextBox>
                <div>
                    <small>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorScore" runat="server" ControlToValidate="TextBoxScore" Display="Dynamic" ForeColor="red" ErrorMessage="Nie udało Ci się nabić jeszcze wyniku ;)" ValidationGroup="Score"></asp:RequiredFieldValidator>
                    </small>
                </div>
                <div>
                    <small>
                        <asp:CustomValidator ID="CustomValidatorActive" runat="server" Display="Dynamic" ForeColor="red" ErrorMessage="Twoje konto nie zostało jeszcze aktywowane lub zostało dezaktywowane z powodu naruszenia zasad strony" ValidationGroup="Score" OnServerValidate="CustomValidatorActive_ServerValidate"></asp:CustomValidator>
                    </small>
                </div>
                <asp:Button Class="btn btn-info btn-block btn-lg" ID="ButtonSave" runat="server" Text="Zapisz wynik" OnClick="ButtonSave_Click" ValidationGroup="Score" />
            </div>
        </div>
    </div>
    <script src="js/snake.js"></script>
    <script>

        function setReadOnly() {

            var textbox = document.getElementById("TextBoxScore");
            if (textbox)
                textbox.readOnly = "readonly";
            setReadOnly();
        }

     
    </script>

</asp:Content>
