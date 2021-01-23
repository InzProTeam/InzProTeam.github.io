/// <reference path="../js/tetris.js" />
/// <reference path="../scripts/jasmine/jasmine.js" />

describe("Figura I", function () {
    var piece = createPiece('I');
    var correctPiece = [
        [0, 1, 0, 0],
        [0, 1, 0, 0],
        [0, 1, 0, 0],
        [0, 1, 0, 0],
    ];

    it("Figura I powinna byc figurą I",function() {
        
        expect(piece).toEqual(correctPiece);
    })
})

describe("Figura L", function () {
    var piece = createPiece('L');
    var correctPiece = [
        [0, 2, 0],
        [0, 2, 0],
        [0, 2, 2],
    ];

    it("Figura L powinna byc figurą L", function () {

        expect(piece).toEqual(correctPiece);
    })
})

describe("Figura J", function () {
    var piece = createPiece('J');
    var correctPiece = [
        [0, 3, 0],
        [0, 3, 0],
        [3, 3, 0],
    ];

    it("Figura J powinna byc figurą J", function () {

        expect(piece).toEqual(correctPiece);
    })
})

describe("Figura O", function () {
    var piece = createPiece('O');
    var correctPiece = [
        [4, 4],
        [4, 4],
    ];

    it("Figura O powinna byc figurą O", function () {

        expect(piece).toEqual(correctPiece);
    })
})

describe("Figura Z", function () {
    var piece = createPiece('Z');
    var correctPiece = [
        [5, 5, 0],
        [0, 5, 5],
        [0, 0, 0],
    ];

    it("Figura Z powinna byc figurą Z", function () {

        expect(piece).toEqual(correctPiece);
    })
})

describe("Figura S", function () {
    var piece = createPiece('S');
    var correctPiece = [
        [0, 6, 6],
        [6, 6, 0],
        [0, 0, 0],
    ];

    it("Figura S powinna byc figurą S", function () {

        expect(piece).toEqual(correctPiece);
    })
})

describe("Figura T", function () {
    var piece = createPiece('T');
    var correctPiece = [
        [0, 7, 0],
        [7, 7, 7],
        [0, 0, 0],
    ];

    it("Figura T powinna byc figurą T", function () {

        expect(piece).toEqual(correctPiece);
    })
})

