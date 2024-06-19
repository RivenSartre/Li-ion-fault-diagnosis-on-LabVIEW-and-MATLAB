function [mminput] =maxminscale(input)
    [n,m]=size(input);
    mminput=zeros(n,m);
    MAX=[0.95,0.006660793,0.000615539,0.000306632,0.000226876,1.637694209,1.403971415,1.099346142,1.319770328];
    MIN=[0.2,0.004160037,0.000384439,0.000191509,0.000141696,0.171857837,0.12102413,0.097630123,0.10436248];
    for i=1:n
        for j=1:m
            mminput(i,j)=(input(i,j)-MIN(j))/(MAX(j)-(MIN(j)));
        end 
    end
end

