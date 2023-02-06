

  g = @(x) 8/sqrt(400-x^2) + 8/sqrt(900-x^2) -1
  x = [ 30 ];

  for i = 1: 20
      x(i+1) = x(i) - f(x(i))/g(x(i));
      minimo = x(i+1);
  end
 
