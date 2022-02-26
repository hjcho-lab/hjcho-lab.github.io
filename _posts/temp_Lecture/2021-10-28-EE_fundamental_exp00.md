---
layout: single
title:  "전기전자공학 실험지시서 Lecture"
permalink: /_Lecture/
tags:
- text
use_math: true
toc: true
toc_sticky: true
toc_label: "TOC"
---

- [Youtube lecture playlist](#youtube-lecture-playlist)
- [section 3.1, <sub>p97</sub>](#section-31-subp97sub)

<p>&nbsp;</p>
<center>  <font size="6"> <strong>실 험 지 시 서</strong> </font> </center>


# Youtube lecture playlist


<p>&nbsp;</p>

# section 3.1, <sub>p97</sub>

This is test inline equation, \\(x=Fa\\).

A compressible signal $\boldsymbol{x} \in \mathbb{R}^n$ may be written as a sparse vector $\boldsymbol{s} \in \mathbb{R}^n$ in a transform basis $\boldsymbol{\Psi} \in \mathbb{R}^{n*n}$:

$$
\boldsymbol{x} = \boldsymbol{\Psi} \boldsymbol{s} \tag{3.1}
$$

Specifically, the vector $\boldsymbol{s}$ is called $K$-sparse in $\boldsymbol{\Psi}$ if there are exactly $K$ nonzero elements. 

- 책에서 서술된 것 처럼 Fourier, Wavelet TF는 $\boldsymbol{\Psi}$의 구체적인 예로 이해하여도 무관하다.

<p>&nbsp;</p>

With knowledge of the sparse vector $\boldsymbol{s}$ it is possible to reconstruct the signal $\boldsymbol{x}$ from `eq.(3.1)`. <mark>Thus, the goal of compressed sensing is to find the sparsest vector $\boldsymbol{s}$ that is consistent with the measurements $\boldsymbol{y}$.</mark>


$$
\begin{aligned}
\boldsymbol{y} & = \boldsymbol{C} \boldsymbol{x} \tag{3.3} \\
& = \boldsymbol{C} \boldsymbol{\Psi} \boldsymbol{s} \\
& = \boldsymbol{\Theta} \boldsymbol{s}
\end{aligned} 
$$

$$
\lim_{x\to 0}{\frac{e^x-1}{2x}}
\overset{\left[\frac{0}{0}\right]}{\underset{\mathrm{H}}{=}}
\lim_{x\to 0}{\frac{e^x}{2}}={\frac{1}{2}}
$$


**Recorving an audio signal from sparse measurements**

```matlab
% Generate signal, DCT of signal
n = 4096;             % points in high resolution signal
t = linspace(0, 1, n);
x = cos(2* 97 * pi * t) + cos(2* 777 * pi * t);

% Randomly sample signal
p = 128;              % num. random samples, p=n/32
perm = round(rand(p, 1) * n);
y = x(perm);          % compressed measurement
```
