You can use this `huawei.cls` LaTeX style just by copying it to your
directory with LaTeX sources and mentioning in the preamble:

```tex
\documentclass[landscape]{huawei}
\author{Yegor Bugayenko} % First name, last name
\aid{y00538675} % Internal ID of the author
\title{An Interesting Document About Something} % Title
\subtitle{To Whom It May Concern} % Subtitle
\begin{document}
Hello, world!
\end{document}
```

Find more examples in the [`samples/`](/samples) directory.

Class options (provided in square brackets after the `\documentclass`) are:

  * `landscape` — makes the document in landscape format.

Inside the document body you can use these commands:

  * `\PrintCharterFirstPage{front-image}` — prints the first page of TETF/CSTT charter,
    placing the image `front-image.pdf` on the front (the file should be present
    in the current dir.

  * `\PrintCharterLastPage{}` — prints the last page of TETF/CSTT charter.

If you need more formatting options, [submit an issue](https://github.com/cqfn/huawei-latex/issues), 
I'll implement them.