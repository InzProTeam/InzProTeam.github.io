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
                <asp:Button Class="btn btn-info btn-block btn-lg" ID="ButtonSave" runat="server" Text="Zapisz wynik" OnClick="ButtonSave_Click" ValidationGroup="Score" />
            </div>
        </div>
    </div>
    <script>

        function setReadOnly() {

            var textbox = document.getElementById("TextBoxScore");
            if (textbox)
                textbox.readOnly = "readonly";

        }

        var refreshIntervalId;


        function SnakeGame() {
            canv = document.getElementById("snake");
            contx = canv.getContext("2d");
            document.addEventListener("keydown", KeyPush);
            refreshIntervalId = setInterval(Game, 1000 / 12);
        }
        setReadOnly();
        SnakeGame();



        /*window.onload = function () {
            canv = document.getElementById("snake");
            contx = canv.getContext("2d");
            document.addEventListener("keydown", KeyPush);
            setInterval(Game, 1000 / 12);
        }*/

        snakeX = snakeY = 10;
        gridSize = tileCount = 20; //20 * 20 = 400
        snakeSpeedX = snakeSpeedY = 0;
        do {
            appleX = Math.floor(Math.random() * tileCount);
            appleY = Math.floor(Math.random() * tileCount);
        } while (appleX === snakeX && appleY === snakeY)
        oldAppleX = appleX;
        oldAppleY = appleY;
        trail = [];
        tail = 3;
        appleCount = 0;
        score = 0;
        sing = 0;

        function Game() {
            snakeX += snakeSpeedX;
            snakeY += snakeSpeedY;
            if (snakeX < 0) {
                snakeX = tileCount - 1;
            }
            if (snakeX > tileCount - 1) {
                snakeX = 0;
            }
            if (snakeY < 0) {
                snakeY = tileCount - 1;
            }
            if (snakeY > tileCount - 1) {
                snakeY = 0;
            }
            //board
            contx.fillStyle = "black";
            contx.fillRect(0, 0, canv.width, canv.height);
            //snake
            contx.fillStyle = "lime";
            for (var i = 0; i < trail.length; i++) {
                //head color
                if (i === trail.length - 1) {
                    contx.fillStyle = "yellow";
                }
                if (oldAppleX === trail[i].x && oldAppleY === trail[i].y) {
                    contx.fillRect(trail[i].x * gridSize, trail[i].y * gridSize, gridSize + 5, gridSize + 5);
                } else {
                    contx.fillRect(trail[i].x * gridSize, trail[i].y * gridSize, gridSize - 2, gridSize - 2);
                }
                //death
                if (trail[i].x === snakeX && trail[i].y === snakeY && tail > 3) {

                    var s = score;
                    document.getElementById("score").innerHTML = "Koniec gry WYNIK: " + s;
                    tail = 3;
                    score = 0;
                    /* later */
                    clearInterval(refreshIntervalId);
                    MyTextBox = document.getElementById("TextBoxScore");
                    if (MyTextBox)
                        MyTextBox.value = s;

                }

            }
            appleCount++;
            if (appleCount >= tail) {
                oldAppleX = -10;
                oldAppleY = -10;
            }
            trail.push({ x: snakeX, y: snakeY });
            while (trail.length > tail) {
                trail.shift();
            }
            //apple
            if (appleX === snakeX && appleY === snakeY) {
                tail++;
                score += 10;
                appleCount = 0;
                oldAppleX = appleX;
                oldAppleY = appleY;
                document.getElementById("score").innerHTML = "WYNIK: " + score;
                var colide = false;
                if (tail != 40) {
                    do {
                        appleX = Math.floor(Math.random() * tileCount);
                        appleY = Math.floor(Math.random() * tileCount);
                        for (var i = 0; i < trail.length; i++) {
                            if (trail[i].x == appleX && trail[i].y == appleY) {
                                colide = true;
                                break;
                            } else {
                                colide = false;
                            }

                        }

                    } while (colide)
                }

            }
            contx.fillStyle = "red";
            contx.fillRect(appleX * gridSize, appleY * gridSize, gridSize - 2, gridSize - 2);
            sing = 0;
        }


        function KeyPush(event) {
            if (sing === 0) {
                switch (event.keyCode) {
                    case 37:
                    case 65: //left

                        if (snakeSpeedX !== 1) {
                            snakeSpeedX = -1;
                            snakeSpeedY = 0;
                            sing++;
                        }
                        break;
                    case 38:
                    case 87: //up
                        if (snakeSpeedY !== 1) {
                            snakeSpeedX = 0;
                            snakeSpeedY = -1;
                            sing++;
                        }
                        break;
                    case 39:
                    case 68: //right
                        if (snakeSpeedX !== -1) {
                            snakeSpeedX = 1;
                            snakeSpeedY = 0;
                            sing++;
                        }
                        break;
                    case 40:
                    case 83: //down
                        if (snakeSpeedY !== -1) {
                            snakeSpeedX = 0;
                            snakeSpeedY = 1;
                            sing++;
                        }
                        break;
                    case 80:
                        tail++;
                        break;

                    default:
                }
            }
        }
    </script>

</asp:Content>
