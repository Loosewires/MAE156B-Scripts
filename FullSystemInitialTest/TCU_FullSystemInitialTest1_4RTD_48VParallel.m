% This script will plot Initial RTD

% Giordano Liska
% MAE 156B - Cohu TCU
% Created: 5-8-2023

clear, clc, close all;
%% Import Data

RTD.data = readmatrix('4RTD_48V_RampUpRampDown_Test1.dat');
RTD.temp = RTD.data(1:end,1);
RTD.time = 0:0.1:length(RTD.temp)/10;
RTD.time(end) = [];


RTD2.data = readmatrix('4RTD_48V_RampUpRampDown_Test2.dat');
RTD2.temp = RTD2.data(1:end,1);
RTD2.time = 0:0.1:length(RTD2.temp)/10;
RTD2.time(end) = [];

RTD3.data = readmatrix('4RTD_48V_RampUpRampDown_Test3.dat');
RTD3.temp = RTD3.data(1:end,1);
RTD3.time = 0:0.1:length(RTD3.temp)/10;
RTD3.time(end) = [];


%% Plot Data: Test1

figure(1)
plot(RTD.time, RTD.temp, LineWidth = 1.5, Color = [0 .1 .9]);
hold on

xline(22.62, Color=[.8 0 .2], LineStyle="--");
plot(22.62, 130, "o", Color=[0 .85 .15], MarkerFaceColor=[0 .85 .15]);
text(2, 135, 'Ambient to 130C:');
text(2, 130, '22.6s');

xline(34.24, Color=[.8 0 .2], LineStyle="--");
plot(34.24, 63.6, "o", Color=[0 .85 .15], MarkerFaceColor=[0 .85 .15]);
text(36, 70, '130C to 63.6C:');
text(36, 65, '11.6s');

xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('4 RTD in Parallel 48V Experiment 1');
grid on

%% Plot Data: Test2

figure(2)
plot(RTD2.time, RTD2.temp, LineWidth = 1.5, Color = [0 .1 .9]);
hold on

xline(20.965, Color = [.8 0 .2], LineStyle = "--");
plot(20.965, 130, "*", Color = [0 .85 .15], LineWidth = 1.5);
text(1, 135, 'Ambient to 130C:');
text(1, 130, '21.0s');

xline(32.514, Color = [.8 0 .2], LineStyle = "--");
plot(32.51, 63.6, "*", Color = [0 .85 .15], LineWidth = 1.5);
text(35, 65, '130C to 63.6C:');
text(35, 60, '11.55s');

xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('4 RTD in Parallel 48V Experiment 2');
grid on

%% Plot Data: Test3

figure(3)
plot(RTD3.time, RTD3.temp, LineWidth = 1.5, Color = [0 .1 .9]);
hold on

xline(22.3, Color = [.8 0 .2], LineStyle = "--");
plot(22.3, 130, "*", Color = [0 .85 .15], LineWidth = 1.5);
text(1, 135, 'Ambient to 130C:');
text(1, 130, '22.3s');

xline(33.81, Color = [.8 0 .2], LineStyle = "--");
plot(33.81, 63.6, "*", Color = [0 .85 .15], LineWidth = 1.5);
text(36, 65, '130C to 63.6C:');
text(36, 60, '11.51s');

xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('4 RTD in Parallel 48V Experiment 3');
grid on