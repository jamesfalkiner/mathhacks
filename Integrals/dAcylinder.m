%dA=dxdy=dr/dv x dr/du dudv
clear all
syms v u r O x y z
rinput=input('input parameterised equation for cylinder (for two surfaces add together at the end :)) (e.g.) [v*cos(O) v*sin(O) v]\n');
drdv=diff(rinput,v)
drdO=diff(rinput,O)
scalefactor=simplify(cross(drdv,drdO))
%scalefactor=jacobian(rinput,[x y z])
disp('SIMPLE ANSWER remember dvdO at the end or..\n')
disp('solution')
modulus= simplify(sqrt(scalefactor(1).^2+scalefactor(2).^2+scalefactor(3).^2));
limitangtop=input('what is top limit of angles\n');
limitangbot=input('what is bottom limit of angles\n');
limittopv=input('what is top limit of v (usually z) e.g. 2\n');
limitbotv=input('what is bottom limit of v (usually z) e.g. 2\n');
toint=modulus;
angleinted=int(toint,O,limitangbot,limitangtop);
vinted=int(angleinted,v, limitbotv, limittopv)
disp('now add surface (not multiply)')
