/// <reference path="../scripts/jasmine/jasmine.js" />
/// <reference path="../js/tetris.js" />
/// <reference path="../js/tictactoe.js" />

describe("Testowanie wielkości pola gry",
    function () {
        var rightMatrix = [25];
        for (var i = 0; i < 25 ; i++) {
            rightMatrix[i] = [];
        }

        for (var j = 0; j < 25; j++) {
            for (var k = 0; k < 15; k++) {
                rightMatrix[j][k] = 0;
            }
        }

        var testMatrix = createMatrix(15,25)
        
        it("Tablica ma wymiary 15x25",
            function () {

                expect(testMatrix).toEqual(rightMatrix);
            });

    });

describe("Testowanie koloru gracza X",
    function () {
        var color = "DarkMagenta";
        var sign = "X"
        var testx = sign.fontcolor(color)

            it("Kolor grasza 'X' to Dark magenta",
            function () {

                expect(x).toEqual(testx);
            });

    });

describe("Testowanie koloru gracza O",
    function () {
        var color = "Indigo";
        var sign = "O"
        var testo = sign.fontcolor(color)

        it("Kolor grasza 'O' to Indigo",
            function () {

                expect(o).toEqual(testo);
            });

    });

