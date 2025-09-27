\ Model MinCostFlow
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  10 flow[a,b] + 70 flow[a,e] + 100 flow[a,d] + 40 flow[b,c] + 80 flow[b,e]
   + 60 flow[c,e] + 20 flow[c,f] - 60 flow[d,c] + 10 flow[e,f]
   + 30 flow[f,d]
Subject To
 cap[]: flow[a,b] <= 5
 cap[]: flow[a,e] <= 2
 cap[]: flow[a,d] <= 9
 cap[]: flow[b,c] <= 5
 cap[]: flow[b,e] <= 8
 cap[]: flow[c,e] <= 7
 cap[]: flow[c,f] <= 15
 cap[]: flow[d,c] <= 4
 cap[]: flow[e,f] <= 9
 cap[]: flow[f,d] <= 10
 balance[a]: flow[a,b] + flow[a,e] + flow[a,d] = 12
 balance[b]: - flow[a,b] + flow[b,c] + flow[b,e] = 6
 balance[c]: - flow[b,c] + flow[c,e] + flow[c,f] - flow[d,c] = 0
 balance[e]: - flow[a,e] - flow[b,e] - flow[c,e] + flow[e,f] = -6
 balance[f]: - flow[c,f] - flow[e,f] + flow[f,d] = -1
 balance[d]: - flow[a,d] + flow[d,c] - flow[f,d] = -11
Bounds
End
