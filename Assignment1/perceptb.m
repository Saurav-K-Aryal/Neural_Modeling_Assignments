%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% File: perceptb.m 			     %%%%%%%%%%%%%%%%
%%%%%% Author: Saurav Keshari Aryal  %%%%%%%%%%%%%%%%%%
%%%%%% Script file to classify only odd parity values%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
samples = [0 0 0 0 0; 0 0 0 0 1; 0 0 0 1 0; 0 0 0 1 1; 0 0 1 0 0; 0 0 1 0 1; 0 0 1 1 0; 0 0 1 1 1; 0 1 0 0 0; 0 1 0 0 1; 0 1 0 1 0; 0 1 0 1 1; 0 1 1 0 0; 0 1 1 0 1; 0 1 1 1 0; 0 1 1 1 1; 1 0 0 0 0; 1 0 0 0 1; 1 0 0 1 0; 1 0 0 1 1; 1 0 1 0 0; 1 0 1 0 1; 1 0 1 1 0; 1 0 1 1 1; 1 1 0 0 0; 1 1 0 0 1; 1 1 0 1 0; 1 1 0 1 1; 1 1 1 0 0; 1 1 1 0 1; 1 1 1 1 0; 1 1 1 1 1; 1 0 0 0 0; 1 0 0 0 1; 1 0 0 1 0; 1 0 0 1 1; 1 0 0 0 0; 1 0 0 0 1; 1 0 0 1 1; 1 0 0 1 1; 1 0 1 0 0; 1 0 1 0 0; 1 0 1 0 1; 1 0 1 0 1; 1 0 1 1 0; 1 0 1 1 0; 1 0 1 1 1; 1 0 1 1 1; 1 1 0 0 0; 1 1 0 0 0; 1 1 0 0 1; 1 1 0 0 1; 1 1 0 1 0; 1 1 0 1 0; 1 1 0 1 1; 1 1 0 1 1; 1 1 1 0 0; 1 1 1 0 0; 1 1 1 0 1; 1 1 1 0 1 ; 1 1 1 1 0; 1 1 1 1 0; 1 1 1 1 1; 1 1 1 1 1];

target = [0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1; 0; 1];

size(samples)
size(target)
net = perceptron;
net.init;
dlmwrite('Initialize.txt', net.IW);
dlmwrite('Initialize2.txt', net.LW);
dlmwrite('Initialize3.txt', net.b);

E = 1;
net.adaptParam.passes = 1;


while (sse(E) & n<1000)
   n = n+1;
   [net,Y,E] = adapt(net,samples,target);
end

dlmwrite('Finalize.txt', net.IW);
dlmwrite('Finalize2.txt', net.LW);
dlmwrite('Finalize3.txt', net.b);
