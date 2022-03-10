---
layout: single
title:  "첫 글, 이것저것 끄적거리며 본격적으로 테스트 - 메모에 가까움"
tags:
- temp
- test
use_math: true
toc: true
toc_sticky: true
toc_label: "TOC"
---


**TOC**
- [글](#글)
- [수식](#수식)
- [코드](#코드)
	- [matlab code style](#matlab-code-style)
	- [python code style](#python-code-style)
- [도형](#도형)
- [동영상 삽입](#동영상-삽입)
	- [2단계 subtitle](#2단계-subtitle)
- [참고해야 하는 사이트 및 주요내용](#참고해야-하는-사이트-및-주요내용)
- [덧. 21.10.25](#덧-211025)



테크-블로그 운영을 구상하며, 블로그에 다음의 것들이 잘 표현되기를 바란다.
- 글
- 수식
- 코드
- 도형
- 동영상 삽입
- 사진
- 소리

환경
VS code / text editor - *.md t수정
- 참고: https://www.youtube.com/watch?v=bS9yTI2fC0w&t=0s


# 글 #
글을 잘 써야지. 암.

# 수식 #
처음 고민은 글이 담고 있는 내용에 따라 어떤 툴을 이용해서 작성하는가? 이다. <br>
음... 텍스트가 많나? 수식이 많나? 코드가 많나? 등에 따라서 달라지는 글 작성 툴

예제1) 이건 inline equation $F=ma$ 의 예 입니다. <br>
예제2) 이건 eqaution block 의 예 입니다.
$$
F=mc^2
$$

예제3) use proper notation for each case; (FYI: https://wookai.github.io/paper-tips-and-tricks/math.html) <br> 
- `constant`, $N=5$, 
- `index`, $1\leq n \leq N$
- `variables`, $x$
- `RV`, $X$
- `vectors`, $\boldsymbol{x}$
- `matrix`, $\boldsymbol{X}$
- `sets` 


note!
m.m. (Jekyll theme) 에서 수식을 사용하기 위해서는 별도의 환경 설정이 필요한 듯 - MathJax 사용. 다음 사이트를 참고하여 환경 설정
https://mkkim85.github.io/blog-apply-mathjax-to-jekyll-and-github-pages/ 
- 몇 가지 파일 수정 및 추가가 필요하다: `_config.yml` 수정, `mathjax_support.html` 생성, `default.html` 수정, post fromt-matter 설정
- 에서와는 달리 '$$'을 이용한 math block 표현이 이루어지지 않는다.

# 코드 #
만약에...
코드가 많이 있다면?

## matlab code style

```matlab
a = 10;
b = 20;
c = a + b;
```

매트랩 코드는?

## python code style

```python
import Keras
def hyunjin()
	a = 10
	b = 20
	c = a + b
	return c
```

파이썬 코드는?


# 도형 #
insert diagram in blog
https://drawio-app.com/github-support/
레포지토리: https://github.com/jgraph/drawio-github

![Diagram](http://jgraph.github.io/drawio-github/diagram.png)

<a href="http://jgraph.github.io/drawio-github/edit-diagram.html?repo=drawio-github&path=diagram.png" target="_blank">Edit</a> | <a href="https://app.diagrams.net/#Uhttps%3A%2F%2Fraw.githubusercontent.com%2Fjgraph%2Fdrawio-github%2Fmaster%2Fdiagram.png" target="_blank">Edit As New</a> | <a href="https://app.diagrams.net/#Hjgraph%2Fdrawio-github%2Fmaster%2Fdiagram.png" target="_blank">Edit in diagrams.net</a>

<a href="http://jgraph.github.io/drawio-github/edit-diagram.html" target="_blank">edit-diagram.html</a> does the I/O with GitHub and uses diagrams.net in embed mode for diagram editing. The page supports the following URL parameters: user, pass, repo, path, ref and action=open (the Edit link above is an example). Using action=open, links for immediate diagram editing in GitHub can be created (requires user and pass parameters). You can also use files on GitHub as templates in diagrams.net via the url parameter (see Edit As New above).

Supported file formats: .png, .svg, .html and .xml (default)

# 동영상 삽입 #





일단 지킬 테마(m.m.)에 익숙해져야 하겠고, 그 다음에 구체적인 것을 조금 더 생각해보아야 겠다.

아... 제목에 대한 표시는 어떻게 나타날까?

## 2단계 subtitle

이건 그냥 2단계 목록은 어떻게 나타날까 궁금해서 테스트

# 참고해야 하는 사이트 및 주요내용

- https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages
  - Github Pages 운영과 관련된 Github 공식 공지
- https://mmistakes.github.io/minimal-mistakes/: m.m 공식 사이트

# 덧. 21.10.25
math equation 사용하기
- https://animadversio.github.io/tech_note/math-intensive-github-blog-construction
- https://mkkim85.github.io/blog-apply-mathjax-to-jekyll-and-github-pages/
- https://medium.com/coffee-in-a-klein-bottle/creating-a-mathematics-blog-with-jekyll-78cdee0339f3
