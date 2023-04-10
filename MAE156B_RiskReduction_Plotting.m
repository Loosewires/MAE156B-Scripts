% This script will plot data from cartridge heater risk reduction test

% Giordano Liska
% Cohu - TCU Risk Reduction
% Created: 03-19-2023

clear; clc; close all;

%% Load Data

RTD.data = readmatrix('thermal_pad_1.txt');
RTD.data = RTD.data(1:247);
RTD.time = 0:0.5:length(RTD.data)/2;
RTD.time(end) = [];

RTD2.data = readmatrix('thermal_pad_2.txt');
RTD2.data = RTD2.data(1:227);
RTD2.time = 0:0.5:length(RTD2.data)/2;
RTD2.time(end) = [];

RTD3.data = readmatrix('thermal_pad_3.txt');
RTD3.data = RTD3.data(1:235);
RTD3.time = 0:0.5:length(RTD3.data)/2;
RTD3.time(end) = [];

RTD4.data = readmatrix('thermal_pad_48_1.txt');
RTD4.data = RTD4.data(1:82);
RTD4.time = 0:0.5:length(RTD4.data)/2;
RTD4.time(end) = [];

% volts48.data = readmatrix('48_V.txt');
% volts48.time = 0:0.5:length(volts48.data)/2;
% volts48.time(end) = [];

%% Plot Data

figure(1)
plot(RTD.time, RTD.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(130, Color = [.8 0 .2], LineStyle = "--");
xline(103.5, Color = [.8 0 .2], LineStyle = "--");
plot(103.5, 130, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(60, 135, 'Temperature: 130C');
text(75, 90, 'Time: 103.5s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('10x10mm Heater Pad 24V Experiment 1');
grid on

figure(2)
plot(RTD2.time, RTD2.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(130, Color = [.8 0 .2], LineStyle = "--");
xline(99.5, Color = [.8 0 .2], LineStyle = "--");
plot(99.5, 130, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(60, 135, 'Temperature: 130C');
text(75, 90, 'Time: 99.5s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('10x10mm Heater Pad 24V Experiment 2');
grid on

figure(3)
plot(RTD3.time, RTD3.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(130, Color = [.8 0 .2], LineStyle = "--");
xline(96.5, Color = [.8 0 .2], LineStyle = "--");
plot(96.5, 130, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(60, 135, 'Temperature: 130C');
text(75, 90, 'Time: 96.5s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('10x10mm Heater Pad 24V Experiment 3');
grid on

figure(4)
plot(RTD4.time, RTD4.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(130, Color = [.8 0 .2], LineStyle = "--");
xline(34.613, Color = [.8 0 .2], LineStyle = "--");
plot(34.613, 130, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(20, 135, 'Temperature: 130C');
text(26, 90, 'Time: 34.61s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('10x10mm Heater Pad 48V Experiment 1');
grid on