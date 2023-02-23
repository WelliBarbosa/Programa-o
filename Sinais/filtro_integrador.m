%MRU

v0 = 0;
t = 0:0.1:4;
v = t*0;
a = 3;
k=1;
for i=0:0.1:4
  v(k)= v0 + a * i;
  plot(t,v);
  pause(.2)
  k=k+1;
end
