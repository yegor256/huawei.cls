You can use this [`huawei.cls`](huawei.cls) LaTeX style just by copying it to some local
directory and then mentioning it in the preamble of all your documents 
(on my laptop it's called `/code/huawei.cls`):

```tex
\documentclass[landscape]{/code/huawei}
\author{Yegor Bugayenko}
\title{An Interesting Document About Something}
\begin{document}
Hello, world!
\end{document}
```

Find more examples in the [`samples/`](/samples) directory.

## How to Contribute

If you need more formatting options, 
[submit an issue](https://github.com/cqfn/huawei-latex/issues), 
I'll implement them.

If you want to contribute yourself, make a fork, then create a branch, 
then run `make` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `make` again. If the build is
still clean, submit a pull request.
