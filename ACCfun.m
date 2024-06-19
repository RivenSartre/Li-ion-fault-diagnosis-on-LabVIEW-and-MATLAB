function [accall,acc1,acc2,acc3] = ACCfun(output,simtest)
mall=0;m=zero(1,3);
[n,m]=size(output);
for i=1:n
    a=output(i,1)*1+output(i,2)*2+output(i,3)*4;
    b=simtest(i,1)*1+simtest(i,2)*2+simtest(i,3)*4;
    if a==b
        mall=mall+1;
    end
    for j=1:m
        if output(i,j)==simtest(i,j)
            m(j)=m(j)+1;
        end
    end
    
end
accall=mall/n;
acc1=m(1)/n;
acc2=m(2)/n;
acc3=m(3)/n;
end

