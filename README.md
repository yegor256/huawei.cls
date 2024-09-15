# LaTeX Document Class

[![make](https://github.com/yegor256/huawei.cls/actions/workflows/l3build.yml/badge.svg)](https://github.com/yegor256/huawei.cls/actions/workflows/l3build.yml)
[![CTAN](https://img.shields.io/ctan/v/huawei)](https://ctan.org/pkg/huawei)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/huawei.cls/blob/master/LICENSE.txt)

Disclaimer: This is **NOT** a product of Huawei Technologies Co., Ltd.
This package is created in order to help some people working
with Huawei or inside Huawei to render some documents in LaTeX format.
You are welcome to use it at your own risk.

First,
[install it](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages)
from [CTAN](https://ctan.org/pkg/huawei) 
and then use in the preamble:

```tex
\documentclass[landscape]{huawei}
\renewcommand*\theauthor{Yegor Bugayenko}
\renewcommand*\thetitle{An Interesting Document About Something}
\begin{document}
\maketitle
Hello, world!
\end{document}
```

Otherwise, you can download
[`huawei.cls`](https://yegor256.github.io/huawei.cls/huawei.cls)
and add to your project.

Read the detailed documentation
[in PDF](http://mirrors.ctan.org/macros/latex/contrib/huawei/huawei.pdf).

If you need more formatting options, 
[submit an issue](https://github.com/yegor256/huawei.cls/issues), 
I'll implement them.

If you want to contribute yourself, make a fork, then create a branch, 
then run `make` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `make` again. If the build is
still clean, submit a pull request.
