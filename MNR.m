function minimo = MNR (v,po,pf,e)
  
  f = @(x) v(1)*x^(3) + v(2)*x^(2) + v(3)*x^(1)+ v(4)*x^(0)
  #df = @(x) 3*v(4)*x^(2) +2*v(3)*x^(1) + v(2)
  df = @(x) 3*v(1)*x^(2) + 2*v(2)*x^(1) + v(3)
  n = 150;
  x = [(pf+po)/2];
  e = 0.001;

for i = 1: n
    x(i+1) = x(i) - f(x(i))/df(x(i));
    minimo = x(i+1);
    if (abs(x(i+1) - x(i)) < e) && (abs(f(x(i+1)))<e)
      break
    end
end