function y = rampD(n)
  y = ramp(n);
  I = find(round(n) ~= n);
  Y(I) = NaN ;
 end