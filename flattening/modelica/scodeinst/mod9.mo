// name: mod9.mo
// keywords:
// status: correct
// cflags:   +d=scodeInst
//
// Class modifications not propagated.
//

model A
  type MyReal = Real;
  MyReal x;
end A;

model B
  extends A(MyReal(start = 2.0));
end B;

// Result:
// class B
//   Real x(start = 2.0);
// end B;
// endResult
