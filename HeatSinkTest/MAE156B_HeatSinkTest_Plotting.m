% This script will plot initial heat sink test with 25x25x30mm HS

% Giordano Liska
% Cohu - TCU
% Created: 04-09-2023

clear; clc; close all;

%% Import Data

HS.data = readmatrix('25x25x30mm_HeatSinkTesting_1.txt');
HS.data = HS.data(5:135);
HS.time = 0:0.5:length(HS.data)/2;
HS.time(end) = [];

HS2.data = readmatrix('25x25x30mm_HeatSinkTesting_2.txt');
HS2.data = HS2.data(1:131);
HS2.time = 0:0.5:length(HS2.data)/2;
HS2.time(end) = [];

HS3.data = readmatrix('25x25x30mm_HeatSinkTesting_3.txt');
HS3.data = HS3.data(4:129);
HS3.time = 0:0.5:length(HS3.data)/2;
HS3.time(end) = [];

%% Plot Data

figure(1)
plot(HS.time, HS.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(63.3, Color = [.8 0 .2], LineStyle = "--");
xline(58, Color = [.8 0 .2], LineStyle = "--");
plot(58, 63.3, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(20, 67, 'Temperature: 63.3C');
text(47, 90, 'Time: 58s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('25x25x30mm Finned Heat Sink Experiment 1');
grid on

figure(2)
plot(HS2.time, HS2.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(63.3, Color = [.8 0 .2], LineStyle = "--");
xline(57.5, Color = [.8 0 .2], LineStyle = "--");
plot(57.5, 63.3, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(20, 67, 'Temperature: 63.3C');
text(45, 90, 'Time: 57.5s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('25x25x30mm Finned Heat Sink Experiment 2');
grid on

figure(3)
plot(HS3.time, HS3.data, LineWidth = 1.5, Color = [0 .1 .9]);
hold on
yline(63.3, Color = [.8 0 .2], LineStyle = "--");
xline(60, Color = [.8 0 .2], LineStyle = "--");
plot(60, 63.3, "*", Color = [0 .75 .25], LineWidth = 1.5);
text(20, 57, 'Temperature: 63.3C');
text(45, 90, 'Time: 60s');
xlabel('Time [s]');
ylabel('Temperature [DegC]');
title('25x25x30mm Finned Heat Sink Experiment 3');
grid on