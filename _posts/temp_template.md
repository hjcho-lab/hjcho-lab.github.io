---
layout: single
categories: Lecture
title:  "template"
tag:
- template
use_math: true
toc: true
toc_sticky: true
toc_label: "TOC"
---

# 일반 글쓰기
- `<p> </p>` 단락 충분히 띄우기의 사용 예
  <p> </p>
  <center> * * * </center>
  <p> </p>

- 정렬 방법에 대한 정리
   `<center>가운데</center>`
   `<div style="text-align: right"> 오른쪽 정렬 </div>`

- 공부 내용 중 해결해야 할 task가 발생한다면 check box 및 green italic character로 나타내자!
  - [ ] <span style="color:green"> _이렇게 task 를 만들자!_</span>

- 공부 내용 중 개인적인 주석을 달아야 하거나, 구문 중 일부를 인용해야 한다면 ... 인용문법을 사용하자!
  - > **의견**: 의견은 앞에 의견으로 표시
  - > 인용 구절은 그대로 작성

- footnote는 어떤 상황에서 작성해야 할까?

- 볼딕과 아래첨자: **Bad measurements, <sub>p112</sub>**
- 하이라이트: <mark>Thus, the goal of compressed sensing is to find the sparsest vector $\boldsymbol{s}$ that is consistent with the measurements $\boldsymbol{y}$.</mark>
- 하이퍼링크 [Youtube lecture series by Steve Brunton(Total 23)](https://www.youtube.com/playlist?list=PLMrJAkhIeNNRHP5UA-gIimsXLQyHXxRty)

# code 삽입

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


# math equation
- **inline equation**: The remainder of this section describes the conditions on the measurement matrix $\boldsymbol{C}$ that are required for $\boldsymbol{\Theta}$ to act as a near isometry map with high probability.

- **번호 생성 수식**: VS code 에서는 나타나지 않지만 실제 브라우저에서는 나타남
  - 예제 1)
$$
\begin{equation}
   E = mc^2
\end{equation}
$$
  - 예제 2) 수동 번호 생성
$$
\boldsymbol{y} = \boldsymbol{\Theta} \boldsymbol{s} \tag{3.12}
$$

- **beautiful equation**
  - equal sign 정렬하기
$$
\begin{aligned}
\boldsymbol{y} & = \boldsymbol{C} \boldsymbol{x} \\
& = \boldsymbol{C} \boldsymbol{\Psi} \boldsymbol{s} \\
& = \boldsymbol{\Theta} \boldsymbol{s}  \tag{3.3}
\end{aligned}
$$

  - some un-usual notation
$$
\| \boldsymbol{s} \|_{1} = \sum_{k=1}^{n} |s_k|
$$

  - coloring, $ \color{red} C^2 $

- **use proper notation for each case** (FYI: https://wookai.github.io/paper-tips-and-tricks/math.html)
  - `constant`, $N=5$, 
  - `index`, $1\leq n \leq N$
  - `variables`, $x$
  - `RV`, $X$
  - `vectors`, $\boldsymbol{x}$
  - `matrix`, $\boldsymbol{X}$
  - `sets` 

- 다양한 예제: https://velog.io/@d2h10s/LaTex-Markdown-%EC%88%98%EC%8B%9D-%EC%9E%91%EC%84%B1%EB%B2%95