\ Model a3q3
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0.44 x[0] + 0.2 x[1] + 3.16 x[2] + 0.72 x[3]
Subject To
 Protein: 8.5 x[0] + 1.1 x[1] + 27 x[2] + 2.5 x[3] >= 67
 Fibre: 2.4 x[1] + 2.3 x[3] >= 30
 VitA: 15 x[0] + 2 x[1] + 5 x[2] + 64 x[3] >= 100
 VitD: 45 x[0] + 64 x[2] >= 100
 Calcium: 30 x[0] + 3 x[3] >= 100
Bounds
End
