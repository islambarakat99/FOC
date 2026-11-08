clear;clc;
% Electrical
V_DC = 12;
Vs_max = V_DC / sqrt(3);
Rs = 0.0149;
Ld = 6.31e-5;
Lq = 7.72e-5;
Ls = 7.015e-5;
Iq_max = 62.5;
Id_max = -62.5;
Is_max = 125;

% Frequency
fs = 20e3;
Ts = 1/fs;
wcc = (2 * pi * fs ) / 20; % Control BandWidth wcc < (2*pi*fs / 25)

% Magnetic
p = 6;
Ypm = 7.89e-3;

% Mechanical 
J = 0.004;
B = 1e-4;
Te_min = -2.4;
Te_max = 2.4;
TL = 1.67;

% PID
Kp_w = 10;
Ki_w = 15;

Kp_id = 90;
Ki_id = 50;

Kp_iq = 0.4851;
Ki_iq = 93.62;

% Anti-WindUp
Ka_w = 1 / Kp_w;
Ka_iq = 1 / Kp_iq;
Ka_id = 1 / Kp_id;


%Kest = 1;
%Test = 0.00001;
Kest = Rs/Ls;
Test = Ls/Rs;
Kp_ll= 2500000;
Kw_Y = 7.98e-3;



K_Iq_st = 22222222;
Iq_st_max = 12;
