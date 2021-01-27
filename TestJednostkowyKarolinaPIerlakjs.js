/// <reference path="../js/snake.js" />
/// <reference path="../scripts/jasmine/jasmine.js" />


describe("Sterowanie w lewo, klawisz 'a'", 
    function () {
        beforeEach(function() {
            event = new KeyboardEvent('keypress', { 'keyCode': 65 });
            snakeSpeedX = 0;
            snakeSpeedY = 0;
            sign = 0;
            KeyPush(event);
        });

        it("Predkość snaka x = -1",
            function() {

                expect(snakeSpeedX).toEqual(-1);
            });
        it("Predkość snaka y = 0",
            function() {

                expect(snakeSpeedY).toEqual(0);
            });

    });



describe("Sterowanie w lewo, klawisz 's'",
    function () {
        beforeEach(function () {
            event = new KeyboardEvent('keypress', { 'keyCode': 83 });
            snakeSpeedX = 0;
            snakeSpeedY = 0;
            sign = 0;
            KeyPush(event);
        });

        it("Predkość snaka x = 0",
            function () {

                expect(snakeSpeedX).toEqual(0);
            });
        it("Predkość snaka y = 1",
            function () {

                expect(snakeSpeedY).toEqual(1);
            });
    });

describe("Sterowanie w prawo, klawisz 'd'",
    function () {
        beforeEach(function () {
            event = new KeyboardEvent('keypress', { 'keyCode': 68 });
            snakeSpeedX = 0;
            snakeSpeedY = 0;
            sign = 0;
            KeyPush(event);
        });

        it("Predkość snaka x = 1",
            function () {

                expect(snakeSpeedX).toEqual(1);
            });
        it("Predkość snaka y = 0",
            function () {

                expect(snakeSpeedY).toEqual(0);
            });

    });

describe("Sterowanie w lewo, klawisz 'w'",
    function () {
        beforeEach(function () {
            event = new KeyboardEvent('keypress', { 'keyCode': 87 });
            snakeSpeedX = 0;
            snakeSpeedY = 0;
            sign = 0;
            KeyPush(event);
        });

        it("Predkość snaka x = 0",
            function () {

                expect(snakeSpeedX).toEqual(0);
            });
        it("Predkość snaka y = -1",
            function () {

                expect(snakeSpeedY).toEqual(-1);
            });
    });