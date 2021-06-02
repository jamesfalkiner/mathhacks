syms x y z a b

syms x y z a b

carty = input('insert x in terms of y, i.e. (4-y).^(1/2)\n');
cartx = input('insert y in terms of x, i.e. 4-x.^2\n');
inputinnertop = input('insert inner top limit\n');
inputinnerbottom = input('insert inner bottom limit\n');
innerinterms = input('insert what the inner integral is in terms of e.g. x\n');
inputoutertop = input('insert outer top limit\n');
inputouterbottom = input('insert outer bottom limit\n');
outerinterms = input('insert what the outer integral is in terms of e.g. y\n');

newxlim1 = subs(carty, outerinterms, inputoutertop);
newxlim2 = subs(carty, outerinterms,inputouterbottom);
newylim1 =subs(cartx, innerinterms,inputinnertop);
newylim2 =subs(cartx, innerinterms,inputinnerbottom);

if floor(newxlim1) ~= ceil(newxlim1)
   newxlim1= subs(carty,outerinterms,newylim1);
   if newxlim1 == newxlim2
       newxlim1= subs(carty,outerinterms,newylim2);
   end
elseif floor(newxlim2) ~= ceil(newxlim2)
   newxlim2= subs(carty,outerinterms,newylim2);
   if newxlim1 == newxlim2
       newxlim2= subs(carty,outerinterms,newylim1);
   end
elseif floor(newylim1) ~= ceil(newylim1)
   newylim1= subs(cartx,innerinterms,newxlim1);
   if newylim1 == newylim2
       newylim1= subs(cartx,innerinterms,newxlim2);
   end
elseif floor(newylim2) ~= ceil(newylim2)
   newylim2= subs(cartx,innerinterms,newxlim2);
   if newxlim1 == newxlim2
       newylim2= subs(cartx,innerinterms,newxlim1);
   end
end

disp('inner limit 1 =')
disp(' ')
disp(newxlim1)
disp('inner limit 2 =')
disp(' ')
disp(newxlim2)
disp('outer limit 1 =')
disp(' ')
disp(newylim1)
disp('outer limit 2 =')
disp(' ')
disp(newylim2)


%hard to do with algorithm.
%Step 1 -  Draw picture of region
%determine corners and edges of region D or write down equation of edge
%https://mathinsight.org/double_integral_change_order_integration_examples
%swap borders (make in terms of x instead of y, or in terms of y instead
%of x)
%once limits have been changed you can integrate using the double
%integrater.