%% clean up

clear all
clc
close all


  %% This is firstpart where an operation is runned by object oriented classes. 
a=variable(10);
b=variable(2);
c=variable(6);
null=constant(0);%just for sigmoid function. used as a second arg 
x = placeholder()% same with variable but value will be installed the moment of calc.

%Below are operation codes which we use when we create one.As a 4th arg
toplama=0; %add
carpma=1;%multiply
matmul=3;%matrix multiply
sigmoid=4 %sigmoid 

op1=operation_cell('op1',a,x,carpma)
op2=operation_cell('op2',op1,c,toplama)
op3=operation_cell('op3',op1,null,sigmoid)

sess=Sessions(); % create a session so run the calculation under this session
result=sess.run(op3,6) %here '6' is a feed_dictionary. This value is uploaded to placeholder



%% this part we try simple classification.Formula is y>5 ise sonuc=1   y-5=0  ile sýnýr çizgimiz belli ediyoruz ve bu formule gore iþlemleri yapýyoruz en son sigmoid ile cararak 0 veya 1 arasnda cýkýs vermesini saglýyoruz;

null=constant(0);
toplama=0;
carpma=1;
matmul=3;
sigmoid=4

rng default; % For reproducibility

cluster1= randn(25,1)*3+20*ones(25,1) 
cluster2= randn(25,1)*3-6*ones(25,1) 
n = linspace(1,15,25)
%n=1:25
figure;

plot(n,cluster1,'.');
hold on;
plot(n,cluster2,'.');


features=[ cluster1 ;cluster2]
labels=  [zeros(25,1); ones(25,1) ]
% features*[1, 0] -5

x=placeholder()
w=variable([1,0])
b=variable(-5)
z=operation_cell('op1',w,x,matmul)
z2=operation_cell('op2',z,b,toplama)
z3=operation_cell('op3',z2,null,sigmoid)

sess=Sessions()

result=sess.run(z3,[60;30])




