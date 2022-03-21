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

- `---`은 line separator
---

- 정렬 방법에 대한 정리
   `<center>가운데</center>`
   `<div style="text-align: right"> 오른쪽 정렬 </div>`

- 공부 내용 중 해결해야 할 task가 발생한다면 check box 및 green italic character로 나타내자!
  - [ ] <span style="color:green"> _이렇게 task 를 만들자!_</span>

- 공부 내용 중 개인적인 주석을 달아야 하거나, 구문 중 일부를 인용해야 한다면 ... 인용문법을 사용하자!
  - > **의견**: 의견은 앞에 의견으로 표시
  - > 인용 구절은 그대로 작성

- footnote는 어떤 상황[^1]에서 작성해야 할까?
[^1]: My reference.

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

```python
import Keras
def hyunjin()
	a = 10
	b = 20
	c = a + b
	return c
```

# math equation
m.m. (Jekyll theme) 에서 수식을 사용하기 위해서는 별도의 환경 설정이 필요한 듯 - MathJax 사용. 다음 사이트를 참고하여 환경 설정: https://mkkim85.github.io/blog-apply-mathjax-to-jekyll-and-github-pages/ 
- 몇 가지 파일 수정 및 추가가 필요하다: `_config.yml` 수정, `mathjax_support.html` 생성, `default.html` 수정, post fromt-matter 설정
- 에서와는 달리 '$$'을 이용한 math block 표현이 이루어지지 않는다.

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
\| \boldsymbol{s} \|_{1} = \sum_{k=1}^{n} |s_k| \\
\prod_{i=1}^{\infty} a_{i}
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


# 도형 #
insert diagram in blog, https://drawio-app.com/github-support/
레포지토리: https://github.com/jgraph/drawio-github

![Diagram](http://jgraph.github.io/drawio-github/diagram.png)

<a href="http://jgraph.github.io/drawio-github/edit-diagram.html?repo=drawio-github&path=diagram.png" target="_blank">Edit</a> | <a href="https://app.diagrams.net/#Uhttps%3A%2F%2Fraw.githubusercontent.com%2Fjgraph%2Fdrawio-github%2Fmaster%2Fdiagram.png" target="_blank">Edit As New</a> | <a href="https://app.diagrams.net/#Hjgraph%2Fdrawio-github%2Fmaster%2Fdiagram.png" target="_blank">Edit in diagrams.net</a>

<a href="http://jgraph.github.io/drawio-github/edit-diagram.html" target="_blank">edit-diagram.html</a> does the I/O with GitHub and uses diagrams.net in embed mode for diagram editing. The page supports the following URL parameters: user, pass, repo, path, ref and action=open (the Edit link above is an example). Using action=open, links for immediate diagram editing in GitHub can be created (requires user and pass parameters). You can also use files on GitHub as templates in diagrams.net via the url parameter (see Edit As New above).

# Table

|구분|방법#1|방법#2|방법#3|방법#4|
|---|---|---|---|---|
|VS code|내용 2|내용 3|내용 4|
|로컬 확인|내용 6|내용 7|내용 8|
|github|내용 10|내용 11|내용 12|
|블로그|내용 10|내용 11|내용 12|



# 참고해야 하는 사이트 및 주요내용

- https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages
  - Github Pages 운영과 관련된 Github 공식 공지
- https://mmistakes.github.io/minimal-mistakes/: m.m 공식 사이트

# 덧. 21.10.25
math equation 사용하기
- https://animadversio.github.io/tech_note/math-intensive-github-blog-construction
- https://mkkim85.github.io/blog-apply-mathjax-to-jekyll-and-github-pages/
- https://medium.com/coffee-in-a-klein-bottle/creating-a-mathematics-blog-with-jekyll-78cdee0339f3
