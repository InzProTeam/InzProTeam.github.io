/// <reference path="../js/tetris.js" />
/// <reference path="../scripts/jasmine/jasmine.js" />

describe("Figura I",
    function() {
        var correctPiece = [
            [0, 1, 0, 0],
            [0, 1, 0, 0],
            [0, 1, 0, 0],
            [0, 1, 0, 0],
        ];

        var piece = createPiece('I');

        it("Figura I powinna byc figurą I",
            function() {

                expect(piece).toEqual(correctPiece);
            });
    });

describe("Figura L",
    function() {
        var correctPiece = [
            [0, 2, 0],
            [0, 2, 0],
            [0, 2, 2],
        ];

        var piece = createPiece('L');

        it("Figura L powinna byc figurą L",
            function() {

                expect(piece).toEqual(correctPiece);
            });
    });

describe("Figura J",
    function() {

        var correctPiece = [
            [0, 3, 0],
            [0, 3, 0],
            [3, 3, 0],
        ];

        var piece = createPiece('J');

        it("Figura J powinna byc figurą J",
            function() {

                expect(piece).toEqual(correctPiece);
            });
    });

describe("Figura O",
    function() {

        var correctPiece = [
            [4, 4],
            [4, 4],
        ];

        var piece = createPiece('O');

        it("Figura O powinna byc figurą O",
            function() {

                expect(piece).toEqual(correctPiece);
            });
    });

describe("Figura Z", function () {
   
    var correctPiece = [
        [5, 5, 0],
        [0, 5, 5],
        [0, 0, 0],
    ];

    var piece = createPiece('Z');

    it("Figura Z powinna byc figurą Z",
        function() {

            expect(piece).toEqual(correctPiece);
        });
});

describe("Figura S",
    function() {

        var correctPiece = [
            [0, 6, 6],
            [6, 6, 0],
            [0, 0, 0],
        ];

        var piece = createPiece('S');

        it("Figura S powinna byc figurą S",
            function() {

                expect(piece).toEqual(correctPiece);
            });
    });

describe("Figura T",
    function() {

        var correctPiece = [
            [0, 7, 0],
            [7, 7, 7],
            [0, 0, 0],
        ];

        var piece = createPiece('T');

        it("Figura T powinna byc figurą T",
            function() {

                expect(piece).toEqual(correctPiece);
            });
    });

