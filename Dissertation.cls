% Class Information
% ==========================================================
\newcommand\fileversion{1.0}
\newcommand\filedate{2022/08/28}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertation}[\filedate (v\fileversion) by oqtoturkey]


% General
% ==========================================================
\LoadClass[12pt,a4paper,oneside]{book}
% Section depth = 2 (1, 1.1, 1.1.1)
\setcounter{secnumdepth}{2}


% Layout
% ==========================================================
\usepackage[left=30mm,right=30mm,top=35mm,bottom=30mm]{geometry}
\raggedbottom

% Stopping all hyphenation.
\hyphenpenalty=10000\relax
\exhyphenpenalty=10000\relax
\sloppy

\usepackage{url}
\usepackage{pdfpages}


% Maths
% ==========================================================
\usepackage{bm}
\usepackage{amsmath,amssymb,mathtools}
\usepackage{siunitx}


% Fonts
% ==========================================================
% Change default font to Times.
\usepackage{newtxtext,newtxmath}


% Shaded box
% ==========================================================
\usepackage{framed}
\newenvironment{outline}[1]{\definecolor{shadecolor}{gray}{0.95}
  \begin{shaded}{\color{black}\noindent\textsc{#1}} \\
}{\end{shaded}}


% Line Spacing
% ==========================================================
\usepackage{setspace}
\renewcommand\baselinestretch{1.5}


% ToC
% ==========================================================
% nottoc: Hiding ToC in Table of Contents.
\RequirePackage[nottoc]{tocbibind}
\setcounter{tocdepth}{2}
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\listfigurename}{List of Figures}
\renewcommand{\listtablename}{List of Tables}

% Remove page style (page number) from first page of ToCs.
\addtocontents{toc}{\protect\thispagestyle{empty}}
\addtocontents{lof}{\protect\thispagestyle{empty}}
\addtocontents{lot}{\protect\thispagestyle{empty}}


% Cross-referencing
% ==========================================================
\usepackage[hypertexnames=false]{hyperref}
\usepackage[capitalize]{cleveref}  % figure -> Figure

\numberwithin{figure}{chapter}
\numberwithin{table}{chapter}
\numberwithin{equation}{chapter}


% Header
% ==========================================================
\usepackage{fancyhdr}

\fancypagestyle{HeaderFooterStyle}{
  \renewcommand{\chaptermark}[1]{\markboth{##1}{}}
  \renewcommand{\sectionmark}[1]{\markright{\thesection\ ##1}{}}
  \fancyhf{}  % Clear existing header and footer style.
  \fancyhead[R]{\nouppercase \rightmark\hspace{0.25em} | \hspace{0.25em} \bfseries{\thepage}}
}
\pagestyle{HeaderFooterStyle}
\setlength{\headheight}{14.5pt}


% Figure
% ==========================================================
\usepackage{graphicx}
\usepackage{subcaption}
% Change figure's caption style.
\captionsetup[figure]{format=plain,labelformat=simple,labelsep=period,font=footnotesize,labelfont=bf}


% Table
% ==========================================================
\usepackage{booktabs}
\usepackage{multirow}
% Change table's caption style.
\captionsetup[table]{format=plain,labelformat=simple,labelsep=period,font=footnotesize,labelfont=bf}


% Footnote
% ==========================================================
% Place footnotes at the bottom of the page.
\usepackage[bottom]{footmisc}


% Bibliography
% ==========================================================
\usepackage[nobreak]{cite}
\renewcommand{\bibname}{References}

% Remove page style (page number) from first page of bibliography.
\newbool{firstbib}
\booltrue{firstbib}
\preto{\bibitem}{\ifbool{firstbib}{\thispagestyle{empty}\setbool{firstbib}{false}}{}}


% Alias
% ==========================================================
\newcommand{\ie}{\textit{i}.\textit{e}.}
\newcommand{\eg}{\textit{e}.\textit{g}.}
\newcommand{\etc}{\textit{etc}.}
\newcommand{\etal}{\textit{et al}.}
\newcommand{\invivo}{\textit{in-vivo}\@\xspace}
\newcommand{\exvivo}{\textit{ex-vivo}\@\xspace}
\newcommand{\argmax}{\operatornamewithlimits{argmax}}
\newcommand{\argmin}{\operatornamewithlimits{argmin}}
