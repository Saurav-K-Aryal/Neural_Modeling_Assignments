%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% File: percepta.m			     %%%%%%%%%%%%%%%%
%%%%%% Author: Saurav Keshari Aryal  %%%%%%%%%%%%%%%%%%
%%%%%% Script file that uses an elementary perceptron to classify images%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('pictdata.m')
% number of samples of each class
K = 4;
hats = [hat1, hat2, hat3, hat4];
faces = [face1, face2, face3, face4];
robberries = [robbery1, robbery2, robbery3, robbery4];
%unclassed = []

% define output coding for classes
a = [0 1]'; %hats
b = [1 1]'; %faces
c = [1 0]'; %robberies
d = [0 0]'; %unclassified

% define targets
T = [a, b, c, c, a, c, a, c, b, a, b, b];

net = perceptron;
E = 1;
net.adaptParam.passes = 1;

n = 0;

while (sse(E) & n<1000)
   n = n+1;
   [net,Y,E] = adapt(net,samples,T);
end
