function triMF = triMF(x, a, b, c)
  triMF = max(min((x-a)/(b-a), (c-x)/(c-b)), 0);
endfunction
