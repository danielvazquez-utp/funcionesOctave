function trapMF = trapMF(x, a, b, c, d)
  trapMF = max(min(min((x-a)/(b-a), (d-x)/(d-c)), 1), 0);
endfunction
