[![make](https://github.com/yegor256/huawei.cls/actions/workflows/make.yml/badge.svg)](https://github.com/yegor256/huawei.cls/actions/workflows/make.yml)

Disclaimer: This is **NOT** a product of Huawei Technologies Co., Ltd.
This package is created in order to help some people working
with Huawei or inside Huawei to render some documents in LaTeX format.
You are welcome to use it at your own risk.

First, [install it](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages)
from [CTAN](https://ctan.org/pkg/huawei) 
and then use in the preamble:

```tex
\documentclass[landscape]{huawei}
\author{Yegor Bugayenko}
\title{An Interesting Document About Something}
\begin{document}
Hello, world!
\end{document}
```

Find more examples in the [`samples/`](/samples) directory.

If you need more formatting options, 
[submit an issue](https://github.com/cqfn/huawei-latex/issues), 
I'll implement them.

If you want to contribute yourself, make a fork, then create a branch, 
then run `make` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `make` again. If the build is
still clean, submit a pull request.
