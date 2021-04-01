<img src="/huawei-logo.svg" width="64px"/>

You can use this [`huawei.cls`](huawei.cls) LaTeX style just by copying it to some local
directory and then mentioning it in the preamble of all your documents 
(on my laptop it's called `/code/huawei.cls`):

```tex
\documentclass[landscape]{/code/huawei}
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

  * `anonymous` — removes the name of the author

  * `nobrand` — avoids mentioning the brand of Huawei (removes the logo too)

Inside the document body you can use these commands:

  * `\PrintFirstPage{front-image}` — prints the first page of a project charter or similar landscape documents,
    placing the image `front-image.pdf` on the front (the file should be present
    in the current dir.

  * `\PrintLastPage{}` — prints the last page of a project charter or similar landscape document.

  * `\PrintThankYouPage{}` — prints the last page with a "Thank You" message in the center.

If you need more formatting options, [submit an issue](https://github.com/cqfn/huawei-latex/issues), 
I'll implement them.

## How to Contribute

Make a fork, then create a branch, then run `make` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `make` again. If the build is
still clean, submit a pull request.
