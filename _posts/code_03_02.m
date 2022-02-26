
clc, clear all

addpath(genpath('indigits_sparse'));


% Generate signal, DCT of signal
n = 4096; % points in high resolution signal
t = linspace(0, 1, n);
x = cos(2* 97 * pi * t) + cos(2* 777 * pi * t);

% Randomly sample signal
p = 128; % num. random samples, p=n/32
perm = round(rand(p, 1) * n);
y = x(perm); % compressed measurement

% Solve compressed sensing problem
Psi   = dct(eye(n, n)); % build Psi
Theta = Psi(perm, :);   % Measure rows of Psi
s     = cosamp(Theta, y' , 10, 1.e-10, 10); % CS via matching pursuit
xrecon = idct(s);       % reconstruct full signal

s = cosamp(Theta, y', 10, 1.e-10, 10); % CS via matching pursuit

