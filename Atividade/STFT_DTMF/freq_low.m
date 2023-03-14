function new = freq_low(n)
  tamanho = length(n);
  new = n ; 
  for i = 1 : tamanho
    if((n(i) > 650) &&(n(i) < 740))
      new(i) = 697;
    elseif ((n(i) > 740) &&(n(i) < 830))
      new(i) = 770;
    elseif ((n(i) > 830) &&(n(i) < 900))
      new(i) = 852;
    elseif (n(i)> 900)
      new(i) = 941;
    end
  end
  
end
