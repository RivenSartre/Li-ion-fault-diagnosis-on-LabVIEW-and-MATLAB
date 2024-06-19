load net.mat
load input.mat
%input=[cell1,cell2,cell3,cell4,cell5,cell6];% 9*6
[m,n]=size(input);
mminput=zeros(m,n);
MAX=[0.95;0.00666079;0.000615539;0.000306632;0.000226876;1.637694209;1.403971415;1.099346142;1.319770328];
MIN=[0.2;0.004160037;0.000384439;0.000191509;0.000141696;0.171857837;0.12102413;0.097630123;0.10436248];
for i=1:n
    for j=1:m
        mminput(j,i)=(input(j,i)-MIN(j))/(MAX(j)-(MIN(j)));
    end 
end

simtest = sim(net, mminput); %3*6
result=zeros(4,6);
q=0.5;
for i=1:6
    for j=1:3
        if simtest(j,i)>=0.5
            result(j,i)=1;
        end
    end
end
for i=1:6
    a=result(1,i)+result(2,i)+result(3,i);
    b=input(1,i)+input(2,i)+input(3,i)+input(4,i)+input(5,i)+input(6,i)+input(7,i)+input(8,i)+input(9,i);
    if a==0
        result(4,i)=1;
    end
    if b==0
        result(:,i)=[0;0;0;0];
    end
end

        

