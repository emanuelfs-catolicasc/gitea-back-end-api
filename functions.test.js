const {
    add,
    subtract,
    multiply,
    divide,
    double,
} = require("./functions");

test("10 + 2 = 12", () => {
    expect(add(10, 2)).toBe(12);
});

test("10 - 2 = 8", () => {
    expect(subtract(10, 2)).toBe(8);
});

test("10 * 2 = 20", () => {
    expect(multiply(10, 2)).toBe(20);
});

test("10 / 2 = 5", () => {
    expect(divide(10, 2)).toBe(5);
});

test("Dobro de 50", () => {
    expect(double(50)).toBe(100);
});
