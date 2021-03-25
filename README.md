You can use this `huawei.cls` LaTeX style just by copying it to your
directory with LaTeX sources and then using it in the document preamble:

```tex
\documentclass[landscape]{huawei}
\author{Yegor Bugayenko} % First name, last name
\aid{y00538675} % Author's ID
\title{Interesting document about something} % Title
\begin{document}
Hello, world!
\end{document}
```

Class options (provided in square brackets after `\documentclass`) are:

  * `landscape` --- makes the document in landscape format.

Inside the document body you can use these:

  * `\PrintCharterFirstPage{front-image}` --- prints the first page of TETF/CSTT charter,
    placing the image `front-image.pdf` on the front (the file should be present
    in the current dir.

  * `\PrintCharterLastPage{}` --- prints the last page of TETF/CSTT charter.

If you need more, submit a ticket.