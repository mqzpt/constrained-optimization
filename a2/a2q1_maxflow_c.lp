\ Model MaxFlow
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  flow[d,t] + flow[e,t]
Subject To
 cap[s,a]: flow[s,a] <= 15
 cap[s,b]: flow[s,b] <= 6
 cap[s,c]: flow[s,c] <= 4
 cap[a,b]: flow[a,b] <= 3
 cap[a,d]: flow[a,d] <= 7
 cap[b,d]: flow[b,d] <= 8
 cap[b,e]: flow[b,e] <= 9.2
 cap[c,b]: flow[c,b] <= 0.2
 cap[c,e]: flow[c,e] <= 3.8
 cap[d,t]: flow[d,t] <= 7
 cap[e,d]: flow[e,d] <= 12
 cap[e,t]: flow[e,t] <= 18
 conserve[a]: - flow[s,a] + flow[a,b] + flow[a,d] = 0
 conserve[b]: - flow[s,b] - flow[a,b] + flow[b,d] + flow[b,e] - flow[c,b]
   = 0
 conserve[c]: - flow[s,c] + flow[c,b] + flow[c,e] = 0
 conserve[d]: - flow[a,d] - flow[b,d] + flow[d,t] - flow[e,d] = 0
 conserve[e]: - flow[b,e] - flow[c,e] + flow[e,d] + flow[e,t] = 0
Bounds
End
