%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% File: ulthesis.cls, version 3.0, April 2013
%%%
%%% A style file for University of Louisville theses.
%%%
%%% Written by John Kielkopf, Department of Physics and Astronomy
%%%   based on a thesis style file by Dinesh Das, (c) 1995.
%%%
%%%   with contributions by Csaba Palotai, 2006
%%%   with contributions by Guangyang Xu, 2013
%%%
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% The following was adapted from `report.cls', generated
%% on <1994/9/6> with the docstrip utility (2.2h).
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `report')
%%
%% Copyright 1994 the LaTeX3 project and the individual authors.
%% All rights reserved.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ulthesis}[]
\typeout{**}
\typeout{** University of Louisville Thesis Style File, Version 2.0.3 }
\typeout{**}
\typeout{** Meets the Graduate School requirements of July 2006}
\typeout{**}
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\newif\if@openbib
\@openbibfalse
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{\@openbibtrue}
\ExecuteOptions{letterpaper,10pt,oneside,onecolumn,final,openany}
\ProcessOptions
\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\if@twoside
    \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
      \def\chaptermark##1{%
        \markboth {\uppercase{\ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ \fi
            ##1}}{}}%
      \def\sectionmark##1{%
        \markright {\uppercase{\ifnum \c@secnumdepth >\z@
            \thesection. \ \fi
            ##1}}}}
\else
    \def\ps@headings{%
      \let\@oddfoot\@empty
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
      \def\chaptermark##1{%
        \markright {\uppercase{\ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ \fi
            ##1}}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }
\if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \null\vfil
  \vskip 68\p@
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 3em%
    {\large
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
      \vskip 1.5em%
    {\large \@date \par}%       % Set date in \large size.
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \let\thanks\relax\let\maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}}
\else
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox to\z@{$\m@th^{\@thefnmark}$\hss}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hbox to1.8em{\hss$\m@th^{\@thefnmark}$}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \let\thanks\relax
  \let\maketitle\relax\let\@maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}}
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
\newcommand\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thepart          {\arabic{part}}
\renewcommand\thechapter       {\arabic{chapter}}
\renewcommand\thesection       {\thechapter.\arabic{section}}
\renewcommand\thesubsection    {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph  {\theparagraph.\arabic{subparagraph}}
\newcommand\@chapapp{\chaptername}
\newcommand\part{\cleardoublepage
                 \thispagestyle{plain}%
                 \if@twocolumn
                     \onecolumn
                     \@tempswatrue
                   \else
                     \@tempswafalse
                 \fi
                 \hbox{}\vfil
                 \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}
    {\centering
     \interlinepenalty \@M
     \reset@font
     \ifnum \c@secnumdepth >-2\relax
       \huge \partname~\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \reset@font
     \Huge #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \hbox{}%
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}

\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                    \else
                      \addcontentsline{toc}{chapter}{#1}
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \reset@font
    \ifnum \c@secnumdepth >\m@ne
         \huge \@chapapp{} \thechapter
         \par
         \vskip 20\p@
       \fi
    \Huge #1\par
    \nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \reset@font
    \Huge  #1\par
    \nobreak
    \vskip 40\p@
  }}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\reset@font\Large}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\reset@font\large}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\reset@font\normalsize}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\reset@font\normalsize}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength\leftmargin    {\leftmargini}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}
\renewcommand\theenumiv{\Alph{enumiv}}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand\descriptionlabel[1]{\hspace\labelsep
                                \normalfont #1}
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \begin{center}
        \abstractname
      \end{center}}
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi
\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item[]}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item[]}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \if@compatibility
        \setcounter{page}{0}
      \else
        \setcounter{page}{1}%
      \fi}%
    {\if@restonecol\twocolumn \else \newpage \fi
      \setcounter{page}{1}%
    }
\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand\@chapapp{\appendixname}%
  \renewcommand\thechapter{\Alph{chapter}}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
