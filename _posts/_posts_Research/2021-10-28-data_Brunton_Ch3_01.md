---
layout: single
title:  "Ch3 Sparsity and Compressed Sensings, 1"
categories: 
tag:
- text
use_math: true
toc: true
toc_sticky: true
toc_label: "TOC"
---
# Youtube lecture playlist

[Youtube lecture series by Steve Brunton(Total 23)](https://www.youtube.com/playlist?list=PLMrJAkhIeNNRHP5UA-gIimsXLQyHXxRty)

- [ ] 1. Why images are compressible: the Vastness of image sapce
- [ ] 2. Waht is Sparsity?
- [ ] 3. Compressed Sensing: Overview
- [ ] 4. Compressed Sensing: Mathematical Formulation
- [ ] 5. Underdetermined systems and compressed sensing [Python]
- [x] 6. Underdetermined systems and compressed sensing [Matlab]
- [ ] 7. 
- [ ] 8.
- [ ] 9.
- [ ] 10.
- [ ] 11. 

<p> </p>

note! this post is summary of textbook, Steve Brunton

# section 3.1 Sparsity and compression, <sub>p97</sub>

A compressible signal $\boldsymbol{x} \in \mathbb{R}^n$ may be written as a sparse vector $\boldsymbol{s} \in \mathbb{R}^n$ in a transform basis $\boldsymbol{\Psi} \in \mathbb{R}^{n \times n}$:

$$
\boldsymbol{x} = \boldsymbol{\Psi} \boldsymbol{s} \tag{3.1}
$$

Specifically, the vector $\boldsymbol{s}$ is called $K$-sparse in $\boldsymbol{\Psi}$ if there are exactly $K$ nonzero elements.

- 책에서 서술된 것 처럼 Fourier, Wavelet TF는 $\boldsymbol{\Psi}$의 구체적인 예로 이해하여도 무관하다.

<p> </p>

# section 3.2 Compressed sensing, <sub>p101</sub>

<p> </p>
<center> * * * </center>

The recent advent of `compressed sensing` turns the compression paradigm upside down: instead of collecting high-dimensional data just to compress and discard most of the information, `it is instead posible to collect surprisingly few compressed or random measurements and then infer what the sparse representation is in the transfomed basis.`

The measurements $\boldsymbol{y} \in \mathbb{R}^p$, with $K < p \ll n$ are given by

$$
\boldsymbol{y} = \boldsymbol{C} \boldsymbol{x}
$$

The measurement matrix $\boldsymbol{C} \in \mathbb{R}^{p*n}$ represents a set of $p$ linear measurements on the state $\boldsymbol{x}$

- measurement matrix $\boldsymbol{C}$ 는 전체 signal $\boldsymbol{x}$ 중에서 일부만을 선별하여 $y$ 을 나타내는 matrix 라고 이해하여도 되겠다.

<p> </p>
<center> * * * </center>

With knowledge of the sparse vector $\boldsymbol{s}$ it is possible to reconstruct the signal $\boldsymbol{x}$ from `eq.(3.1)`. <mark>Thus, the goal of compressed sensing is to find the sparsest vector $\boldsymbol{s}$ that is consistent with the measurements $\boldsymbol{y}$.</mark>

$$
\begin{aligned}
\boldsymbol{y} & = \boldsymbol{C} \boldsymbol{x} \\
& = \boldsymbol{C} \boldsymbol{\Psi} \boldsymbol{s} \\
& = \boldsymbol{\Theta} \boldsymbol{s}  \tag{3.3}
\end{aligned}
$$

the system of equations in `eq.(3.3)` is underdetermined since there are infinitely many consistent solutions $\boldsymbol{s}$.

The sparsest solution $\boldsymbol{\hat{s}}$ satisfies the followiing optimization problem:

$$
\boldsymbol{\hat{s}} = \underset{\boldsymbol{s}}{\operatorname{argmin}} \|\boldsymbol{s}\|_{0} \quad \text{subject to} \quad \boldsymbol{y}=\boldsymbol{C} \boldsymbol{\Psi} \boldsymbol{s} \tag{3.4}
$$

The optimization in `eq.(3.4)` is non-convex, and in general the solution can only be found with a brute-force search that is combinatorial in $n$ and $K$.

- [ ] _optimization 문제가 어떻게 convex $l_1$-minimization으로 변형될 수 있는지 확인이 필요함!_

Foutunately, under certain conditions on the measurement matrix $\boldsymbol{C}$, it is possible to relax the optimization in `eq.(3.4)` to a convex $l_1$-minimization:

$$
\boldsymbol{\hat{s}} = \underset{\boldsymbol{s}}{\operatorname{argmin}} \|\boldsymbol{s}\|_{1} \quad \text{subject to} \quad \boldsymbol{y}=\boldsymbol{C} \boldsymbol{\Psi} \boldsymbol{s} \tag{3.5}
$$

where $\| \cdot \|_{1}$ is the $l_1$ norm, given by

$$
\| \boldsymbol{s} \|_{1} = \sum_{k=1}^{n} |s_k|
$$

<p> </p>
<center> * * * </center>

**Alternative formulations, <sub>p105</sub>**

Besides the $l_1$-minimization, there are alternative approaches based on `greedy algorithms` that determine the sparse solution through an iterative matching pursuit problem, such as

- `CoSaMP(Compressed sensing matching pursuit)`
-

<p> </p>

# section 3.3 Compressed sensing examples, <sub>p106</sub>

<p> </p>
<center> * * * </center>

Now consider a generic underdetermined system of equation, $\boldsymbol{y} = \boldsymbol{\Theta}\boldsymbol{s}$ with $p=200$ rows(measurements) and $n=1000$ columns(unknowns). In MATLAB, it is straightforward to solve this underdetermined linear system for both the mininum $l_1$ norm and mininum $l_2$ norm solutions.

- greedy algorithms
  - `CoSaMP` and [MATLAB code](http://indigits.github.io/sparse-plex/)
  - [ ] <span style="color:green"> _`CoSaMP` 사용법 확인 및 내부 동작 과정 확인 / textbook 내용과는 별개로 위 MATLAB library에서 제공되는 예제 확인_</span>
- measurement matrix가 '어떤' 조건을 만족한다면 쉽게 풀 수 있음
- minimum $l_1$ norm solution is obtained via
  - the **`cvx`** [optimization package](http://cvxr.com/cvx/) or
  - [ ] <span style="color:green"> _package로 되어 있어서 코드를 분석하는 것이 가능할까?_</span>
  - $l_1$ magic [MATLAB function](https://kr.mathworks.com/company/newsletters/articles/magic-reconstruction-compressed-sensing.html), mathworks Cleve's Corner
  - [ ] <span style="color:green"> _MATLAB $l_1$ magic 사용법 확인 및 내부 동작 과정 확인 / Brunton의 논리 전개와 다소 상이, 논리 확인이 필요_</span>
- minimum $l_2$ norm solution is obtained using the pseudo-inverse (related to the `SVD`)

<p> </p>
<center> * * * </center>

**Recorving an audio signal from sparse measurements, <sub>p107</sub>**

```matlab
% Solve y = Theta * s for "s"
n = 1000; % dimension of s
p = 200;  % number of measurements, dim(y)
Theta = randn(p,n);
y = randn(p,1);

cvx_begin;            % L1 minimum norm solution s_L1
  variable s_L1(n);
  minimize( norm(s_L1,1) );
  subject to
    Theta*s_L1 == y;
cvx_end;

s_L2 = pinv(Theta)*y; % L2 minimum norm solution s_L2
```

```matlab
%% Generate signal, DCT of signal, randomly sample signal
n = 4096;             % points in high resolution signal
t = linspace(0, 1, n);
x = cos(2* 97 * pi * t) + cos(2* 777 * pi * t);

xt = fft(x);          % Fourier transformed signal
PSD = xt.*conj(xt)/n; % Power spectral density

p = 128; % num. random samples, p=n/32
perm = round(rand(p, 1) * n);
y = x(perm); % compressed measurement

%% Solve compressed sensing problem
Psi    = dct(eye(n, n));      % build Psi
Theta  = Psi(perm, :);        % Measure rows of Psi
s      = cosamp(Theta,y’,10,1.e-10,10); % CS via matching pursuit
xrecon = idct(s);            % reconstruct full signal
```


# section 3.4 The geometry of compression, <sub>p110</sub>

<p> </p>
<center> * * * </center>

Let's begin with(keep in mind) following equation.

$$
\begin{aligned}
\boldsymbol{y} & = \boldsymbol{C} \boldsymbol{x} \\
& = \boldsymbol{C} \boldsymbol{\Psi} \boldsymbol{s} \\
& = \boldsymbol{\Theta} \boldsymbol{s}  \tag{3.3}
\end{aligned}
$$

<p> </p>
<center> * * * </center>

Enough good measurements will result in a matrix

$$
\boldsymbol{\Theta} = \boldsymbol{C} \boldsymbol{\Psi} \tag{3.11}
$$

that preserves the distance and inner product structure of sparse vectors $\boldsymbol{s}$. In other words, we seek a measurement matrix $\boldsymbol{C}$ so that $\boldsymbol{\Theta}$ acts as a near isometry map on sparse vectors.

When $\boldsymbol{\Theta}$ acts as a near isometry, it is possible to solve the following equation for the sparsest vector $\boldsymbol{s}$ using convex $l_1$-minimization:

$$
\boldsymbol{y} = \boldsymbol{\Theta} \boldsymbol{s} \tag{3.12}
$$

The remainder of this section describes the conditions on the measurement matrix $\boldsymbol{C}$ that are required for $\boldsymbol{\Theta}$ to act as a near isometry map with high probability.

**The restricted isometry property(RIP), <sub>p111</sub>**

**Incoherence and measurement matrices, <sub>p112</sub>**

**Bad measurements, <sub>p112</sub>**


<p> </p>
<center> * * * </center>

## more information

umich_CS

matlab central example.


## wrap up
- [ ] <span style="color:green"> _CS의 개략적인 방향에 대해서는 이해를 하였다. 수학적인 원리에 대해서 분석함과 동시에 application에 대해서도 정리를 진행한다._</span>