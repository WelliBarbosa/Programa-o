function new = freq_high(n)
  tamanho = length(n);
  new = n ; 
  for i = 1 : tamanho
    if((n(i) > 1180) &&(n(i) < 1250))
      new(i) = 1209;
    elseif ((n(i) > 1250) &&(n(i) < 1376))
      new(i) = 1336;
    elseif ((n(i) > 1386) &&(n(i) < 1500))
      new(i) = 1477;
    end
  end
  
end