%\@addtoreset{equation}{chapter}
%\renewcommand\theequation{\thechapter.\arabic{equation}}
%\newcounter{figure}[chapter}
\newcounter{figure}
%\renewcommand\thefigure{\thechapter.\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1. #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1. #2\par
  \else
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\newcommand{\cal}{\@fontswitch{\relax}{\mathcal}}
\newcommand{\mit}{\@fontswitch{\relax}{\mathnormal}}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg {2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{\uppercase{\contentsname}}{\uppercase{\contentsname}}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\newcommand\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
    \endgroup
  \fi}
\newcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand\l@section      {\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\l@subsection   {\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand\l@paragraph    {\@dottedtocline{4}{10em}{5em}}
\newcommand\l@subparagraph {\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \part*{\listfigurename
      \@mkboth{\uppercase{\listfigurename}}%
              {\uppercase{\listfigurename}}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \part*{\listtablename
      \@mkboth{\uppercase{\listtablename}}{\uppercase{\listtablename}}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newdimen\bibindent
\bibindent=1.5em
\newenvironment{thebibliography}[1]
     {\part*{\bibname
        \@mkboth{\uppercase{\bibname}}{\uppercase{\bibname}}}%
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \if@openbib
              \advance\leftmargin\bibindent
              \itemindent -\bibindent
              \listparindent \itemindent
              \parsep \z@
            \fi
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\arabic{enumiv}}}%
      \if@openbib
        \renewcommand\newblock{\par}
      \else
        \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
      \fi
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{}
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\uppercase{\indexname}}%
                        {\uppercase{\indexname}}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem  {\par\hangindent 40\p@}
\newcommand\subitem   {\par\hangindent 40\p@ \hspace*{20\p@}}
\newcommand\subsubitem{\par\hangindent 40\p@ \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}
\@addtoreset{footnote}{chapter}
\long\def\@makefntext#1{%
    \parindent 1em%
    \noindent
    \hbox to 1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{TABLE OF CONTENTS}
\newcommand\listfigurename{LIST OF FIGURES}
\newcommand\listtablename{LIST OF TABLES}
\newcommand\bibname{REFERENCES}
\newcommand\indexname{INDEX}
\newcommand\figurename{Figure}
\newcommand\tablename{TABLE}
\newcommand\partname{PART}
\newcommand\chaptername{CHAPTER}
\newcommand\appendixname{APPENDIX}
\newcommand\abstractname{ABSTRACT}
\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}      % Arabic page numbers
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% This remainder file defines additional macros used for preparing theses
%%% for The University of Louisville.  It has been tested with LaTeX2e.
%%%
%%% To use this file with LaTeX2e, make sure your TEXINPUTS environment
%%% variable contains the directory in which this file is located.
%%% Include this file as a package in the preamble:
%%%
%%% \documentclass[...]{ulthesis}
%%% \usepackage{graphics}
%%%
%%%
%%% Command Names:
%%% ==============
%%%
%%% ALL command names used in this file that are used to format the
%%% thesis begin with "thesis" (e.g., \thesisauthor).  All of these
%%% commands can be changed by the user using \renewcommand, e.g.,
%%%
%%% \renewcommand{\thesisauthor}{First M. Last}
%%%
%%% after loading the package in LaTeX2e.
%%%
%%% The following is a list of all thesis-related variables used together
%%% with their default values:
%%%
%%% \thesisauthor    %% Name of the author; defaults to "Ima Student".
%%% \thesismonth     %% Month of graduation; defaults to "May".
%%% \thesisyear      %% Year of graduation; defaults to "2003".
%%% \thesisabstractdate     %% Date for abstract; defaults to \today.
%%% \thesistitle     %% Full title of dissertation; defaults to "Title".
%%% \thesistitletypesize
%%%                  %% Typesize used to typeset \thesistitle; defaults
%%%                  %% to \large.
%%% \thesisauthorpreviousdegrees
%%%                  %% Previous degrees of author; defaults to "Degree"
%%% \thesisauthoraddress
%%%                  %% Permanent address of author; defaults to "USA"
%%% \thesisapprovedby%% Approval of dissertation committee; defaults to
%%%                  %% "Approved by".
%%% \thesisapprovedbytypesize
%%%                  %% Typesize used to typeset \thesisapprovedby; defaults
%%%                  %% to \large.
%%% \thesistype      %% Type of thesis; defaults to "Dissertation".
%%% \thesistypetypesize
%%%                  %% Typesize used to typeset \thesistype; defaults to
%%%                  %% \large.
%%% \thesisdegree    %% Degree for which thesis is submitted; defaults to
%%%                  %% "Doctor of Philosophy".
%%% \thesisdegreetypesize
%%%                  %% Typesize used to typeset \thesisdegree; defaults to
%%%                  %% \large.
%%% \thesisdegreeabbreviation
%%%                  %% Abbreviation of \thesisdegree; defaults to "Ph.D.".
%%% \thesiscommitteesize
%%%                  %% Number of members in thesis committee; defaults to 4.
%%% \thesiscommittee %% Name of thesis committee; defaults to
%%%                  %% "Dissertation Committee:".
%%% \thesisvitahead
%%%                  %% Title of vita page; defaults to "CURRICULUM VITAE".
%%% \thesisabstracthead
%%%                  %% Title of abstract page; defaults to "ABSTRACT".
%%% \thesisacknowledgmenthead
%%%                  %% Title of the acknowledgments page; defaults to
%%%                  %% "Acknowledgments".
%%% \thesisacknowledgmentsigname
%%%                  %% Signature on the acknowledgments page; defaults to
%%%                  %% \thesisauthor.
%%% \thesisacknowledgmentsignametypesize
%%%                  %% Typesize used to typeset \thesisacknowledgmentsigname;
%%%                  %% defaults to \large.
%%% \thesisacknowledgmentsigplace
%%%                  %% Address used on the acknowledgments page; defaults
%%%                  %% to "University of Louisville" \\ \thesismonth
%%%                  %% \thesisyear".
%%% \thesisstudent   %% Name of author with previous degrees; defaults to
%%%                  %% "\thesisauthor, \thesisauthorpreviousdegrees".
%%%
%%% Most of the default values will satisfy the Graduate School's
%%% requirements; however, at a minimum, the user SHOULD redefine the
%%% following commands:
%%%
%%% \thesisauthor
%%% \thesismonth
%%% \thesisyear
%%% \thesistitle
%%% \thesisauthorpreviousdegrees
%%% \thesisauthoraddress
%%%
%%% In addition to the above variables, the following commands are
%%% provided to generate the optional sections of the thesis:
%%%
%%% \thesistitlepage %% Generates the title page.
%%% \thesissignaturepage
%%%                  %% Generates the signature page.
%%%
%%% There are also a few environments to generate paragraph-like text:
%%%
%%% thesisabstract          %% Text of abstract.
%%% thesisacknowledgments   %% Text of acknowledgments.
%%% thesisauthorvita       %% Text of author's vita.
%%%
%%% Bells and Whistles:
%%% ===================
%%%
%%% The following commands are provided purely for playing around with.
%%% They should be used in the document preamble (before \begin{document}).
%%%
%%% \thesisdraft     %% Prints a timestamp at the top of each page.  This
%%%                  %% must be invoked in the document preamble (before
%%%                  %% \begin{document}).
%%% \leftchapter, \centerchapter, \rightchapter
%%%                  %% These commands generate left-justified, centered,
%%%                  %% and right-justified chapter headings, respectively.
%%% \singlespace, \oneandhalfspace, \doublespace
%%%                  %% These define the line spacing to single-space,
%%%                  %% one-and-one-half space, and double-space
%%%                  %% respectively.  Note that the minimum spacing
%%%                  %% required by the Graduate School is \oneandhalfspace,
%%%                  %% but \singlespace is useful, e.g., when using
%%%                  %% \thesisdraft.
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%
%%% Set up page layout parameters.
%%%

\raggedright
\setlength{\textheight}{8.5in}
\setlength{\oddsidemargin}{0.5in}
\setlength{\evensidemargin}{0.5in}
\setlength{\textwidth}{6.0in}
\setlength{\topmargin}{0.0in}
\setlength{\headheight}{0.2in}
\setlength{\headsep}{0.3in}
\setlength{\parindent}{12mm}
\markright{}
\markboth{}{}

%%%
%%% Set up default values.
%%%

\newcommand{\@universityname}{University of Louisville}
\newcommand{\@universitycity}{Louisville, Kentucky}
\newcommand{\@publicationno}{Publication No.\ \line(1,0){40} \\[10mm]}
\newcommand{\thesisauthor}{Ima Student}
\newcommand{\thesiscollege}{College of Arts and Sciences}
\newcommand{\thesisdept}{Department of Physics and Astronomy}
\newcommand{\thesisdegreein}{Physics}
\newcommand{\thesismonth}{May}
\newcommand{\thesisyear}{2013}
\newcommand{\thesisabstractdate}{\today}
\newcommand{\thesistitle}{Title}
\newcommand{\thesistitletypesize}{\large}
\newcommand{\thesisauthorpreviousdegrees}{Degree}
\newcommand{\thesisauthoraddress}{USA}
\newcommand{\thesisapprovedby}{Approved by}
\newcommand{\thesisapprovedbytypesize}{\large}
\newcommand{\thesistype}{Dissertation}
\newcommand{\thesistypetypesize}{\large}
\newcommand{\thesistypesize}{\large}
\newcommand{\thesisdegree}{Doctor of Philosophy}
\newcommand{\thesisdegreetypesize}{\large}
\newcommand{\thesisdegreeabbreviation}{Ph.D.}
\newcommand{\thesisshowapprovaldate}{0}
\newcommand{\thesisapprovaldate}{}
\newcommand{\thesiscommitteesize}{4}
\newcommand{\thesiscommittee}{Dissertation Committee:}
\newcommand{\thesisdirectorname}{Director Name}
\newcommand{\thesismembertwo}{Committee Member 2 Name}
\newcommand{\thesismemberthree}{Committee Member 3 Name}
\newcommand{\thesismemberfour}{Committee Member 4 Name}
\newcommand{\thesismemberfive}{Committee Member 5 Name}
\newcommand{\thesisvitahead}{CURRICULUM VITAE}
\newcommand{\thesisvitaheadtypesize}{\large}
\newcommand{\thesisabstracthead}{ABSTRACT}
\newcommand{\thesisacknowledgmenthead}{ACKNOWLEDGEMENTS}
\newcommand{\thesisdedicationhead}{DEDICATION}
\newcommand{\thesisstudent}{\thesisauthor \\ \thesisauthorpreviousdegrees}


%%%
%%% Command for masters theses.  \phdthesis is provided for symmetry.
%%%

\newcommand{\mastersthesis}{
    \renewcommand{\thesistype}{Thesis}
    \renewcommand{\@publicationno}{}
    \renewcommand{\thesisdegree}{Master of Science}
    \renewcommand{\thesisdegreeabbreviation}{M.S.}
    \renewcommand{\thesiscommitteesize}{2}
    \renewcommand{\thesiscommittee}{Thesis Committee:}}
\newcommand{\phdthesis}{}

%%%
%%% Set up other commands.
%%%

\newcommand{\@defaultbaselinestretch}{1.5}
\newcommand{\@base}[1]{\renewcommand{\baselinestretch}{#1}}
% \newcommand{\singlespace}{\renewcommand{\@defaultbaselinestretch}{1.1}}
% \newcommand{\oneandhalfspace}{\renewcommand{\@defaultbaselinestretch}{1.5}}
% \newcommand{\doublespace}{\renewcommand{\@defaultbaselinestretch}{1.7}}
\newcommand{\@thesistitle}{{\thesistitletypesize \thesistitle}}
\newcommand{\@thesisapprovedby}%
    {\textbf{\thesisapprovedbytypesize \thesisapprovedby}}
\newcommand{\@thesistype}{{\thesistypetypesize \thesistype}}
\newcommand{\@thesisdegree}{{\thesisdegreetypesize \thesisdegree}}
\newcommand{\@thesisdegreeabbreviation}{\thesisdegreeabbreviation}
\newcommand{\@thesiscommittee}{\thesiscommittee}
\newcommand{\@thesisvitahead}{\thesisvitahead}
\newcommand{\@thesisabstracthead}%
    {\thesisabstracthead}
\newcommand{\@thesisacknowledgmenthead}%
    {\thesisacknowledgmenthead}
\newcommand{\@thesisdedicationhead}%
    {\thesisdedicationhead}
\newcommand{\@thesisacknowledgmentsigname}%
    {\textsc{\thesisacknowledgmentsignametypesize \thesisacknowledgmentsigname}}
\newcommand{\@thesisacknowledgmentsigplace}{\thesisacknowledgmentsigplace}

%%%
%%% Indent the first paragraph after a sectioning command.
%%%

\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue

%%%
%%% Set up default page numbering and line spacing.
%%% Pagestyle determines where the page numbering will go.  Use myheadings
%%% for upper right, and use plain for bottom centered.
%%%

\newcommand{\@textpagenumbering}{arabic}
\newcommand{\@preamblepagenumbering}{roman}
\newcommand{\@textpagestyle}{plain}
\newcommand{\@preamblepagestyle}{plain}
\pagenumbering{\@preamblepagenumbering}
\@base{\@defaultbaselinestretch}

\newcommand{\@chaptertype}{\chaptername}
\newcommand{\@appendix}{0}


%%%
%%% Command to generate title page.
%%%
%
% \newcommand{\thesistitlepage}{
%     \thispagestyle{empty}
%     \vspace*{0.2in}
%     \begin{spacing}{1}
%     \begin{center}
%       \uppercase{\@thesistitle} \\[20mm]
%       By \\[8mm]
%       \thesisstudent \\
%       \vspace{28mm}
%       A \thesistype \\
%       Submitted to the Faculty of the \\
%       \thesiscollege~of the \@universityname \\
%       in Partial Fulfillment of the Requirements \\
%       for the Degree of \\[15mm]
%       \thesisdegree \\
%       in \thesisdegreein\\
%       \vspace{20mm}
%       \thesisdept \\
%       \@universityname \\
%       \@universitycity \\[10mm]
%       \thesismonth \ \thesisyear
%     \end{center}
%     \end{spacing}
%     \newpage
%     \thispagestyle{empty}
%     \addtocounter{page}{-1}
%     \hspace{1em}
%     \newpage
%     }

% thesiscopyrightpage added by Geoffrey Lentner (2015)
\newcommand{\thesiscopyrightpage}{
    \thispagestyle{empty}
    \addtocounter{page}{-1}
    \vspace*{0.2in}
    \begin{spacing}{1}
    \begin{center}
        \vspace*{20mm}
        Copyright \thesisyear \phantom{}
        by \thesisauthor \\[10mm]
        All rights reserved
    \end{center}
    \end{spacing}
    \newpage
}

% \thesiscopyrightpage inserted by Geoffrey Lentner (2015)
\newcommand{\thesistitlepage}{
    \thispagestyle{empty}
    \vspace*{0.2in}
    \begin{spacing}{1}
    \begin{center}
        \uppercase{\@thesistitle} \\[20mm]
        By \\[8mm]
        \thesisstudent \\
        \vspace{28mm}
        A \thesistype \\
        Submitted to the Faculty of the \\
        \thesiscollege~of the \@universityname \\
        in Partial Fulfillment of the Requirements \\
        for the Degree of \\[15mm]
        \thesisdegree \\
        in \thesisdegreein\\
        \vspace{20mm}
        \thesisdept \\
        \@universityname \\
        \@universitycity \\[10mm]
        \thesismonth \ \thesisyear
    \end{center}
    \end{spacing}
    \newpage
    \thesiscopyrightpage
    \thispagestyle{empty}
    \addtocounter{page}{-1}
    \hspace{1em}
    \newpage
}

%%%
%%% Command to generate signature page.
%%%

\newcommand{\thesissignaturepage}{
    \thispagestyle{plain}
    \vspace*{0.2in}
    \begin{spacing}{1}
    \begin{center}
      \uppercase{\@thesistitle} \\[8mm]
      By \\[8mm]
      \thesisstudent \\[6mm]
      \ifnum\thesisshowapprovaldate=1
        A \thesistype\/ Approved On \\[14mm]
        \thesisapprovaldate \\[15mm]
      \else
        A \thesistype\/ Approved On \\[12mm]
        \rule{72mm}{.4mm} \\
        Date \\[12mm]
	\fi

      by the following \@thesiscommittee \\[8mm]
      \rule{72mm}{.4mm} \\
      \thesistype\/ Director \\
	 \thesisdirectorname\\[8mm]
	 \rule{72mm}{.4mm} \\
	 \thesismembertwo\\[8mm]
	 \rule{72mm}{.4mm} \\
	 \thesismemberthree\\[8mm]
	 \rule{72mm}{.4mm} \\
	 \thesismemberfour\\[8mm]
      \ifnum\thesiscommitteesize=5
        \rule{72mm}{.4mm} \\
	   \thesismemberfive\\
      \fi
%          \setlength{\unitlength}{1mm}
%          \begin{picture}(72,64)(0,0)
%            \multiput(0,64)(0,-12){\thesiscommitteesize}{\rule{72mm}{.4mm}}
%          \end{picture}
    \end{center}
    \end{spacing}
    \newpage}

%%%
%%% Environment to generate abstract page.
%%%

\newenvironment{thesisabstract}
    {%\doublespace\small\normalsize
     \part*{\@thesisabstracthead
         \@mkboth{}{}}
     \addcontentsline{toc}{part}{\@thesisabstracthead}
     \addtocontents{toc}{\protect\vspace{-0.8em}}
     \vspace*{2em}
     \begin{center}
       \thesistitle\\[1.5em]
       \thesisauthor\\[1.5em]
       \thesisabstractdate
     \end{center}
     \vspace*{1.5em}
     \begin{spacing}{\@defaultbaselinestretch}}
    {\end{spacing} \newpage}

%%%
%%% Environment to generate acknowledgments page.
%%%

\newenvironment{thesisacknowledgments}
    {%\doublespace\small\normalsize
     \part*{\@thesisacknowledgmenthead
         \@mkboth{}{}}
     \addcontentsline{toc}{part}{\@thesisacknowledgmenthead}
     \addtocontents{toc}{\protect\vspace{-0.8em}}
     \vspace*{4em}
     \begin{spacing}{\@defaultbaselinestretch}}
    {\end{spacing} \newpage}
    \par \vspace{20mm}

% Environment to generate dedication page,
% Added by Geoffrey Lentner (2015)
\newenvironment{thesisdedication}
    {\centering%\doublespace\small\normalsize
     \part*{\@thesisdedicationhead
         \@mkboth{}{}}
     \addcontentsline{toc}{part}{\@thesisdedicationhead}
     \addtocontents{toc}{\protect\vspace{-0.8em}}
     \vspace*{4em}
     \begin{spacing}{\@defaultbaselinestretch}}
    {\end{spacing} \newpage}
    \par \vspace{20mm}

%%%
%%% Environment to generate vita page.
%%%

\newenvironment{thesisauthorvita}
    {\clearpage
     \part*{\@thesisvitahead
         \@mkboth{}{}}
         \thispagestyle{plain}
    \addcontentsline{toc}{part}{\@thesisvitahead}
    \vspace*{0.5em}
    \begin{spacing}{\@defaultbaselinestretch}}
    {\end{spacing}
    }

\newcommand{\@chapteralignment}{\centering}
\renewcommand{\chapter}{\clearpage
   \ifnum\@appendix=1
     \renewcommand{\@chaptertype}{\appendixname}
   \else
     \renewcommand{\@chaptertype}{\chaptername}
   \fi
   \thispagestyle{plain}%
   \global\@topnum\z@
   \@afterindentfalse
   \secdef\@chapter\@schapter
   }
\renewcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\thechapter}{\Alph{chapter}}
  \renewcommand{\@appendix}{1}}

%%%
%%% Define chapter heading placement commands.
%%%

\newcommand{\leftchapter}{
    \renewcommand{\@chapteralignment}{\raggedright}}
\newcommand{\centerchapter}{
    \renewcommand{\@chapteralignment}{\centering}}
\newcommand{\rightchapter}{
    \renewcommand{\@chapteralignment}{\raggedleft}}

%%%
%%% Modified part commands.
%%%

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}
    {\newpage\centering
     \interlinepenalty \@M
     \reset@font
     \ifnum \c@secnumdepth >-2\relax
       \large \partname~\thepart
       \par
       \vskip 2\p@
     \fi
     \large #2\par}%
    \@endpart}
\def\@spart#1{%
    {\newpage\centering
     \interlinepenalty \@M
     \reset@font
     \large #1\par}%\bfseries
    \@endpart}
\def\@endpart{\@afterheading}

%%%
%%% Modified sectioning commands from report.cls, (c) LaTeX3 Project.
%%%


\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                      \refstepcounter{chapter}%
                      \typeout{\@chapapp\space\thechapter.}%
                      \addcontentsline{toc}{chapter}%
                          {\protect\numberline{\thechapter} #1}%
                    \else
                      \addcontentsline{toc}{chapter}{\@chaptertype{} #1}
                    \fi
                    \ifnum\value{chapter}=1
                      \ifnum\@appendix=0
                        \pagestyle{\@textpagestyle}
                        \pagenumbering{\@textpagenumbering}
                      \fi
                    \fi
%
% Uncomment the following to have no number on the leading page of a chapter
%                   \thispagestyle{empty}
%
                    \chaptermark{#1}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi
                    }

\def\@makechapterhead#1{%
  \vspace*{0.5in}%
  {\parindent \z@ \@chapteralignment \reset@font
    \ifnum \c@secnumdepth >\m@ne
      \large \@chapapp{} \thechapter
      \par
      \vskip 12\p@
    \fi
    \large #1\par
    \nobreak
    \vskip 16\p@
  }}
\def\@makeschapterhead#1{%
  \vspace*{0.5in}%
  {\parindent \z@ \@chapteralignment
    \reset@font
    \large #1\par
    \nobreak
    \vskip 16\p@
  }}


%%%
%%% Modify headings format
%%%

\renewcommand\part{\@startsection {part}{-1}{0em}{4em}{2mm}%
  {\newpage\vspace*{0.2in}\center\large}}%

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\reset@font\normalsize}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\reset@font\normalsize}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\reset@font\normalsize}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\reset@font\normalsize}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize}}





