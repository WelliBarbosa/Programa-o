function new = number_frequency(low,high)
  
  low = freq_low(low);
  high = freq_high(high);
  tam_low = length(low);
  tam_high = length(high);
  new = zeros(1,tam_low);
  
  if(tam_low == tam_high)
    for( i = 1:tam_low)
      if(low(i) == 697)
        if(high(i) == 1209)
          new(i) = 1;
          elseif(high(i) == 1336)
          new(i) = 2;
          elseif(high(i) == 1477)
          new(i) = 3;
        end
      elseif(low(i) == 770)
        if(high(i) == 1209)
          new(i) = 4;
          elseif(high(i) == 1336)
          new(i) = 5;
          elseif(high(i) == 1477)
          new(i) = 6;
        end
      elseif(low(i) == 852)
        if(high(i) == 1209)
          new(i) = 7;
          elseif(high(i) == 1336)
          new(i) = 8;
          elseif(high(i) == 1477)
          new(i) = 9;
        end
      elseif((low(i) == 941) &&(high(i) == 1336))
        new(i) = 0;
      end
    end
    
      
  else
  printf("Error")
  end
  
end
