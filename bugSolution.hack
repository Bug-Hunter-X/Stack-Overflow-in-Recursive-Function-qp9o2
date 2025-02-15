function foo(x: int): int {
  var result: int = 1;
  for (var i = 1; i <= x; ++i) {
    result *= i;
  }
  return result;
}

function bar(x: int): int {
  if (x < 0) {
    return 0;
  } else {
    return foo(x);
  }
}

function main(): void {
  echo bar(5);
  echo bar(-1);
}
This solution replaces the recursive implementation of the factorial function with an iterative one, avoiding the stack overflow error.