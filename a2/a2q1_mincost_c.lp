\ Model MinCostFlow
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  10 flow[a,b] + 70 flow[a,e] + 100 flow[a,d] + 40 flow[b,c] + 80 flow[b,e]
   + 60 flow[c,e] + 20 flow[c,f] - 60 flow[d,c] + 10 flow[e,f]
   + 30 flow[f,d]
Subject To
 bal[a]: flow[a,b] + flow[a,e] + flow[a,d] = 12
 bal[b]: - flow[a,b] + flow[b,c] + flow[b,e] = 6
 bal[c]: - flow[b,c] + flow[c,e] + flow[c,f] - flow[d,c] = 0
 bal[e]: - flow[a,e] - flow[b,e] - flow[c,e] + flow[e,f] = -6
 bal[f]: - flow[c,f] - flow[e,f] + flow[f,d] = -1
 bal[d]: - flow[a,d] + flow[d,c] - flow[f,d] = -11
Bounds
 flow[a,b] <= 5
 flow[a,e] <= 2
 flow[a,d] <= 6.5
 flow[b,c] <= 5.5
 flow[b,e] <= 8
 flow[c,e] <= 7
 flow[c,f] <= 15
 flow[d,c] <= 4
 flow[e,f] <= 9
 flow[f,d] <= 10
End
