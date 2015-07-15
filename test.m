order = 3;
FFTnum = 128;

figure();
plot(pyulear(test_walking(:,1) , order, FFTnum),'m')
hold on;
plot(pyulear(test_upstairs(:,1) , order, FFTnum),'y')
plot(pyulear(test_downstairs(:,1) , order, FFTnum),'r')
plot(pyulear(test_sitting(:,1) , order, FFTnum),'g')
plot(pyulear(test_standing(:,1) , order, FFTnum),'k')
plot(pyulear(test_elevatorup(:,1) , order, FFTnum),'c')
plot(pyulear(test_elevatordown(:,1) , order, FFTnum),'b')

figure();
plot(pyulear(model_walking(:,1) , order, FFTnum),'m')
hold on;
plot(pyulear(model_upstairs(:,1) , order, FFTnum),'y')
plot(pyulear(model_downstairs(:,1) , order, FFTnum),'r')
plot(pyulear(model_sitting(:,1) , order, FFTnum),'g')
plot(pyulear(model_standing(:,1) , order, FFTnum),'k')
plot(pyulear(model_elevatorup(:,1) , order, FFTnum),'c')
plot(pyulear(model_elevatordown(:,1) , order, FFTnum),'b')


legend model_walking model_upstairs model_downstairs model_sitting model_standing model_elevatorup model_elevatordown