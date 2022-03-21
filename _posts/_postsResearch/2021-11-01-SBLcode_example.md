---
layout: single
title:  "SBL code analysis"
categories: 
tags: text
use_math: true
toc: true
toc_sticky: true
toc_label: "TOC"
---


`BASIS	= exp(-distSquared(X,C)/(basisWidth^2));`

`distSquared` 함수는 $(x-x_m)^2$ 을 수행
```matalb
D2 = (sum((X.^2), 2) * ones(1,ny)) + (ones(nx, 1) * sum((Y.^2),2)') - 2*X*Y';
```

consider models which are a linearly-weighted 
$$
\phi_m(x)=\exp \left( -\frac{ ||x-x_m||^2 }{r^2} \right)
$$



