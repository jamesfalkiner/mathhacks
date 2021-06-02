clear variables
syms r z O
asdf = int(r,z,r,sqrt(1-r.^2))
fddf=int(asdf,r,0,1/sqrt(2))
afdg=int(fddf,O,0,2*pi)