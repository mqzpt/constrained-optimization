\ Model MinCostFlow
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  10 x[a,b] + 70 x[a,e] + 100 x[a,d] + 40 x[b,c] + 80 x[b,e] + 60 x[e,c]
   - 60 x[c,d] + 20 x[c,f] + 10 x[e,f] + 30 x[f,d]
Subject To
 bal[a]: = 12
 bal[b]: = 6
 bal[c]: = 0
 bal[d]: = -11
 bal[e]: = -6
 bal[f]: = -1
Bounds
 x[a,b] <= 5
 x[a,e] <= 2
 x[a,d] <= 9
 x[b,c] <= 5
 x[b,e] <= 8
 x[e,c] <= 7
 x[c,d] <= 4
 x[c,f] <= 15
 x[e,f] <= 9
 x[f,d] <= 10
Generals
 x[a,b] x[a,e] x[a,d] x[b,c] x[b,e] x[e,c] x[c,d] x[c,f] x[e,f] x[f,d]
End
