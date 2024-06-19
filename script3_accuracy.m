mall=0;mm=zeros(1,3);
[n,m]=size(output);
q=0.5;
result = zeros(n,m);
for i=1:m
    for j=1:n
        if simtest(j,i)>=q
            result(j,i)=1;
        end
    end
end
for i=1:m
    a=output(1,i)*1+output(2,i)*2+output(3,i)*4;
    b=result(1,i)*1+result(2,i)*2+result(3,i)*4;
    if a==b
        mall=mall+1;
    end
    for j=1:n
        if output(j,i)==result(j,i)
            mm(j)=mm(j)+1;
        end
    end
    
end
accall=mall/m;
acc1=mm(1)/m;
acc2=mm(2)/m;
acc3=mm(3)/m;