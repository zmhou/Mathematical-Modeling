x=[-0.4357   -1.2404];
lei=5;
z=[-7.30358754259623,-6.64687765601312,-5.32622488837994,-4.61278270898859,-3.63760524438050,-2.27860272187538,-1.09625320283630,-0.317639066595691,0.460972555741536,1.23958444823612,2.01819656142335,2.79680819256576,3.57542034168973,4.35403169686950,5.13264331141664,5.91125512347735,6.68986887569802;];
for i=1:17
    y(i)=lei/(1+exp(x(1)+x(2)*z(i)));
end
