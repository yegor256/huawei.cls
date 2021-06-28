% (The MIT License)
%
% Copyright (c) 2021 Yegor Bugayenko
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the 'Software'), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{huawei}[00.00.0000 0.0.0 Template for Huawei Documents]

\newif\ifnosecurity
\DeclareOption{nosecurity}{\nosecuritytrue}
\newif\ifauthordraft
\DeclareOption{authordraft}{\authordrafttrue}
\newif\ifnobrand
\DeclareOption{nobrand}{\nobrandtrue}
\newif\ifnodate
\DeclareOption{nodate}{\nodatetrue}
\newif\ifnocover
\DeclareOption{nocover}{\nocovertrue}
\newif\ifnopaging
\DeclareOption{nopaging}{\nopagingtrue}
\newif\iflandscape
\DeclareOption{landscape}{\landscapetrue}
\newif\ifanonymous
\DeclareOption{anonymous}{\anonymoustrue}
\ProcessOptions\relax

\LoadClass[12pt]{article}

\RequirePackage{geometry}
\iflandscape
  \geometry{paperwidth=16in, paperheight=9in, left=4in, right=2in, top=1.5in, bottom=1.5in}
\else
  \geometry{a4paper, left=1.5in, right=1in, top=1.2in, bottom=1.2in}
\fi
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{CJKutf8}
\RequirePackage{tabularx}
\RequirePackage{multicol}
\RequirePackage{ragged2e}
\RequirePackage{multicol}
\RequirePackage[mmddyyyy,iso]{datetime}
  \newtimeformat{daytime}{\twodigit{\THEHOUR}:\twodigit{\THEMINUTE}}
\RequirePackage[tt=false,type1=true]{libertine}
\RequirePackage{paralist}
\RequirePackage{makecell}
\RequirePackage[para]{footmisc}
  \setlength{\footnotemargin}{2pt}
  \setlength{\footnotesep}{2pt}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage[abspath]{currfile}
\RequirePackage{enumitem}
  \setlist{nosep}
