Minimize
  targ: z

Subject To
  b2: -2 p1 - 2 p2 + 5 p3 + 7 p4 + 9 p5 - z <= 0
  b4:  1 p1 - 4 p2 - 4 p3 + 7 p4 + 9 p5 - z <= 0
  b6:  1 p1 + 3 p2 - 6 p3 - 6 p4 + 9 p5 - z <= 0
  b8:  1 p1 + 3 p2 + 5 p3 - 8 p4 - 8 p5 - z <= 0
  simplex: p1 + p2 + p3 + p4 + p5 = 1

Bounds
  p1 >= 0
  p2 >= 0
  p3 >= 0
  p4 >= 0
  p5 >= 0
  z free

End