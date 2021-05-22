syms x y z a b

syms x y z a b

carty = input('insert x in terms of y, i.e. (4-y).^(1/2)\n');
cartx = input('insert y in terms of x, i.e. 4-x.^2\n');
inputxtop = input('insert x top limit');
inputxbottom = input('insert x bottom limit');
inputytop = input('insert y top limit');
inputybottom = input('insert y bottom limit');

newxlim1 = subs(carty, y, inputytop);
newxlim2 = subs(carty, y,inputybottom);
newylim1 =subs(cartx, x,inputxtop);
newylim2 =subs(cartx, x,inputxbottom);

if floor(newxlim1) ~= ceil(newxlim1)
   newxlim1= subs(carty,y,newylim1);
   if newxlim1 == newxlim2
       newxlim1= subs(carty,y,newylim2);
   end
elseif floor(newxlim2) ~= ceil(newxlim2)
   newxlim2= subs(carty,y,newylim2);
   if newxlim1 == newxlim2
       newxlim2= subs(carty,y,newylim1);
   end
elseif floor(newylim1) ~= ceil(newylim1)
   newylim1= subs(cartx,x,newxlim1);
   if newylim1 == newylim2
       newylim1= subs(cartx,x,newxlim2);
   end
elseif floor(newylim2) ~= ceil(newylim2)
   newylim2= subs(cartx,x,newxlim2)
   if newxlim1 == newxlim2
       newylim2= subs(cartx,x,newxlim1);
   end
end

disp('x limit 1 =')
disp(' ')
disp(newxlim1)
disp('x limit 2 =')
disp(' ')
disp(newxlim2)
disp('y limit 1 =')
disp(' ')
disp(newylim1)
disp('y limit 2 =')
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