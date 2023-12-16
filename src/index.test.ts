import { isEven, isOdd } from ".";

// This is a test suite
// Start with a description of what you're testing
describe("This crust rocks 🤘", () => {
  // Then write your tests
  // One case per one `it` block
  it("should be even", () => {
    expect(isEven(2)).toBe(true);
  });

  it("should be odd", () => {
    expect(isOdd(1)).toBe(true);
  });
});
