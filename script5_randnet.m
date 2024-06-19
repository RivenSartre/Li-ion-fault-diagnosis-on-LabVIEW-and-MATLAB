a1=unifrnd(0.201,0.95);
a2=unifrnd(0.0042,0.00661);
a3=unifrnd(0.00039,0.000616);
a4=unifrnd(0.000192,0.000307);
a5=unifrnd(0.000142,0.000227);
a6=unifrnd(0.171858,1.637694);
a7=unifrnd(0.121024,1.403971);
a8=unifrnd(0.09763,1.099346);
a9=unifrnd(0.104362,1.31977);
input=[a1;a2;a3;a4;a5;a6;a7;a8;a9];
mminput=zeros(9,1);
MAX=[0.95;0.00666079;0.000615539;0.000306632;0.000226876;1.637694209;1.403971415;1.099346142;1.319770328];
MIN=[0.2;0.004160037;0.000384439;0.000191509;0.000141696;0.171857837;0.12102413;0.097630123;0.10436248];
for i=1:9
    mminput(i)=abs((input(i)-MIN(i))/(MAX(i)-(MIN(i))));
end

simtest = sim(net, mminput); %3*6
result=zeros(4,1);

for j=1:3
     if simtest(j)>=0.5
            result(j)=1;
     end
end
a=result(1)+result(2)+result(3);
if a==0
    result(4)=1;
end


