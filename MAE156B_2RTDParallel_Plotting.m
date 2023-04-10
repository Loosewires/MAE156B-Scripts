% This script will plot 2 RTD parallel 48V tests

% Giordano Liska
% Cohu - TCU
% Created: 04-09-2023

clear; clc; close all;

%% Import Data

RTD.data = readmatrix('48V_2RTDParallel_Test1.txt');
RTD.data = RTD.data(1:146);
RTD.time = 0:0.5:length(RTD.data)/2;
RTD.time(end) = [];

RTD2.data = readmatrix('48V_2RTDParallel_Test2.txt');
RTD2.data = RTD2.data(1:140);
RTD2.time = 0:0.5:length(RTD2.data)/2;
RTD2.time(end) = [];

RTD3.data = readmatrix('48V_2RTDParallel_Test3.txt');
RTD3.data = RTD3.data(1:143);
RTD3.time = 0:0.5:length(RTD3.data)/2;
RTD3.time(end) = [];

%% Plot Data

figure(1)
plot(RTD.time, RTD.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(130, Color = [.8 0 .2], LineStyle = "--");
xline(70.605, Color = [.8 0 .2], LineStyle = "--");
plot(70.605, 130, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(45, 135, 'Temperature: 130C');
text(55, 90, 'Time: 70.60s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('2 RTD in Parallel 48V Experiment 1');
grid on

figure(2)
plot(RTD2.time, RTD2.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(130, Color = [.8 0 .2], LineStyle = "--");
xline(67.8, Color = [.8 0 .2], LineStyle = "--");
plot(67.8, 130, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(45, 135, 'Temperature: 130C');
text(52.5, 90, 'Time: 70.60s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('2 RTD in Parallel 48V Experiment 2');
grid on

figure(3)
plot(RTD3.time, RTD3.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(130, Color = [.8 0 .2], LineStyle = "--");
xline(68.6, Color = [.8 0 .2], LineStyle = "--");
plot(68.6, 130, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(45, 135, 'Temperature: 130C');
text(52.5, 90, 'Time: 70.60s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('2 RTD in Parallel 48V Experiment 3');
grid on