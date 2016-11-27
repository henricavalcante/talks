function module() {
  "use asm";

  function sum(a, b) {
    a = a | 0;
    b = b | 0;
    return a + b;
  }

  return {sum: sum};
}
