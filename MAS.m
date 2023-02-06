function minimo = MAS (f,Io,I_f,n)

  Io = 3;
  I_f = 4;
  x = [ f((Io+I_f)/2)];
  for i = 1 :n
      x(i+1) = f(x(i));
      minimo = x(i+1);
  end

  