carsdata;
x = samples;
t = targets;

net = fitnet(10, 'trainrp');
net.trainParam.epochs = 2000;
net.trainParam.goal = 0.0001;
net.trainParam.lr = 0.0001;

net = train(net, x, t);