\renewenvironment{thebibliography}[1]
     {\clearpage
      \part*{\bibname
         \@mkboth{}{}}%
         \thispagestyle{plain}
      \addtocontents{toc}{\protect\vspace{1em}}
      \addcontentsline{toc}{part}{\bibname}
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \if@openbib
              \advance\leftmargin\bibindent
              \itemindent -\bibindent
              \listparindent \itemindent
              \parsep \z@
            \fi
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\arabic{enumiv}}}%
      \if@openbib
        \renewcommand\newblock{\par}
      \else
        \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
      \fi
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr{\@warning{Empty `thebibliography' environment}}%
      \endlist}

\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \part*{\listtablename
      \@mkboth{}{}}%
    \addcontentsline{toc}{part}{\listtablename}
    \addtocontents{toc}{\protect\vspace{-0.8em}}
    \vspace*{6ex}
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \part*{\listfigurename
      \@mkboth{}{}}
    \addcontentsline{toc}{part}{\listfigurename}
    \addtocontents{toc}{\protect\vspace{-0.8em}}
    \vspace*{6ex}
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \part*{\contentsname
        \@mkboth{}{}}%
    \vspace*{6ex}
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }

%%%
%%% Command to print draft version of the thesis.
%%%

\newcommand{\thesisdraft}{
    \setlength{\topmargin}{0in}
    \setlength{\headheight}{0.2in}
    \setlength{\headsep}{0.25in}
    \renewcommand{\@textpagestyle}{myheadings}
    \def\ps@myheadings{%
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@oddhead{\textsl{Draft of \timestamp}\hfil\thepage}%
     \let\@mkboth\@gobbletwo
     \let\chaptermark\@gobble
     \let\sectionmark\@gobble}
    }

%%%
%%% Code to compute current timestamp.  Some parts by Martin Minow.
%%%

\newcount\hour \newcount\minute
\hour=\time  \divide \hour by 60
\minute=\time
\loop \ifnum \minute > 59 \advance \minute by -60 \repeat
\def\thesistime{\ifnum \hour<13 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute
                      \ifnum \hour<12 \ am\else \ pm\fi
         \else \advance \hour by -12 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute \ pm\fi}

\def\thesisdate{\ifcase\month\or
January\or February\or March\or April\or May\or June\or
July\or August\or September\or October\or November\or December\fi
\space\number\day, \number\year}

\newcount\dow
\newcount\leap
\newcount\x
\newcount\y

%leap = year + (month - 14)/12
\leap=\month \advance\leap by -14 \divide\leap by 12
  \advance\leap by \year

%dow = (13 * (month + 10 - (month + 10)/13*12) - 1)/5
\dow=\month \advance\dow by 10
  \y=\dow \divide\y by 13 \multiply\y by 12
  \advance\dow by -\y \multiply\dow by 13 \advance\dow by -1 \divide\dow by 5

%dow += day + 77 + 5 * (leap % 100)/4
\advance\dow by \day \advance\dow by 77
  \x=\leap \y=\x \divide\y by 100 \multiply\y by 100 \advance\x by -\y
  \multiply\x by 5 \divide\x by 4 \advance\dow by \x

%dow += leap / 400
\x=\leap \divide\x by 400 \advance\dow by \x

%dow -= leap / 100 * 2;
%dow = (dow % 7)
\x=\leap \divide\x by 100 \multiply\x by 2 \advance\dow by -\x
  \x=\dow \divide\x by 7 \multiply\x by 7 \advance\dow by -\x

\def\thesisdayofweek{\ifcase\dow
Sunday\or Monday\or Tuesday\or
Wednesday\or Thursday\or Friday\or Saturday\fi}

\def\timestamp{\thesistime, \thesisdayofweek, \thesisdate}

%%%
%%% Commands for spacing.  Some parts from spacing.sty by Stephen Page.
%%%

\ifx\undefined\selectfont
\def\@setsize#1#2#3#4{\@nomath#1
   \let\@currsize#1\baselineskip
   #2\baselineskip\baselinestretch\baselineskip
   \parskip\baselinestretch\parskip
   \setbox\strutbox\hbox{\vrule height.7\baselineskip
      depth.3\baselineskip width\z@}
   \normalbaselineskip\baselineskip#3#4}
\else
\def\@newbaseline{%
    \ifx\undefined\setnew@baselineskip
      \baselineskip\f@baselineskip\relax
    \else
      \setnew@baselineskip
    \fi
    \baselineskip\baselinestretch\baselineskip
    \setbox\strutbox\hbox{\vrule\@height.7\baselineskip
    \@depth.3\baselineskip \@width\z@}%
    \normalbaselineskip\baselineskip}
\fi

%%%
%%% Reset baselinestretch within footnotes and floats. Originally stolen
%%% from Stanford thesis style.
%%%

\newcommand{\tinyspacing}{%
    \def\@xfloat##1[##2]{\ifhmode \@bsphack\@floatpenalty -\@Mii\else
       \@floatpenalty-\@Miii\fi\def\@captype{##1}\ifinner
          \@parmoderr\@floatpenalty\z@
        \else\@next\@currbox\@freelist{\@tempcnta\csname ftype@##1\endcsname
           \multiply\@tempcnta\@xxxii\advance\@tempcnta\sixt@@n
           \@tfor \@tempa :=##2\do
                            {\if\@tempa h\advance\@tempcnta \@ne\fi
                             \if\@tempa t\advance\@tempcnta \tw@\fi
                             \if\@tempa b\advance\@tempcnta 4\relax\fi
                             \if\@tempa p\advance\@tempcnta 8\relax\fi
             }\global\count\@currbox\@tempcnta}\@fltovf\fi
        \global\setbox\@currbox\vbox\bgroup
        \def\baselinestretch{1}
        \ifx\undefined\selectfont
        \small\normalsize
        \else
        \@newbaseline
        \fi
        \boxmaxdepth\z@
        \hsize\columnwidth \@parboxrestore}

    \long\def\@footnotetext##1{\insert\footins{\def\baselinestretch{1}\footnotesize
        \interlinepenalty\interfootnotelinepenalty
        \splittopskip\footnotesep
        \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
        \hsize\columnwidth \@parboxrestore
       \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
        {\rule{\z@}{\footnotesep}\ignorespaces
          ##1\strut}}}}

% \def\@xfloat#1[#2]{
%     \def\baselinestretch{1}%
%     \@normalsize \normalsize
% }



%%%
%%% Stolen from MIT.
%%%

% \def\spacing#1{\par%
%  \begingroup
%  \def\baselinestretch{#1}
%  \ifx\undefined\selectfont
%  \ifx\@currsize\normalsize\@normalsize\else\@currsize\fi
%  \else
%  \@newbaseline
%  \fi}
% \def\endspacing{\par
%  \vskip \parskip
%  \vskip \baselineskip
%  \endgroup
%  \vskip -\parskip
%  \vskip -\baselineskip}

%%%
%%%  Make Chapter/Section/Subsection counters follow outline style
%%%

%\renewcommand{\thechapter}{\Romanara{chapter}}
%\renewcommand{\thesection}{\Alph{section}}
%\renewcommand{\thesubsection}{\arabic{subsection}}


\renewcommand{\theequation}{\arabic{equation}}
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}

%%%
%%% Make table of contents follow outline style
%%%

\renewcommand\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       #1\hfil \hbox to\@pnumwidth{\hss #2}}\par %\bfseries
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
    \endgroup
  \fi}

\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip \hspace{2em}
      #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\renewcommand\l@section      {\@dottedtocline{1}{4em}{2.3em}}
\renewcommand\l@subsection   {\@dottedtocline{2}{6em}{3.2em}}
\renewcommand\l@subsubsection{\@dottedtocline{3}{8em}{4.1em}}
\renewcommand\l@paragraph    {\@dottedtocline{4}{10em}{5em}}
\renewcommand\l@subparagraph {\@dottedtocline{5}{12em}{6em}}


%%%
%%%  Change the captions for Tables to meet the style.
%%%

\newlength\abovetabcaptionskip
\setlength\abovetabcaptionskip{2\p@}

\newlength\belowtabcaptionskip
\setlength\belowtabcaptionskip{10\p@}

\long\def\@maketabcaption#1#2{%
  \vskip\abovetabcaptionskip
  \begin{center} #1 \end{center}
  \sbox\@tempboxa{#2}%
  \ifdim \wd\@tempboxa >\hsize
    #2\par
  \else
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowtabcaptionskip}

\renewcommand{\table}
  {\let\@makecaption\@maketabcaption\@float{table}}

\endinput

%%
%% End of file `ulthesis.cls'.
%%
