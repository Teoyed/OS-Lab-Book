\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{clgrammar}[2020/04/25 Conlang Grammar Book]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass{book}
\RequirePackage{xcolor}
\definecolor{chapter}{rgb}{0.2, 0.25, 0.4}
\definecolor{section}{rgb}{0.2, 0.45, 0.3}
\definecolor{cover}{RGB}{145, 0, 140}
\definecolor{background}{rgb}{1.0, 0.99, 0.95}

% IPA support
\RequirePackage{fontspec}
\setmainfont{Noto Serif}
\setsansfont{Noto Sans}
\setmonofont{Noto Sans Mono}

% Useful packages
\RequirePackage{verbatim}

% Fancy formatting
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{geometry}
\geometry{bottom=3.5cm}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\leftmark}
\fancyfoot[CE,CO]{\thepage}
\AtBeginDocument{
    \setlength{\oddsidemargin}{2mm}
    \setlength{\evensidemargin}{2mm}
%    \setlength{\marginpar}{0pt}
%    \setlength{\marginparpush}{0pt}
    \setlength{\hoffset}{0pt}
    \setlength{\parskip}{4pt}
    \setlength{\footskip}{30pt}
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{1pt}
}

% Better section titles
\RequirePackage{titlesec}
\titleformat{\chapter}[frame]{\Huge\bfseries}
    {{\color{chapter}\Large Chapter \thechapter}}{0em}
    {\thispagestyle{fancy}}
\titleformat{\section}[block]
    {\normalfont\bfseries\Large}
    {{\color{section}\large Section \thesection:}}{6pt}{}

% Better title page
\RequirePackage{anyfontsize}
\RequirePackage{graphicx}
\newcommand{\HUGE}{\fontsize{50}{60}}
\newcommand{\thesubtitle}{I forgot to put in a subtitle.}
\newcommand{\subtitle}[1]{\renewcommand{\thesubtitle}{#1}}
\renewcommand{\maketitle}{%
    {\bfseries
        \begingroup
                    \csname thispagestyle\endcsname{empty}%
        \begin{titlepage}
            \pagecolor{cover}%
            \begin{center}
                {\HUGE\textsc{\thetitle}} \\
                \vspace{0.5cm}
                {\Large\emph{\thesubtitle}} \\
                \vspace{1cm}
                \includegraphics[width=\textwidth]{images/cover.png}
                \vfill
                                \csname theauthor\endcsname
            \end{center}
        \end{titlepage}
        \endgroup
        \pagecolor{background}
        \setcounter{page}{0}
    }%
}

\newenvironment{gloss}{
    \begin{center}
        \begin{tabular}{|c|}
        \hline
}{
        \hline
        \end{tabular}
    \end{center}
}