\RequirePackage{microtype}
\RequirePackage{wrapfig}
\RequirePackage{lastpage}
\RequirePackage{xfp} % for \setrelativestretch
\RequirePackage{setspace}
  \setstretch{1.08}
  \newcommand{\setrelativestretch}[1]{%
    \begingroup\edef\x{\endgroup%
      \noexpand\setstretch{\fpeval{(#1)*(\baselinestretch)}}%
    }\x%
  }
\RequirePackage[maxnames=1,minnames=1,natbib=true,style=ieee,doi=false,url=false,isbn=false,isbn=false]{biblatex}
\RequirePackage[table]{xcolor}
  \definecolor{huawei-red}{HTML}{CF0A2C}
  \definecolor{huawei-black}{HTML}{232527}
\RequirePackage{tikz}
\RequirePackage{tabularx}
\RequirePackage{titling}
\RequirePackage{svg}
\RequirePackage[absolute]{textpos}
  \TPGrid{16}{16}

% Our custom commands to redefine:
\renewcommand\title[1]{\renewcommand\thetitle{#1}}
\newcommand\thetitle{Untitled}
\newcommand*\thecompany{Huawei Technologies Co., Ltd.}
\newcommand\thesubtitle{}
\renewcommand\author[1]{\renewcommand\theauthor{#1}}
\newcommand\theauthor{Unknown}
\newcommand*\thesecurity{Confidential}
\newcommand*\theid{}

% Custom commands
\newcommand\nospell[1]{#1}
\newcommand\headers[1]{\setrelativestretch{0.8}{\small\sffamily\color{gray}#1}}
\newcommand\tbd[1]{{\color{red}#1}}
\newcommand\crumb[2]{\begin{minipage}{\columnwidth}\raggedright\textsc{#1}:\\#2\end{minipage}\vspace{4pt}}

\AtBeginDocument{%
  \raggedbottom%
  \setlength\topskip{0mm}%
  \setlength\parindent{0pt}%
  \setlength\parskip{6pt}%
  \setlength\columnsep{32pt}%
  \def\arraystretch{1.5}%
}

\newcommand\LeftHuaweiBar{%
  \begin{textblock}{1}[0,0](0,0)%
    \tikz \node[fill=huawei-red,minimum width=\TPHorizModule,minimum height=16\TPVertModule] {};%
  \end{textblock}%
}

\newcommand\PrintHuaweiLogo{
  \begin{tikzpicture}[y=0.80pt, x=0.80pt, yscale=-1, inner sep=0pt, outer sep=0pt]
    \begin{scope}[even odd rule,line width=0.800pt]
      \begin{scope}[shift={(0,-0.00024)}]
        \path[fill=huawei-black] (10.9375,30.2240) -- (10.9375,33.6097) .. controls (10.9375,34.5713) and (10.4603,35.0845) .. (9.5932,35.0845) .. controls (8.7212,35.0845) and (8.2411,34.5565) .. (8.2411,33.5686) -- (8.2411,30.2278) -- (7.0415,30.2278) -- (7.0415,33.6097) .. controls (7.0415,35.2737) and (7.9658,36.2272) .. (9.5774,36.2272) .. controls (11.2041,36.2272) and (12.1371,35.2554) .. (12.1371,33.5609) -- (12.1371,30.2240) -- (10.9375,30.2240) -- cycle;
        \path[fill=huawei-black] (15.3511,30.2240) -- (12.7456,36.1351) -- (13.9702,36.1351) -- (14.4731,34.9903) -- (14.5091,34.9045) -- (17.2158,34.9045) -- (17.7467,36.1351) -- (19.0045,36.1351) -- (16.4233,30.2590) -- (16.4001,30.2240) -- cycle;
        \path[fill=huawei-black] (22.4840,30.2240) -- (21.1414,34.2912) -- (19.8344,30.2271) -- (18.5578,30.2271) -- (20.6186,36.1388) -- (21.6120,36.1388) -- (22.9573,32.2553) -- (24.3016,36.1388) -- (25.3034,36.1388) -- (27.3592,30.2271) -- (26.1152,30.2271) -- (24.8055,34.2912) -- (23.4626,30.2240) -- cycle;
        \path[fill=huawei-black] (34.2236,30.2240) -- (34.2236,36.1300) -- (35.4074,36.1300) -- (35.4074,30.2240) -- cycle;
        \path[fill=huawei-black] (0.2686,30.2244) -- (0.2686,36.1384) -- (1.4686,36.1384) -- (1.4686,33.7365) -- (4.1780,33.7365) -- (4.1780,36.1384) -- (5.3783,36.1384) -- (5.3783,30.2244) -- (4.1780,30.2244) -- (4.1780,32.6102) -- (1.4686,32.6102) -- (1.4686,30.2244) -- cycle;
        \path[fill=huawei-black] (28.3267,30.2284) -- (28.3267,36.1344) -- (32.7928,36.1344) -- (32.7928,35.0575) -- (29.5105,35.0575) -- (29.5105,33.5931) -- (31.6931,33.5931) -- (31.6931,32.5160) -- (29.5105,32.5160) -- (29.5105,31.3052) -- (32.6785,31.3052) -- (32.6785,30.2284) -- cycle;
        \path[fill=white] (15.8594,31.7207) -- (16.7149,33.7008) -- (16.7119,33.7008) -- (16.7701,33.8374) -- (14.9552,33.8374) -- (15.0127,33.7008) -- (15.0117,33.7008) -- cycle;
        \path[fill=huawei-red] (15.2113,0.0001) .. controls (14.7353,0.0422) and (13.4491,0.3349) .. (13.4491,0.3349) -- (13.4486,0.3349) .. controls (10.5495,1.0843) and (9.8643,3.7151) .. (9.8643,3.7151) .. controls (9.7227,4.1575) and (9.6584,4.6109) .. (9.6395,5.0380) -- (9.6395,5.6194) .. controls (9.6780,6.5176) and (9.8777,7.1883) .. (9.8777,7.1883) .. controls (10.8461,11.4823) and (15.6075,18.5379) .. (16.6308,20.0200) .. controls (16.7034,20.0920) and (16.7615,20.0660) .. (16.7615,20.0660) .. controls (16.8720,20.0355) and (16.8633,19.9296) .. (16.8633,19.9296) -- (16.8654,19.9301) .. controls (18.4416,4.1760) and (15.2113,0.0001) .. (15.2113,0.0001) -- (15.2113,0.0001) -- cycle;
        \path[fill=huawei-red] (20.4192,0.0000) .. controls (20.4192,0.0000) and (17.1748,4.1782) .. (18.7521,19.9415) -- (18.7542,19.9415) .. controls (18.7664,20.0416) and (18.8374,20.0624) .. (18.8374,20.0624) .. controls (18.9430,20.1033) and (18.9971,20.0019) .. (18.9971,20.0019) -- (18.9976,20.0029) .. controls (20.0472,18.4829) and (24.7814,11.4657) .. (25.7455,7.1882) .. controls (25.7455,7.1882) and (26.2683,5.1179) .. (25.7636,3.7150) .. controls (25.7636,3.7150) and (25.0470,1.0434) .. (22.1442,0.3375) .. controls (22.1442,0.3375) and (21.3077,0.1251) .. (20.4193,0.0000) -- (20.4192,0.0000) -- cycle;
        \path[fill=huawei-red] (5.4542,4.7294) .. controls (5.4542,4.7294) and (2.6920,7.3513) .. (2.5547,10.1307) -- (2.5558,10.1307) -- (2.5558,10.5519) .. controls (2.5579,10.5836) and (2.5595,10.6157) .. (2.5615,10.6480) .. controls (2.6804,12.8893) and (4.3665,14.2157) .. (4.3665,14.2157) .. controls (7.0831,16.8634) and (13.6611,20.2062) .. (15.1896,20.9647) .. controls (15.2110,20.9727) and (15.2900,20.9985) .. (15.3364,20.9399) .. controls (15.3364,20.9399) and (15.3605,20.9216) .. (15.3715,20.8887) -- (15.3715,20.8189) .. controls (15.3704,20.8149) and (15.3683,20.8109) .. (15.3663,20.8065) -- (15.3669,20.8065) .. controls (11.1809,11.6620) and (5.4543,4.7294) .. (5.4543,4.7294) -- (5.4542,4.7294) -- cycle;
        \path[fill=huawei-red] (30.1695,4.7294) .. controls (30.1695,4.7294) and (24.4602,11.6403) .. (20.2761,20.7662) -- (20.2777,20.7657) .. controls (20.2777,20.7657) and (20.2283,20.8715) .. (20.3082,20.9399) .. controls (20.3082,20.9399) and (20.3320,20.9579) .. (20.3650,20.9652) -- (20.4229,20.9652) .. controls (20.4333,20.9622) and (20.4444,20.9582) .. (20.4554,20.9507) -- (20.4554,20.9517) .. controls (22.0255,20.1724) and (28.5525,16.8516) .. (31.2563,14.2162) .. controls (31.2563,14.2162) and (32.9686,12.8412) .. (33.0583,10.6334) .. controls (33.2560,7.5672) and (30.1696,4.7294) .. (30.1696,4.7294) -- (30.1695,4.7294) -- cycle;
        \path[fill=huawei-red] (35.3082,13.8080) .. controls (35.3082,13.8080) and (26.0003,18.8031) .. (21.1876,22.0494) -- (21.1882,22.0499) -- (21.1893,22.0509) .. controls (21.1893,22.0509) and (21.1019,22.1081) .. (21.1324,22.2106) .. controls (21.1324,22.2106) and (21.1781,22.2933) .. (21.2446,22.2933) -- (21.2446,22.2938) .. controls (22.9684,22.2968) and (29.4914,22.3041) .. (29.6549,22.2736) .. controls (29.6549,22.2736) and (30.4983,22.2399) .. (31.5406,21.8395) .. controls (31.5406,21.8395) and (33.8608,21.1019) .. (35.0659,18.4677) .. controls (35.0659,18.4677) and (35.6166,17.3662) .. (35.6246,15.8187) -- (35.6246,15.7531) .. controls (35.6206,15.1563) and (35.5365,14.4957) .. (35.3083,13.8080) -- (35.3082,13.8080) -- cycle;
        \path[fill=huawei-red] (0.3129,13.8313) .. controls (-0.5339,16.4531) and (0.6062,18.5656) .. (0.6080,18.5690) .. controls (1.7962,21.0795) and (4.0641,21.8401) .. (4.0641,21.8401) .. controls (5.1112,22.2703) and (6.1586,22.3000) .. (6.1586,22.3000) .. controls (6.3221,22.3300) and (12.6713,22.3030) .. (14.3725,22.2950) .. controls (14.4445,22.2945) and (14.4842,22.2221) .. (14.4842,22.2221) .. controls (14.4892,22.2142) and (14.4936,22.2062) .. (14.4955,22.1989) -- (14.4955,22.1333) .. controls (14.4814,22.0893) and (14.4439,22.0584) .. (14.4439,22.0584) -- (14.4450,22.0578) .. controls (9.6347,18.8126) and (0.3130,13.8315) .. (0.3130,13.8315) -- (0.3129,13.8313) -- cycle;
        \path[fill=huawei-red] (14.1782,23.1010) -- (3.2285,23.4850) .. controls (4.4160,25.6018) and (6.4158,27.2469) .. (8.4990,26.7416) .. controls (9.9366,26.3822) and (13.1935,24.1105) .. (14.2687,23.3429) -- (14.2651,23.3399) .. controls (14.3487,23.2648) and (14.3188,23.2045) .. (14.3188,23.2045) .. controls (14.2913,23.1062) and (14.1783,23.1063) .. (14.1783,23.1063) -- (14.1782,23.1010) -- cycle;
        \path[fill=huawei-red] (21.4305,23.1090) -- (21.4294,23.1130) .. controls (21.4294,23.1130) and (21.3333,23.1252) .. (21.3064,23.1972) .. controls (21.3064,23.1972) and (21.2831,23.2956) .. (21.3478,23.3445) -- (21.3467,23.3455) .. controls (22.3950,24.0973) and (25.5729,26.3191) .. (27.1039,26.7505) .. controls (27.1039,26.7505) and (27.3359,26.8294) .. (27.7246,26.8435) -- (27.9581,26.8435) .. controls (28.9839,26.8075) and (30.7708,26.2805) .. (32.3946,23.4907) -- (21.4305,23.1090) -- cycle;
      \end{scope}%
    \end{scope}%
  \end{tikzpicture}%
}

\RequirePackage{fancyhdr}
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{0pt}
  \fancyhf{}
  \fancyfoot[L]{
    \LeftHuaweiBar{}
    \ifauthordraft%
      \begin{textblock}{14}[0.5,0.5](8,8)%
        \tikz \node[minimum width=14\TPHorizModule] {%
          \fontsize{64}{64}\selectfont\sffamily\scshape\color{gray!20}\rotatebox{30}{it is a draft}
        };%
      \end{textblock}%
    \else\fi%
    \ifnum\value{page}=1\else%
      \ifnobrand\else%
        \begin{textblock}{8}[0,0](1.2,0.2)%
          \PrintHuaweiLogo{}%
        \end{textblock}%
      \fi%
    \fi%
    \begin{textblock}{8}[1,0](15.8,0.2)%
      \raggedleft\headers{%
        \ifnosecurity\else%
          \thesecurity
        \fi%
      }%
    \end{textblock}%
    \begin{textblock}{8}[0,1](1.2,15.8)%
      \ifnum\value{page}=1\else%
        \headers{%
          \ifanonymous\else%
            \theauthor%
            \ifnosecurity\else,
              \theid
            \fi%
            \ifnobrand\else%
              \newline
            \fi%
          \fi%
          \ifnobrand\else%
            \thecompany{}
          \fi%
        }%
      \fi%
    \end{textblock}%
    \begin{textblock}{8}[1,1](15.8,15.8)%
      \raggedleft\headers{%
        \ifnum\value{page}=1\else%
          \ifnopaging\else%
            Page \#\thepage{} of \pageref*{LastPage}%
            \ifnodate\else%
              \\
            \fi%
          \fi%
        \fi%
        \ifnodate\else%
          \today{} \settimeformat{daytime}\currenttime{}%
        \fi%
      }%
    \end{textblock}%
  }

\renewcommand\maketitle{%
  \vspace*{18pt}
  {\bfseries{\Huge\thetitle}}
  \\[6pt]
  \ifx\thesubtitle\empty\else%
    {\color{gray!50!black}\large\thesubtitle}
  \fi
  \\[18pt]
  \ifnobrand\else%
    \ifanonymous\else%
      \ifx\thecompany\empty\else%
        \thecompany\newline
      \fi
    \fi
  \fi
  \ifx\theauthor\empty\else%
    {\scshape\ifanonymous
      Anonymous Authors
    \else%
      \theauthor
    \fi}%
  \fi%
  \ifanonymous\else%
    \ifx\theauthor\empty\else
      \ifnobrand\else%
        \ifx\theid\empty\else
          \;/ {\theid}
        \fi
      \fi
    \fi
  \fi\newline
  \vspace{2em}
}

\newcommand\PrintThankYouPage{
  \newpage
  \vspace*{\fill}
  \begin{center}
  {\Huge\color{huawei-red}\textbf{Thank you!}}
  \end{center}
  \vspace*{\fill}
}

\newcommand\PrintDisclaimer{%
  \justify\vspace*{\fill}\setrelativestretch{0.55}{{\sffamily\scriptsize\color{gray!50!black}%
  \textbf{Disclaimer}: The opinions expressed in this document are in good faith and
  while every care has been taken in preparing it,
  \ifnobrand%
    the author%
  \else%
    \thecompany{}%
  \fi
  makes no representations and gives no warranties of whatever
  nature in respect of these documents, including but not limited to the
  accuracy or completeness of any information, facts and/or opinions contained therein.
  \ifnobrand%
    The author%
  \else%
    \thecompany{}%
  \fi,
  its subsidiaries, the directors, employees and agents
  cannot be held liable for the use of and reliance of the opinions, estimates, forecasts and
  findings in these documents.}}}

\newcommand\PrintFirstPage[1]{
  \LeftHuaweiBar{}
  \def\param{#1}%
  \ifx\param\empty\else
    \includegraphics[height=2in]{#1}
    \newline
  \fi
  \vspace*{0.5in}
  \maketitle
  \iflandscape\ifnocover\else
    \begin{textblock}{14}[1,1](14,14)
      \raggedleft\includegraphics[height=3.6in]{huawei-cover-picture.pdf}
    \end{textblock}
  \fi\fi
}

\newcommand\PrintLastPage{
  \newpage
  \vspace*{1in}
  \begin{center}
  \begin{minipage}{0.6\columnwidth}\raggedright
  \setlength{\parskip}{6pt}
  {\Huge\color{huawei-red}\textbf{Thank you!}}

  \vspace{0.5in}

  \begin{CJK}{UTF8}{gbsn}
  把数字世界带入每个人、每个家庭、 每个组织、构建万物互联的智能世界。
  \end{CJK}

  Bring digital to every person, home and organization
  \newline
  for a fully connected, intelligent world.

  \textbf{%
    Copyright \copyright{} \the\year{} \thecompany{}
    \newline
    All Rights Reserved.%
  }

  The information in this document may contain predictive
  statements including, without limitation, statements regarding
  the future financial and operating results, future product
  portfolio, new technology, etc. There are a number of factors that
  could cause actual results and developments to differ materially
  from those expressed or implied in the predictive statements.
  Therefore, such information is provided for reference purpose
  only and constitutes neither an offer nor an acceptance.
  \ifnobrand%
    The author%
  \else%
    \thecompany{}%
  \fi
  may change the information at any time without notice.
  \end{minipage}
  \end{center}%
}

\newcommand\PrintBibliography{
  \setlength\bibitemsep{0pt}
  \AtNextBibliography{\small}
  \newpage
  \raggedright
  \iflandscape
    \begin{multicols}{3}\setrelativestretch{1.0}{\printbibliography}\end{multicols}
  \else
    \begin{multicols}{2}\setrelativestretch{1.0}{\printbibliography}\end{multicols}
  \fi
}

\endinput