%% First harmonic

% Creating time vector 't':
t = 1: 0.1 :10;

% Generating a sinusoidal signal from the 't':
y = sin(t);

% Creating and setting up plot:
plot(t,y,'LineWidth',3); 
grid on;
title ('First harmonic');

%% Adding third harmonic

% Generating a signal with third harmonic from sinusoidal signal 'y' by adding
% a higher frequency of three times and correspondingly lower amplitude:
y3 = sin(t) + sin(3*t)/3;

% Creating and setting up plot:
plot(t,y3,'LineWidth',3); 
grid on;
hold on;
title ('First and third harmonics');

% Adding 'y' and 'y3' for comparison:
plot (t,y,'LineWidth',2,'LineStyle','-')
plot(t,sin(3*t)/3,'LineWidth',1,'LineStyle','--'); 
hold off;

%% Adding 5,7 and 9 harmonics

% Generating a signal with third harmonic from sinusoidal signal 'y' by adding
% a higher frequency of 5,7 and 9 times and correspondingly lower amplitude:
y5 = sin(t) + sin(5*t)/5;
y7 = sin(t) + sin(7*t)/7;
y9 = sin(t) + sin(9*t)/9;

% Creat S - summ of harmonics:
S = sin(t) + sin(3*t)/3 + sin(5*t)/5 + sin(7*t)/7 + sin(9*t)/9;

% Creating and setting up plot:
plot(t,S,'LineWidth',3); 
grid on;
hold on;
title ('First and 3,5,7,9 harmonics');

% Adding 'y' and 'y3','y5','y7','y9' for comparison:
plot (t,y,'LineWidth',2,'LineStyle','-')
plot(t,sin(3*t)/3,t,sin(5*t)/5,t,sin(7*t)/7,t,sin(9*t)/9,'LineWidth',1,'LineStyle','--'); 
hold off;