values = dlmread('values.txt',';');

t = values(:,1);
j1_d = values(:,2);
j1_c = values(:,3);
j2_d = values(:,4);
j2_c = values(:,5);
j3_d = values(:,6);
j3_c = values(:,7);

figure
subplot(1,3,1)
hold on
plot(t,j1_d);
plot(t,j1_c);

subplot(1,3,2)
hold on
plot(t,j2_d);
plot(t,j2_c);

subplot(1,3,3)
hold on
plot(t,j3_d);
plot(t,j3_c);
