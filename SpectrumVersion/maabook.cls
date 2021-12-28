%%
%% This is file `maabook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% maabook.dtx 
%% This is a generated file.
%% 
%% Copyright 2018 American Mathematical Society.
%% 
%% American Mathematical Society
%% Technical Support
%% Publications Technical Group
%% 201 Charles Street
%% Providence, RI 02904
%% USA
%% tel: (401) 455-4080
%%      (800) 321-4267 (USA and Canada only)
%% fax: (401) 331-3842
%% email: tech-support@ams.org
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is the American Mathematical
%% Society.
%% 
%% ========================================================================
%% 
\NeedsTeXFormat{LaTeX2e}[2016/03/31]
\ProvidesClass{maabook}[2019/09/03 v1.06]
\def\@tempa#1#2\@nil{\edef\@classname{#1}}
\expandafter\@tempa\@currnamestack{}{}{}\@nil
\ifx\@classname\@empty\edef\@classname{\@currname}\fi
\RequirePackage{ifxetex}
\RequirePackage{ifpdf}
\RequirePackage{amsgen}
\def\@addpunct#1{%
    \relax\ifhmode
        \ifnum\spacefactor>\@m \else#1\fi
    \fi
}
\def\set@front@cover{}
\IfFileExists{upref.sty}{%
    \RequirePackage{upref}%
}{%
    \ClassWarningNoLine{\@classname}{%
        I can't find the upref package.\MessageBreak
        Please consider installing it from CTAN:\MessageBreak
        http://ctan.org/pkg/upref}%
}
\IfFileExists{amscip.sty}{%
    \RequirePackage{amscip}%
}{}
\textwidth=30pc
\textheight=51pc
\DeclareOption{letterpaper}{%
    \paperwidth 8.5in
    \paperheight 11in
}
\DeclareOption{a4paper}{%
    \paperwidth  210mm
    \paperheight 297mm
}
\newdimen\maa@titletopskip
\maa@titletopskip54bp
\newdimen\maa@titleleftskip
\maa@titleleftskip 36bp
\newdimen\maa@logo@hack
\maa@logo@hack 54bp
\def\maa@seriesfontsize{\fontsize{14}{16}}
\DeclareOption{5.5x8.5}{%
    \paperwidth  5.5in
    \paperheight 8.5in
    \textwidth   25pc
    \textheight  42pc
    \maa@titletopskip 18bp
    \maa@titleleftskip 22bp
    \maa@logo@hack 9bp
}
\DeclareOption{6x9}{%
    \paperwidth  6in
    \paperheight 9in
    \textwidth   28pc
    \textheight  45pc
    \maa@titletopskip 18bp
    \maa@titleleftskip 22bp
    \maa@logo@hack 18bp
}
\DeclareOption{7x10}{%
    \paperwidth   7in
    \paperheight 10in
    \textwidth   30pc
    \textheight  51pc
}
\DeclareOption{draft}{%
    \overfullrule5\p@
    \ClassWarningNoLine{\@classname}{%
        When the draft option is used, the
        \protect\includegraphics\MessageBreak
        command will print blank placeholder boxes\MessageBreak
        for the graphics.\MessageBreak
        Consider using the `proofing' option instead}%
}

\newif\if@AMSproofingmode
\@AMSproofingmodefalse

\let\AMS@pagefooter\@empty

\DeclareOption{proofing}{%
    \overfullrule5\p@
    \@AMSproofingmodetrue
    \def\AMS@pagefooter{\hfill\emph{PROOF MODE}\hfill}%
}

\DeclareOption{final}{%
    \overfullrule\z@
    \@AMSproofingmodefalse
    \let\AMS@pagefooter\@empty
}
\newif\if@openright
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{cmr}{\chardef\AMS@MAA@fontset=\z@}
\DeclareOption{mathtimes}{\chardef\AMS@MAA@fontset=\@ne}
\DeclareOption{stix2}{\chardef\AMS@MAA@fontset=\tw@}
\DeclareOption{cambria}{\chardef\AMS@MAA@fontset=\thr@@}
\DeclareOption{brill}{\chardef\AMS@MAA@fontset=4 }
\def\AMS@MAA@fontset@name{%
    \ifcase\AMS@MAA@fontset
        Computer Modern%
    \or
        MathTime Pro%
    \or
        STIX Two%
    \or
        Cambria%
    \or
        Brill%
    \else
        Unknown%
    \fi
}
\chardef\@mainsize=0
\newcommand{\@ptsize}{0}
\renewcommand\normalsize{}
\DeclareOption{10pt}{%
    \chardef\@mainsize=10
    \def\@ptsize{0}%
}
\DeclareOption{11pt}{%
    \chardef\@mainsize=11
    \def\@ptsize{1}%
}
\ExecuteOptions{letterpaper,10pt,final,openright}

\ifxetex
    \ExecuteOptions{stix2}
\else
    \ExecuteOptions{cmr}
\fi
\ProcessOptions\relax
\if@AMSproofingmode
    \IfFileExists{shaderef.sty}{%
        \RequirePackage{shaderef}%
    }{}
    \AtEndDocument{%
        \ClassWarningNoLine{\@classname}{%
            This document was produced in proofing mode.\MessageBreak
            To turn off overfull line boxes and highlighted\MessageBreak
            cross references, remove the 'proofing'\MessageBreak
            from the document class options or add the 'final' option
        }%
    }%
\fi
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\def\nonbreakingspace{\unskip\nobreak\ \ignorespaces}
\def~{\protect\nonbreakingspace}
\def\@gobbleopt{\@ifnextchar[{\@gobbleopt@}{}}
\def\@gobbleopt@[#1]{}
\def\@gobble@opt{\@ifnextchar[{\@gobble@opt@}{\@gobble}}
\def\@gobble@opt@[#1]#2{}
\def\@macrotext{\expandafter\strip@prefix\meaning}
\def\evdef#1#2{%
    \edef#1{#2}%
    \edef#1{\@macrotext#1}%
}
\def\@namexdef#1{\expandafter\xdef\csname #1\endcsname}
\def\swap@meaning#1#2{%
    \let\@gtempa#1%
    \let#1#2%
    \let#2\@gtempa
}
\newcommand{\today}{%
    \relax\ifcase\month\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December\fi
    \space\number\day, \number\year
}
\def\disable@stepcounter{%
    \let\stepcounter\@gobble
    \let\refstepcounter\@gobble
}
\newif\if@ams@empty
\@ams@emptyfalse

\def\ams@measure#1{%
    \begingroup
        \let\[\(\let\]\)%
        \disable@stepcounter
        \setbox\@tempboxa\hbox{\ignorespaces#1\unskip}%
    \expandafter\endgroup
    \ifdim\wd\@tempboxa=\z@
        \@ams@emptytrue
    \else
        \@ams@emptyfalse
    \fi
}
\ClassInfo{\@classname}{%
    Loading the \AMS@MAA@fontset@name\space font set%
}
\ifxetex
    \ifnum\AMS@MAA@fontset>\@ne
        \RequirePackage
            [mathrm=sym,mathup=sym,mathit=sym,%
             mathsf=sym,mathbf=sym,mathtt=sym]%
            {unicode-math}[2015/09/24]
        \def\square{\mdlgwhtsquare}
        \def\blacksquare{\mdlgblksquare}
    \fi
    \ifcase\AMS@MAA@fontset
        %% 0: CMR
    \or %% 1 MathTimes2
        \RequirePackage{mtpro2}
    \or %% 2 STIX Two
        \ifdim\number\XeTeXversion\XeTeXrevision in<0.99998in
           \ClassWarning{\@classname}{%
               You are attempting to use STIX Two Math %
               wih XeTeX \the\XeTeXversion\XeTeXrevision\MessageBreak
               For best results, you need XeTeX 0.99998 or newer.%
           }%
        \fi
        \setmainfont{STIX Two Text}[%
            Script=Default,
            Ligatures=TeX,
            ItalicFeatures={StylisticSet=2},
            BoldItalicFeatures={StylisticSet=2}
        ]%
        \setmathfont{STIX Two Math}[
            CharacterVariant=3,
            SizeFeatures={
                {Size=8-},
                {Size=6-8,Font=STIX Two Math,Style=MathScript},
                {Size= -6,Font=STIX Two Math,Style=MathScriptScript}
            }]
        \def\notmodels{\nvDash}
        \@namedef{ver@stix.sty}{2018/04/02}%
    \or %% 3 Cambria
        \setmainfont{Cambria}[Ligatures=TeX]
        \setmathfont{Cambria Math}
    \or %% 4 Brill
        \setmainfont{Brill}[Ligatures=TeX]
        \setmathfont{STIX Two Math}
    \else
        \ClassError{\@classname}{%
            Unknown font set \the\AMS@MAA@fontset%
        }\@ehd
    \fi
\else
    \ifcase\AMS@MAA@fontset
        %% 0 CMR
    \or %% 1 MathTimes2
        \RequirePackage{mtpro2}
    \or %% 2 STIX Two
        \RequirePackage{stix2}
    \else
        \ClassError{\@classname}{%
            Use of the \AMS@MAA@fontset@name\space font set requires XeLaTeX%
        }\@ehd
    \fi
\fi
\ifnum\AMS@MAA@fontset>\@ne
    \def\@xipt{11}
    \def\@xiipt{12}
    \def\@xivpt{14}
    \def\@xviipt{17}
    \def\@xxpt{21}
    \def\@xxvpt{25}
\fi
\ifnum\AMS@MAA@fontset=\tw@
    \def\@typesizes{%
        \do{5}{6}%         \Tiny
        \do{6}{7}%         \tiny
        \do{7}{8}%         \SMALL (\scriptsize)
        \do{8}{10}%        \Small (\footnotesize)
        \do{9}{11}%        \small
        \do{10}{12.5}%     \normalsize
        \do{\@xipt}{13.5}% \large
        \do{\@xiipt}{15}%  \Large
        \do{\@xivpt}{17}%  \LARGE
        \do{\@xviipt}{20}% \huge
        \do{\@xxpt}{24}%   \Huge
    }%
\else
    \def\@typesizes{%
        \do{5}{6}%         \Tiny
        \do{6}{7}%         \tiny
        \do{7}{8}%         \SMALL (\scriptsize)
        \do{8}{10}%        \Small (\footnotesize)
        \do{9}{11}%        \small
        \do{10}{12}%       \normalsize
        \do{\@xipt}{13}%   \large
        \do{\@xiipt}{14}%  \Large
        \do{\@xivpt}{17}%  \LARGE
        \do{\@xviipt}{20}% \huge
        \do{\@xxpt}{24}%   \Huge
    }%
\fi
\ifnum\@mainsize = 10
    \else\ifnum\@mainsize = 11
        \ifnum\AMS@MAA@fontset=\tw@
            \def\@typesizes{%
                \do{6}{7}%          \Tiny
                \do{7}{8}%          \tiny
                \do{8}{10}%         \SMALL (\scriptsize)
                \do{9}{11}%         \Small (\footnotesize)
                \do{10}{12}%        \small
                \do{\@xipt}{13.5}%  \normalsize
                \do{\@xiipt}{14.5}% \large
                \do{\@xivpt}{17}%   \Large
                \do{\@xviipt}{20}%  \LARGE
                \do{\@xxpt}{24}%    \huge
                \do{\@xxvpt}{30}%   \Huge
            }%
        \else
            \def\@typesizes{%
                \do{6}{7}%          \Tiny
                \do{7}{8}%          \tiny
                \do{8}{10}%         \SMALL (\scriptsize)
                \do{9}{11}%         \Small (\footnotesize)
                \do{10}{12}%        \small
                \do{\@xipt}{13}%    \normalsize
                \do{\@xiipt}{14}%   \large
                \do{\@xivpt}{17}%   \Large
                \do{\@xviipt}{20}%  \LARGE
                \do{\@xxpt}{24}%    \huge
                \do{\@xxvpt}{30}%   \Huge
            }%
        \fi
    \else
        \ClassWarning{\@classname}{%
            Invalid font size `\number\@mainsize'.
            Using default size 10.
        }
    \fi
\fi

\def\do{\noexpand\or}
\xdef\@typesizes{\@typesizes}
\def\@adjustvertspacing{%
    \bigskipamount.7\baselineskip plus.7\baselineskip
    \medskipamount\bigskipamount
    \divide\medskipamount\tw@
    \smallskipamount\medskipamount
    \divide\smallskipamount\tw@
    \abovedisplayskip\medskipamount
    \belowdisplayskip \abovedisplayskip
    \abovedisplayshortskip\abovedisplayskip
    \advance\abovedisplayshortskip-1\abovedisplayskip
    \belowdisplayshortskip\abovedisplayshortskip
    \advance\belowdisplayshortskip 1\smallskipamount
    \jot\baselineskip
    \divide\jot 4
}
\def\@xsetfontsize#1#2{%
    \chardef\@currsizeindex#2\relax
    \edef\@tempa{%
        \@nx\@setfontsize\@nx#1%
            \@xp\ifcase\@xp\@currsizeindex\@typesizes
            \else{99}{99}\fi
    }%
    \@tempa
}
\chardef\@currsizeindex=6
\newcommand{\larger}[1][1]{%
    \count@\@currsizeindex
    \advance\count@#1\relax
    \ifnum\count@<\z@
        \count@\z@
    \else
        \ifnum\count@>12
            \count@12
        \fi
    \fi
    \ifcase\count@
        \Tiny\or\Tiny\or\tiny\or\SMALL\or\Small\or\small
        \or\normalsize
        \or\large\or\Large\or\LARGE\or\huge\or\Huge\else\Huge
  \fi
}
\newcommand{\smaller}[1][1]{\larger[-#1]}
\DeclareRobustCommand{\Tiny}{\@xsetfontsize\Tiny 1}
\DeclareRobustCommand{\tiny}{\@xsetfontsize\tiny 2}
\DeclareRobustCommand{\SMALL}{\@xsetfontsize\SMALL 3}
\DeclareRobustCommand{\Small}{%
    \@xsetfontsize\Small 4%
    \@adjustvertspacing
    \def\@listi{%
        \leftmargin\leftmargini
        \labelwidth\leftmargini
        \advance\labelwidth-\labelsep
        \parsep\z@skip
        \topsep\smallskipamount
        \itemsep\z@skip
        \listparindent\z@
    }%
}
\DeclareRobustCommand{\small}{\@xsetfontsize\small 5\@adjustvertspacing}
\renewcommand\normalsize{%
    \@xsetfontsize\normalsize 6%
    \@adjustvertspacing
    \let\@listi\@listI
}
\normalsize
\def\footnotesize{\Small}
\def\scriptsize{\SMALL}
\DeclareRobustCommand{\large}{\@xsetfontsize\large 7\@adjustvertspacing}
\DeclareRobustCommand{\Large}{\@xsetfontsize\Large 8\@adjustvertspacing}
\DeclareRobustCommand{\LARGE}{\@xsetfontsize\LARGE 9}
\DeclareRobustCommand{\huge}{\@xsetfontsize\huge{10}}
\DeclareRobustCommand{\Huge}{\@xsetfontsize\Huge{11}}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\def\cleardoublepage{%
    \clearpage
    \ifodd\c@page \else
        \thispagestyle{empty}%
        \null
        \newpage
    \fi
}
\def\bb@space{%
    \ifdim\lastskip>\z@
        \vskip-\lastskip
    \fi
    \begingroup
        \@ifstar{\baselineskip\normalbaselineskip\bb@space@}\bb@space@
}

\def\bb@space@{%
        \afterassignment\bb@space@@
        \skip@=
}

\def\bb@space@@{%
        \advance\skip@-\baselineskip
        \vskip\skip@
    \endgroup
}
\hfuzz=1pt
\vfuzz=\hfuzz
\def\sloppy{\tolerance9999 \emergencystretch 3em\relax}
\RequirePackage{xspace}
\DeclareRobustCommand{\forcelinebreak}{%
    \@ifstar{\unskip\\\ignorespaces}{\unskip\linebreak}%
}
\DeclareRobustCommand{%
    \forcehyphenbreak}{\@ifstar{-\hfill\\\ignorespaces}{-\linebreak}%
}
\DeclareRobustCommand{\toclinebreak}{\@ifstar{\unskip\xspace}{\unskip\xspace}}
\DeclareRobustCommand{\tochyphenbreak}{\@ifstar{\ignorespaces}{}}
\def\fullwidthdisplay{\displayindent\z@ \displaywidth\columnwidth}
\edef\@tempa{\noexpand\fullwidthdisplay\the\everydisplay}
\everydisplay\expandafter{\@tempa}
\widowpenalty=10000
\clubpenalty=10000
\brokenpenalty=10000
\lineskip=1pt
\lineskiplimit=1pt
\normallineskip=1pt
\normallineskiplimit=1pt
\let\baselinestretch=\@empty
\headheight=8pt
\headsep=14pt
\footskip=18pt
\topskip=10pt
\columnsep=10pt
\columnseprule=0pt
\marginparwidth=90pt
\marginparsep=11pt
\marginparpush=5pt
\AtBeginDocument{\settoheight{\footnotesep}{\footnotesize M$^1$}}
\skip\footins=7pt plus11pt
\skip\@mpfootins=\skip\footins
\fboxsep=3pt
\fboxrule=.4pt
\arrayrulewidth=.4pt
\doublerulesep=2pt
\labelsep\z@
\arraycolsep=5pt
\tabcolsep=5pt
\tabbingsep=5pt
\floatsep=15pt plus 12pt    \dblfloatsep=15pt plus 12pt
\textfloatsep=\floatsep     \dbltextfloatsep=15pt plus 12pt
\intextsep=\floatsep
\@fptop=0pt plus1fil     \@dblfptop=0pt plus1fil
\@fpbot=0pt plus1fil     \@dblfpbot=0pt plus1fil
\@fpsep=8pt plus2fil     \@dblfpsep=8pt plus2fil\relax
\parskip\z@
\newdimen\normalparindent
\normalparindent=18pt
\parindent=\normalparindent
\partopsep\z@
\parsep\z@
\itemsep\z@
\@lowpenalty=51
\@medpenalty=151
\@highpenalty=301

\@beginparpenalty=-\@lowpenalty
\@endparpenalty=-\@lowpenalty
\@itempenalty=-\@lowpenalty
\def\calclayout{%
    \advance\textheight -\headheight
    \advance\textheight -\headsep
    \oddsidemargin\paperwidth
    \advance\oddsidemargin -\textwidth
    \divide\oddsidemargin\tw@
    \ifdim\oddsidemargin<.5truein \oddsidemargin.5truein \fi
    \advance\oddsidemargin -1truein
    \evensidemargin\oddsidemargin
    \topmargin\paperheight
    \advance\topmargin -\textheight
    \advance\topmargin -\headheight
    \advance\topmargin -\headsep
    \divide\topmargin\tw@
    \ifdim\topmargin<.5truein \topmargin.5truein \fi
    \advance\topmargin -1truein\relax
    \ifx\pdfpagewidth\undefined
    \else
        \pdfpagewidth\paperwidth
        \pdfpageheight\paperheight
    \fi
}
\def\disable@footnotes{%
    \let\footnote\@gobble@opt
    \let\footnotemark\@gobbleopt
    \let\footnotetext\@gobble@opt
}
\def\markleft#1{%
    \begingroup
        \let\label\relax
        \let\index\relax
        \let\glossary\relax
        \expandafter\@markleft\@themark{#1}%
        \@temptokena \expandafter{\@themark}%
        \mark{\the\@temptokena}%
    \endgroup
    \if@nobreak\ifvmode\nobreak\fi\fi
}

\def\@markleft#1#2#3{%
    \@temptokena{#2}%
    \unrestored@protected@xdef\@themark{{#3}{\the\@temptokena}}%
}
\def\ams@heading@font{\normalfont\sffamily}
\def\ps@empty{%
    \let\@mkboth\@gobbletwo
    \let\@oddhead\@empty
    \let\@evenhead\@empty
    \let\@oddfoot\AMS@pagefooter
    \let\@evenfoot\@oddfoot
    \global\topskip\normaltopskip
}
\def\ps@plain{%
    \ps@empty
    \def\@oddfoot {\ams@heading@font\small \hfil\thepage}%
    \def\@evenfoot{\ams@heading@font\small \thepage\hfil}%
}
\def\ps@headings{%
    \ps@empty
    \def\@evenhead{%
        \disable@footnotes
        \let\forcelinebreak\toclinebreak
        \let\forcehyphenbreak\tochyphenbreak
        \ams@heading@font
        \thepage \hfil \leftmark
    }%
    \def\@oddhead{%
        \disable@footnotes
        \let\forcelinebreak\toclinebreak
        \let\forcehyphenbreak\tochyphenbreak
        \ams@heading@font
        \rightmark \hfil \thepage
    }%
    \let\@mkboth\markboth
    \def\partmark{\@secmark\markboth\partrunhead\partname}%
    \def\chaptermark{\@secmark\markboth\chapterrunhead\chaptername}%
    \def\sectionmark{\@secmark\markright\sectionrunhead\sectionname}%
}
\def\partrunhead#1#2#3{%
    \@ifnotempty{#2}{\ignorespaces#1 #2.\unskip\@ifnotempty{#3}{\enskip}}%
    \def\@tempa{#3}%
    \ifx\@empty\@tempa\else
        \begingroup
            \def\\{ \ignorespaces}% defend against questionable usage
            \@tempa
        \endgroup
    \fi
}
\let\chapterrunhead\partrunhead
\let\sectionrunhead\partrunhead
\let\sectionname\@empty
\let\subsectionname\@empty
\let\subsubsectionname\@empty
\let\paragraphname\@empty
\let\subparagraphname\@empty
\def\leftmark{\expandafter\@firstoftwo\topmark{}{}}
\def\rightmark{\expandafter\@secondoftwo\botmark{}{}}
\long\def\@nilgobble#1\@nil{}
\def\@secmark#1#2#3#4{%
    \begingroup
        \let\protect\@unexpandable@protect
        \edef\@tempa{\endgroup \toks@{\protect#2{#3}{\@secnumber}}}%
        \@tempa
        \toks@\@xp{\the\toks@{#4}}%
        \afterassignment\@nilgobble\@temptokena\@themark{}\@nil
        \edef\@tempa{%
            \@nx\@mkboth{%
                \ifx\markright#1%
                    \the\@temptokena
                \else
                    \the\toks@
                \fi
            }{\the\toks@}%
        }%
        \@tempa
}
\let\@secnumber\@empty
\def\markboth#1#2{%
    \begingroup
        \@temptokena{{#1}{#2}}%
        \xdef\@themark{\the\@temptokena}%
        \mark{\the\@temptokena}%
    \endgroup
    \if@nobreak\ifvmode\nobreak\fi\fi
}
\def\ps@myheadings{%
    \ps@headings
    \let\@mkboth\@gobbletwo
}
\newskip\normaltopskip
\normaltopskip=10pt
\let\sectionmark\@gobble
\let\subsectionmark\@gobble
\let\subsubsectionmark\@gobble
\let\paragraphmark\@gobble
\newif\if@frontmatter
\newif\if@mainmatter
\newif\if@backmatter
\newif\ifappendix
\def\frontmatter{%
    \if@frontmatter\else
        \global\@frontmattertrue
        \global\@mainmatterfalse
        \global\@backmatterfalse
        \cleardoublepage
        \pagenumbering{roman}%
    \fi
}
\def\mainmatter{%
    \if@mainmatter\else
        \global\@frontmatterfalse
        \global\@mainmattertrue
        \global\@backmatterfalse
        \cleardoublepage
        \pagenumbering{arabic}%
        \begingroup
            \def\do##1{\global\let##1\@notfmerr}%
            \@frontmattercmds
            \global\let\@frontmattercmds\@empty
        \endgroup
    \fi
}
\def\backmatter{%
    \if@backmatter\else
        \global\@frontmatterfalse
        \global\@mainmatterfalse
        \global\@backmattertrue
        \if@openright\cleardoublepage\else\clearpage\fi
        \let\chaptername\relax
    \fi
}
\let\@frontmattercmds\@empty
\def\@onlyfrontmatter#1{%
    \expandafter\gdef\expandafter\@frontmattercmds\expandafter{%
        \@frontmattercmds\do#1%
    }%
}

\@onlyfrontmatter\@onlyfrontmatter
\def\fm@def#1{%
    \@onlyfrontmatter#1%
    \def#1%
}
\gdef\@notfmerr{%
    \@latex@error{Can be used only before \string\maketitle}\@eha
}
\fm@def\seriesinfo#1#2#3{%
    \def\@publkey{#1}%
    \def\@volumeid{#2}%
    \def\@volumeno{#3}%
}
\seriesinfo{}{}{}
\fm@def\copyrightinfo#1#2{%
    \def\copyrightyear{#1}%
    \@ifnotempty{#2}{\def\copyrightholder{#2}}%
}
\let\copyrightyear\@empty
\let\copyrightholder\@empty
\let\@title\@empty
\let\@subtitle\@empty
\let\@shorttitle\@empty

\@onlyfrontmatter\@title
\@onlyfrontmatter\@subtitle
\@onlyfrontmatter\@shorttitle
\renewcommand*{\title}[2][]{%
    \gdef\@shorttitle{#1}%
    \gdef\@title{#2}%
    \ifx\@shorttitle\@empty
        \global\let\@shorttitle\@title
    \fi
}

\@onlyfrontmatter\title
\fm@def\subtitle{\def\@subtitle}
\let\@authorlist\@empty
\let\@authorname\relax
\let\@authoraffil\relax
\fm@def\author#1{%
    \g@addto@macro\@authorlist{\@authorname{#1}}%
}
\fm@def\affiliation#1{}
\let\@date\@empty
\fm@def\dedicatory{\def\@dedicatory}
\let\@dedicatory\@empty
\fm@def\keywords{\def\@keywords}
\let\@keywords=\@empty
\newcommand\DOI{\def\@DOI}
\let\@DOI\@empty
\newcommand{\abstractname}{Abstract}
\newcommand{\keywordsname}{Key words and phrases}
\newcommand{\subjclassname}{%
  \textup{1991} Mathematics Subject Classification}
\@xp\let\csname subjclassname@1991\endcsname \subjclassname
\@namedef{subjclassname@2000}{%
  \textup{2000} Mathematics Subject Classification}
\@namedef{subjclassname@2010}{%
  \textup{2010} Mathematics Subject Classification}
\newcommand*\subjclass[2][1991]{%
    \def\@subjclass{#2}%
    \@ifundefined{subjclassname@#1}{%
        \ClassWarning{\@classname}{Unknown edition (#1) of Mathematics
        Subject Classification; using '1991'.}%
    }{%
        \@xp\let\@xp\subjclassname\csname subjclassname@#1\endcsname
    }%
}
\let\@subjclass\@empty
\@onlyfrontmatter\subjclass
\newenvironment{titlepage}{%
    \frontmatter
    \cleardoublepage
    \thispagestyle{empty}%
    \raggedright
    \@topnum\z@ % this prevents figures from falling at the top of page 1
    \headsep\z@
    \headheight\z@
    \footskip\z@
    \topskip\maa@titletopskip
    \leftskip\maa@titleleftskip
}{%
    \clearpage
}
\newcommand{\makehalftitle}{%
    \ifxetex
        \ifx\@publkey\@empty\else
            \ifx\@volumeid\@empty\else
                \set@front@cover
                \begingroup
                    \evdef\@tempa{\@publkey-\@volumeid-htitle}%
                    \evdef\@tempb{\jobname}%
                    \ifx\@tempa\@tempb\else
                        \IfFileExists{\@tempa.pdf}{%
                            \XeTeXpdffile \@tempa.pdf\relax
                            \let\makehalftitle@default\@empty
                        }{}
                    \fi
                \endgroup
            \fi
        \fi
    \fi
    \makehalftitle@default
}
\newcommand{\makehalftitle@default}{%
    \begin{titlepage}%
    \advance\topskip 126bp
    \normalfont
    \sffamily
    \begingroup
        \bfseries
        \ifx\@title\@empty\else
            \begingroup
                \fontsize{26}{31.2}\selectfont
                \bb@space 1.3125in
                \@title\par
                \ifx\@subtitle\@empty\else
                    \fontsize{18}{22}\selectfont
                    \bb@space .5in
                    \@subtitle\par
                \fi
            \endgroup
        \fi
    \endgroup
    \vfill
    \end{titlepage}%
}
\def\@maketitle@hook{\global\let\@maketitle@hook\@empty}
\newcommand{\maketitle}{%
    \ifxetex
        \ifx\@publkey\@empty\else
            \ifx\@volumeid\@empty\else
                \set@front@cover
                \begingroup
                    \evdef\@tempa{\@publkey-\@volumeid-title}%
                    \evdef\@tempb{\jobname}%
                    \ifx\@tempa\@tempb\else
                        \IfFileExists{\@tempa.pdf}{%
                            \XeTeXpdffile \@tempa.pdf\relax
                            \let\maketitle@default\@empty
                        }{}
                    \fi
                \endgroup
            \fi
        \fi
    \fi
    \maketitle@default
}
\def\set@authorname#1{%
    #1\par
}
\def\maketitle@default{%
    \begin{titlepage}%
    \def\title@bookmark{Title page}%
    \@maketitle@hook
    \normalfont
    \sffamily
    \begingroup
        \begingroup
            \maa@seriesfontsize
            \begingroup
                \fontseries{bc}\selectfont
                AMS/MAA%
            \endgroup
            \quad
            \vrule width 1pt height 12pt
            \quad
            \begingroup
                \fontseries{c}\selectfont
                \uppercase\expandafter{\titlepage@series}\par
            \endgroup
            \ifx\@volumeno\@empty\else
                \fontseries{c}\selectfont
                \bb@space 0.4375in
                VOL\enskip{\fontseries{bc}\selectfont\@volumeno}\par
            \fi
        \endgroup
        \bfseries
        \ifx\@title\@empty\else
            \begingroup
                \fontsize{26}{31.2}\selectfont
                \bb@space 1.3125in
                \@title\par
                \ifx\@subtitle\@empty\else
                    \fontsize{18}{22}\selectfont
                    \bb@space 0.5in
                    \@subtitle\par
                \fi
            \endgroup
        \fi
    \endgroup
    \begingroup
        \bfseries
        \fontsize{14}{20}\selectfont
        \bb@space 1in
        \let\@authorname\set@authorname
        \@authorlist
    \endgroup
    \vfill
    \maa@ams@logo
    \end{titlepage}%
    \ams@include@cip
}
\def\maa@ams@logo{}
\newcommand{\ams@include@cip}{%
    \ifx\@publkey\@empty\else
        \ifx\@volumeid\@empty\else
            \InputIfFileExists{\@publkey-\@volumeid-cip.tex}{%
                \clearpage
            }{}%
        \fi
    \fi
}
\newcommand{\makededication}{%
    \ifx\@empty\@dedicatory\else
        \clearpage
        \null
        \vfil
        \thispagestyle{empty}%
        \begin{center}
            \footnotesize\itshape\@dedicatory\@@par
        \end{center}
        \vfil
    \fi
    \global\let\dedicatory\@gobble
    \global\let\@dedicatory\@empty
}
\newcommand{\@pnumwidth}{0pt}%{1.6em}
\setcounter{tocdepth}{1}
\def\@starttoc#1#2{%
    \begingroup
        \let\secdef\@gobbletwo
        \chapter
        \@afterindenttrue
        \let\@secnumber\@empty % for \@tocwrite and \chaptermark
        \ifx\contentsname#2%
            \@contentslist@bookmark
        \else
            \csname phantomsection\endcsname
            \@tocwrite{chapter}{#2}%
        \fi
        \typeout{#2}%
        \@xp\chaptermark\@xp{#2}%
        \@makeschapterhead{#2}%
        \@afterheading
        \parskip\z@skip
        \makeatletter
        \setbox\z@\vbox{%
            \let\@tocline\@tocline@measure
            \let\tocsection\tocsection@measure
            \@input{\jobname.#1}%
        }
        \swap@meaning\toclinebreak\forcelinebreak
        \swap@meaning\tochyphenbreak\forcehyphenbreak
        \@input{\jobname.#1}%
        \if@filesw
            \@xp\newwrite\csname tf@#1\endcsname
            \immediate\@xp\openout\csname tf@#1\endcsname \jobname.#1\relax
        \fi
        \global\@nobreakfalse
    \endgroup
    \clearpage
}
\let\@contentslist@bookmark\@empty
\def\contentsname{Contents}
\def\tableofcontents{\@starttoc{toc}\contentsname}
\def\listfigurename{List of Figures}
\def\listoffigures{\@starttoc{lof}\listfigurename}
\def\listtablename{List of Tables}
\def\listoftables{\@starttoc{lot}\listtablename}
\def\@toclevel{0}
\def\@tocline#1#2#3#4#5#6#7{%
    \relax\ifnum #1>\c@tocdepth\else
        \def\@toclevel{#1}%
        \par
        \addpenalty\@secpenalty
        \addvspace{#2}%
        \begingroup
            \hyphenpenalty\@M
            \@tempdima\csname wd@tocindent@\@toclevel\endcsname\relax
            \@tempdimb\z@
            \@tempcnta\@toclevel\relax
            \advance\@tempcnta\m@ne
            \@whilenum\@tempcnta>-2\do{%
                \advance\@tempdimb\@nameuse{wd@tocindent@\the\@tempcnta}%
                \advance\@tempcnta\m@ne
            }%
            \disable@footnotes
            \leftskip\@tempdima
            \advance\leftskip\@tempdimb
            \parindent-\@tempdima
            \rightskip\@pnumwidth plus4em
            \parfillskip-\@pnumwidth
            {#5#6}%
            \nobreak
            \hfil
            \hbox to\@pnumwidth{\@tocpagenum{#7}}\par
            \nobreak
        \endgroup
    \fi
}
\def\@tocline@measure#1#2#3#4#5#6#7{%
    \relax\ifnum #1>\c@tocdepth \else
        \begingroup
            \def\@toclevel{#1}%
            {#5#6}%
            \setbox\z@\hbox{\@tocpagenum{#7}}%
            \ifdim\wd\z@>\@pnumwidth
                \xdef\@pnumwidth{\the\wd\z@}%
            \fi
        \endgroup
    \fi
}
\def\@tocpagenum#1{\hss{\mdseries #1}}
\def\l@part         {\@tocline{-1}{12pt plus2pt}{0pt}{}{\bfseries\sffamily}}
\def\l@chapter      {\@tocline{0}{8pt plus1pt}{0pt}{}{\bfseries\sffamily}}
\def\l@section      {\@tocline{1}{0pt}{1pc}{}{}}
\def\l@subsection   {\@tocline{2}{0pt}{1pc}{5pc}{}}
\def\l@subsubsection{\@tocline{3}{0pt}{1pc}{7pc}{}}
\def\l@paragraph    {\@tocline{4}{0pt}{1pc}{7pc}{}}
\def\l@subparagraph {\@tocline{5}{0pt}{1pc}{7pc}{}}
\def\l@figure{\@tocline{0}{3pt plus2pt}{0pt}{1.5pc}{}}
\let\l@table\l@figure
\def\tocsection#1#2#3{%
    \leavevmode
    \@tempcnta\@toclevel\relax
    \@whilenum\@tempcnta>-2\do{%
        \@ifundefined{wd@tocindent@\the\@tempcnta}{%
            \@namexdef{wd@tocindent@\the\@tempcnta}{0pt}%
        }{}%
        \advance\@tempcnta\m@ne
    }%
    \@ams@emptyfalse
    \ifnum\@toclevel<\@ne
        \ams@measure{#2}%
    \else
        \ifdim\@nameuse{wd@tocindent@\@toclevel}=\z@
            \@namexdef{wd@tocindent@\@toclevel}{2em}%
        \fi
    \fi
    \if@ams@empty\else
        \ifnum\@toclevel<\z@
            \ignorespaces#1 \ignorespaces#2\unskip\enskip
        \else
            \@tempdima\@nameuse{wd@tocindent@\@toclevel}
            \hbox to \@tempdima{%
                \ignorespaces#2\unskip\hfil
            }%
        \fi
    \fi
    #3%
}
\def\tocsection@measure#1#2#3{%
    \begingroup
        \@tempcnta\@toclevel\relax
        \@whilenum\@tempcnta>-2\do{%
            \@ifundefined{wd@tocindent@\the\@tempcnta}{%
                \@namexdef{wd@tocindent@\the\@tempcnta}{0pt}%
            }{}%
            \advance\@tempcnta\m@ne
        }%
        \ams@measure{#2}%
        \if@ams@empty\else
            \setbox\@tempboxa\hbox{\ignorespaces#2\unskip\enskip}%
            \@tempdima\@nameuse{wd@tocindent@\@toclevel}\relax
            \ifdim\wd\@tempboxa > \@tempdima
                \@namexdef{wd@tocindent@\@toclevel}{\the\wd\@tempboxa}%
            \fi
        \fi
    \endgroup
}
\def\tocpart{\tocsection}
\def\tocchapter{\tocsection}
\def\tocsubsection{\tocsection}
\def\tocsubsubsection{\tocsection}
\def\tocparagraph{\tocsection}
\def\tocsubparagraph{\tocsection}
\def\tocappendix{\tocsection}
\def\@tocwrite#1{\@xp\@tocwriteb\csname toc#1\endcsname{#1}}
\def\@tocwriteb#1#2#3{%
    \addcontentsline{toc}{#2}{%
        \protect#1{\csname#2name\endcsname}{\@secnumber}{#3}%
    }%
}
\def\trivlist{%
    \parsep\parskip
    \@nmbrlistfalse
    \@trivlist
    \labelwidth\z@
    \leftmargin\z@
    \itemindent\z@
    \let\@itemlabel\@empty
    \def\makelabel##1{\upshape##1\enskip}%
}

\def\enumerate{%
    \ifnum\@enumdepth>\thr@@
        \@toodeep
    \else
        \advance\@enumdepth\@ne
        \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
        \expandafter\list\csname label\@enumctr\endcsname{%
            \usecounter\@enumctr
            \def\makelabel##1{\upshape##1\enskip\hss}%
        }%
    \fi
}

\def\itemize{%
    \ifnum\@itemdepth>\thr@@
        \@toodeep
    \else
        \advance\@itemdepth\@ne
        \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
        \expandafter\list\csname\@itemitem\endcsname{%
            \def\makelabel##1{\upshape##1\enskip\hss}%
        }%
    \fi
}
\newcommand{\descriptionlabel}[1]{%
    \begingroup
        \let\enit@align\@firstofone
        \hspace\labelsep \upshape\bfseries #1:\enskip
    \endgroup
}

\def\description{%
    \list{}{%
        \leftmargin\normalparindent
        \itemsep\medskipamount
        \itemindent-\leftmargin
        \labelwidth\z@
        \let\makelabel\descriptionlabel
    }%
}

\let\enddescription=\endlist % for efficiency
\def\initMAAenummargins#1#2#3#4{%
    \begingroup
        \def\theenumi{#1}%
        \def\theenumii{#2}%
        \def\theenumiii{#3}%
        \def\theenumiv{#4}%
        \globaldefs=1
        \if###1##\else
            \settowidth\leftmargini{\upshape\labelenumi\enskip}%
        \fi
        \if###2##\else
            \settowidth\leftmarginii{\upshape\labelenumii\enskip}%
        \fi
        \if###3##\else
            \settowidth\leftmarginiii{\upshape\labelenumiii\enskip}%
        \fi
        \if###4##\else
            \settowidth\leftmarginiv{\upshape\labelenumiv\enskip}%
        \fi
    \endgroup
    \@listi
}
\setlength\leftmarginv {1em}
\setlength\leftmarginvi{1em}
\def\@listI{%
    \leftmargin\leftmargini
    \labelwidth\leftmargini
    \advance\labelwidth-\labelsep
    \parsep 3\p@ \@plus2\p@ \@minus\p@
    \topsep 6\p@ \@plus2\p@ \@minus4\p@
    \itemsep4\p@ \@plus2\p@ \@minus\p@
    \listparindent\z@
}
\let\@listi\@listI
\def\@listii{%
    \leftmargin\leftmarginii
    \labelwidth\leftmarginii
    \advance\labelwidth-\labelsep
    \topsep 3\p@ \@plus2\p@ \@minus\p@
    \parsep 1\p@ \@plus\p@  \@minus\p@
    \itemsep\parsep
}
\def\@listiii{%
    \leftmargin\leftmarginiii
    \labelwidth\leftmarginiii
    \advance\labelwidth-\labelsep
    \topsep    1\p@ \@plus\p@\@minus\p@
    \parsep    \z@
    \itemsep\topsep
}
\def\@listiv{%
    \leftmargin\leftmarginiv
    \labelwidth\leftmarginiv
    \advance\labelwidth-\labelsep
}
\def\@listv{%
    \leftmargin\leftmarginv
    \labelwidth\leftmarginv
    \advance\labelwidth-\labelsep
}
\def\@listvi{%
    \leftmargin\leftmarginvi
    \labelwidth\leftmarginvi
    \advance\labelwidth-\labelsep
}
\def\labelenumi{(\theenumi)}
\def\theenumi{\@arabic\c@enumi}
\def\labelenumii{(\theenumii)}
\def\theenumii{\@alph\c@enumii}
\def\p@enumii{\theenumi}
\def\labelenumiii{(\theenumiii)}
\def\theenumiii{\@roman\c@enumiii}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{(\theenumiv)}
\def\theenumiv{\@Alph\c@enumiv}
\def\p@enumiv{\p@enumiii\theenumiii}
\initMAAenummargins{9}{m}{viii}{D}
\def\labelitemi{$\m@th\bullet$}
\def\labelitemii{\bfseries --}% \upshape already done by \itemize
\def\labelitemiii{$\m@th\ast$}
\def\labelitemiv{$\m@th\cdot$}
\newenvironment{verse}{%
    \let\\\@centercr
    \list{}{%
        \itemsep\z@
        \itemindent -1.5em
        \listparindent\itemindent
        \rightmargin\leftmargin
        \advance\leftmargin 1.5em
    }%
    \item[]%
}{%
  \endlist
}
\newenvironment{quotation}{%
    \list{}{%
        \leftmargin3pc
        \listparindent\normalparindent
        \itemindent\z@
        \rightmargin\leftmargin
        \parsep\z@ \@plus\p@
    }%
    \item[]%
}{%
  \endlist
}

\newenvironment{quote}{%
    \list{}{%
        \rightmargin\leftmargin
    }%
    \item[]%
}{%
  \endlist
}
\def\partname{Part}
\newcounter{part}
\renewcommand\thepart{\arabic{part}}
\def\part{%
    \cleardoublepage
    \thispagestyle{empty}%
    \null
    \vfil
    \markboth{}{}%
    \secdef\@part\@spart
}
\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2
        \refstepcounter{part}%
        \addcontentsline{toc}{part}{%
            \protect\tocpart{\partname}{\thepart}{#1}%
        }%
    \else
        \addcontentsline{toc}{part}{\protect\tocpart{}{}{#1}}%
    \fi
    \begingroup
        \centering
        \sffamily
        \bfseries
        \ifnum \c@secnumdepth >-2
            \begingroup
                \fontsize{\@xviipt}{22}\selectfont
                \partname\ \thepart
            \endgroup
            \vskip 20\p@
        \fi
        \fontsize{\@xxpt}{25}\selectfont
        #1%
        \vfil
        \vfil
    \endgroup
}
\def\@spart#1{%
    \addcontentsline{toc}{part}{\protect\tocpart{}{}{#1}}%
    \begingroup
        \centering
        \sffamily
        \bfseries
        \fontsize{\@xxpt}{25}\selectfont
        #1%
        \vfil
        \vfil
    \endgroup
}
\newcommand\chaptername{Chapter}
\newcounter{chapter}
\renewcommand\thechapter{\arabic{chapter}}
\@addtoreset{equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\def\chapter{%
    \if@openright
        \cleardoublepage
    \else
        \clearpage
    \fi
    \thispagestyle{plain}%
    \global\@topnum\z@
    \@afterindentfalse
    \secdef\@chapter\@schapter
}
\def\@chapter[#1]#2{%
    \refstepcounter{chapter}%
    \ifnum\c@secnumdepth<\z@
        \let\@secnumber\@empty
    \else
        \let\@secnumber\thechapter
    \fi
    \typeout{\chaptername\space\@secnumber}%
    \def\@toclevel{0}%
    \ifx\chaptername\appendixname
        \@tocwriteb\tocappendix{chapter}{#2}%
    \else
        \@tocwriteb\tocchapter{chapter}{#2}%
    \fi
    \chaptermark{#1}%
    \addtocontents{lof}{\protect\addvspace{10\p@}}%
    \addtocontents{lot}{\protect\addvspace{10\p@}}%
    \@makechapterhead{#2}%
    \@afterheading
}
\def\@schapter#1{%
    \typeout{#1}%
    \let\@secnumber\@empty
    \def\@toclevel{0}%
    \ifx\chaptername\appendixname
        \@tocwriteb\tocappendix{chapter}{#1}%
    \else
        \@tocwriteb\tocchapter{chapter}{#1}%
    \fi
    \chaptermark{#1}%
    \addtocontents{lof}{\protect\addvspace{10\p@}}%
    \addtocontents{lot}{\protect\addvspace{10\p@}}%
    \@makeschapterhead{#1}%
    \@afterheading
}
\def\@makechapterhead#1{%
    \begingroup
        \null
        \vskip 45bp % Fudge factor
        \fontfamily{\sfdefault}%
        \fontsize{24}{27.5}%
        \bfseries
        \raggedleft
        \ifnum \c@secnumdepth >\m@ne
            \ifappendix
                \begingroup
                    \fontsize{18}{18}\selectfont
                    \appendixname\space
                \endgroup
            \fi
            \begingroup
                \fontsize{72}{72}\selectfont
                \thechapter\par
            \endgroup
        \fi
        \bb@space 3.5 pc
        #1\par
    \endgroup
    \bb@space* 4.5pc
}
\newdimen\maa@chaps@sink
\maa@chaps@sink47bp
\def\@makeschapterhead#1{%
    \begingroup
        \null
        \vskip\maa@chaps@sink
        \fontfamily{\sfdefault}%
        \fontsize{24}{27.5}%
        \bfseries
        \raggedleft
        #1\par
    \endgroup
    \bb@space* 4.5pc
}
\def\@startsection#1#2#3#4#5#6{%
    \if@noskipsec \leavevmode \fi
    \par
    \@tempskipa #4\relax
    \@afterindenttrue
    \@tempskipa #4\relax
    \ifdim \@tempskipa <\z@
        \@afterindentfalse
    \fi
    \if@nobreak
        \everypar{}%
    \else
        \addpenalty\@secpenalty
        \begingroup
            #6%
            \@tempskipa #4\relax
            \ifdim\@tempskipa < \z@
                \@tempskipa -\@tempskipa
            \fi
            \bb@space\@tempskipa
        \endgroup
    \fi
    \@ifstar{\@dblarg{\@sect{#1}{\@m}{#3}{#4}{#5}{#6}}}%
            {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}%
}
\def\@seccntformat#1{%
    \protect\textup{%
        \protect\@secnumfont
        \csname the#1\endcsname
        \protect\@secnumpunct
    }%
}
\let\@secnumfont\@empty
\def\@sect#1#2#3#4#5#6[#7]#8{%
    \ams@measure{#8}%
    \edef\@toclevel{\ifnum#2=\@m 0\else\number#2\fi}%
    \ifnum #2>\c@secnumdepth
        \let\@secnumber\@empty
    \else
        \@xp\let\@xp\@secnumber\csname the#1\endcsname
    \fi
    \@tempskipa #5\relax
    \ifnum #2>\c@secnumdepth
        \let\@svsec\@empty
    \else
        \refstepcounter{#1}%
        \edef\@secnumpunct{%
            \ifdim\@tempskipa>\z@ % not a run-in section heading
                \if@ams@empty\else\@nx\enspace\fi
            \else
                \if@ams@empty\else\@nx\enspace\fi
            \fi
        }%
        \protected@edef\@svsec{%
            \ifnum#2<\@m
                \@ifundefined{#1name}{}{%
                    \ignorespaces\csname #1name\endcsname\space
                }%
            \fi
            \@seccntformat{#1}%
        }%
    \fi
    \ifdim \@tempskipa>\z@ % then this is not a run-in section heading
        \begingroup
            #6\relax
            \@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty\@M #8\par}%
        \endgroup
        \csname #1mark\endcsname{#7}%
        \ifnum#2>\@m \else \@tocwrite{#1}{#8}\fi
    \else
        \def\@svsechd{%
            #6%
            \hskip #3%
            \@svsec
            \if@ams@empty\else
                \ignorespaces#8\unskip
                \@addpunct.%
            \fi
            \ifnum#2>\@m \else \@tocwrite{#1}{#8}\fi
        }%
    \fi
    \global\@nobreaktrue
    \@xsect{#5}%
}
\let\@ssect\relax
\newcounter{section}[chapter]
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\renewcommand\thesection       {\thechapter.\arabic{section}}
\renewcommand\thesubsection    {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection {\thesubsection.\arabic{subsubsection}}
\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph  {\theparagraph.\arabic{subparagraph}}
\setcounter{secnumdepth}{3}
\def\section{%
    \@startsection{section}%
        {1}%
        \z@
        {-3pc\@minus-.6pc}% no after indent
        {0.5pc}%
        {\normalfont\sffamily\bfseries\Large}%
}
\def\subsection{%
    \@startsection{subsection}%
        {2}%
        \z@
        {2pc\@minus.4pc}%
        {-.5em}%    Run-in heading
        {\normalfont\sffamily\bfseries\large}%
}
\def\subsubsection{%
    \@startsection{subsubsection}%
        {3}%
        \z@
        {2pc\@minus.4pc}%
        {-\smallskipamount}%
        {\normalfont\sffamily\bfseries}%
}
\def\paragraph{%
    \@startsection{paragraph}%
        {4}%
        \z@
        {2pc\@minus.4pc}%
        {-1em}%
        {\normalfont\normalsize\sffamily\bfseries}%
}
\def\subparagraph{%
    \@startsection{subparagraph}%
        {5}%
        \z@
        {2pc\@minus.4pc}%
        {-1em}%
        {\normalfont\normalsize\sffamily\itshape}%
}
\setcounter{topnumber}{4}
\setcounter{bottomnumber}{4}
\setcounter{totalnumber}{4}
\setcounter{dbltopnumber}{4}
\renewcommand{\topfraction}{.97}
\renewcommand{\bottomfraction}{.97}
\renewcommand{\textfraction}{.03}
\renewcommand{\floatpagefraction}{.9}
\renewcommand{\dbltopfraction}{.97}
\renewcommand{\dblfloatpagefraction}{.9}
\setlength{\floatsep}{12pt plus 6pt minus 4pt}
\setlength{\textfloatsep}{15pt plus 8pt minus 5pt}
\setlength{\intextsep}{12pt plus 6pt minus 4pt}
\setlength{\dblfloatsep}{12pt plus 6pt minus 4pt}
\setlength{\dbltextfloatsep}{15pt plus 8pt minus 5pt}
\setlength{\@fptop}{0pt}% removed "plus 1fil"
\setlength{\@fpsep}{8pt}% removed "plus 2fil"
\setlength{\@fpbot}{0pt plus 1fil}
\setlength{\@dblfptop}{0pt}% removed "plus 1fil"
\setlength{\@dblfpsep}{8pt}% removed "plus 2fil"
\setlength{\@dblfpbot}{0pt plus 1fil}
\newcommand{\fps@figure}{tbp}
\newcommand{\fps@table}{tbp}
\newcounter{figure}[chapter]
\def\thefigure{\thechapter.\@arabic\c@figure}

\def\@captionheadfont{\sffamily}
\def\@captionfont{\normalfont}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\ \thefigure}
\def\figurename{Figure}

\newenvironment{figure}{%
    \@float{figure}%
}{%
    \end@float
}

\newenvironment{figure*}{%
    \@dblfloat{figure}%
}{%
    \end@dblfloat
}
\newcounter{table}[chapter]
\def\thetable{\thechapter.\@arabic\c@table}

\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\ \thetable}
\def\tablename{Table}

\newenvironment{table}{%
    \@float{table}%
}{%
    \end@float
}

\newenvironment{table*}{%
    \@dblfloat{table}%
}{%
    \end@dblfloat
}
\def\@floatboxreset{\global\@minipagefalse \centering}
\newskip\abovecaptionskip
\abovecaptionskip=12pt

\newskip\belowcaptionskip
\belowcaptionskip=12pt
\newdimen\captionindent
\captionindent=3pc
\newdimen\maxcaptionwidth
\maxcaptionwidth=18pc
\def\caption{%
    \ifx\@captype\@undefined
        \@latex@error{\noexpand\caption outside float}\@ehd
        \expandafter\@gobble
    \else
        \expandafter\@firstofone
    \fi
    {\@ifstar\@scaption{\@dblarg{\@caption\@captype}}}%
}
\long\def\@caption#1[#2]#3{%
    \par
    \refstepcounter{#1}%
    \addcontentsline{\csname ext@#1\endcsname}{#1}%
        {\protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}%
    \begingroup
        \@parboxrestore
        \if@minipage
            \@setminipage
        \fi
        \normalsize
        \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
    \endgroup
}
\long\def\@scaption#1{%
    \par
    \begingroup
        \@parboxrestore
        \if@minipage\@setminipage\fi
        \normalsize
        \@makecaption{}{\ignorespaces #1}\par
    \endgroup
}
\long\def\@makecaption#1#2{%
    \setbox\@tempboxa\vbox{%
        \color@setgroup
        \hsize\maxcaptionwidth
        \ams@measure{#1}%
        \if@ams@empty
            \let\@secnumpunct\@empty
        \else
            \noindent
            \@captionfont\@captionheadfont#1%
            \let\@secnumpunct.%
        \fi
        \ams@measure{#2}%
        \if@ams@empty\else
            \@secnumpunct\@captionfont\upshape\enspace
        \fi
        \let\fullwidthdisplay\relax
        #2\par
        \global\setbox\@ne\lastbox
        \color@endgroup
    }%
    \ifhbox\@ne % the normal case
        \setbox\@ne\hbox{\unhbox\@ne\unskip\unskip\unpenalty\unkern}%
    \fi
    \ifdim\wd\@tempboxa=\z@ % this means caption will fit on one line
        \setbox\@ne\hbox to\columnwidth{\hss\box\@ne\hss}%
    \else % tempboxa contained more than one line
        \setbox\@ne\vbox{%
            \hsize\maxcaptionwidth
            \unvbox\@tempboxa
            \parskip\z@skip
            \noindent
            \unhbox\@ne
            \par
        }%
    \fi
    \ifnum\@tempcnta<64 % if the float IS a figure...
        \addvspace\abovecaptionskip
        \hbox to\hsize{\hss\box\@ne\hss}%
    \else % if the float IS NOT a figure...
        \hbox to\hsize{\hss\box\@ne\hss}%
        \nobreak
        \vskip\belowcaptionskip
    \fi
    \relax
}
\@addtoreset{footnote}{chapter}
\def\footnoterule{%
    \kern-.4\p@
    \hrule\@width 5pc
    \kern11\p@
    \kern-\footnotesep
}

\def\@makefntext{\indent\@makefnmark}
\long\def\@footnotetext#1{%
    \insert\footins{%
        \normalfont\footnotesize
        \interlinepenalty\interfootnotelinepenalty
        \splittopskip\footnotesep
        \splitmaxdepth \dp\strutbox
        \floatingpenalty\@MM
        \hsize\columnwidth
        \@parboxrestore
        \parindent\normalparindent
        \sloppy
        \protected@edef\@currentlabel{%
            \csname p@footnote\endcsname\@thefnmark
        }%
        \@makefntext{%
            \rule\z@
            \footnotesep\ignorespaces#1\unskip\strut\par
        }%
    }%
}
\RequirePackage{amsthm}
\def\th@plain{%
    \let\thm@indent\noindent
    \thm@headfont{\normalfont\bfseries}%
    \thm@preskip=2pc\@minus0.4pc
    \thm@postskip\thm@preskip
    \itshape % body font
}
\def\th@definition{%
    \th@plain
    \normalfont % body font
}
\def\th@remark{%
    \th@plain
    \thm@headfont{\itshape}%
    \normalfont % body font
}
\def\deferred@thm@head#1{%
    \if@inlabel \indent \par \fi % eject a section head if one is pending
    \if@nobreak
        \adjust@parskip@nobreak
    \else
        \addpenalty\@beginparpenalty
        \bb@space\@topsep
    \fi
    \global\@inlabeltrue
    \everypar\dth@everypar
    \sbox\@labels{\normalfont#1}%
    \ignorespaces
}
\def\thm@endparenv{%
    \addpenalty\@endparpenalty
    \bb@space\thm@postskip
    \@endpetrue
}
\def\@endtheorem{%
    \let\@endparenv\thm@endparenv
    \endtrivlist
    \@endpefalse
}
\renewenvironment{proof}[1][\proofname]{%
    \par
    \pushQED{\qed}%
    \normalfont
    \topsep6\p@\@plus6\p@
    \trivlist
    \item[\itshape#1\@addpunct{.}\enskip]%
    \ignorespaces
}{%
    \popQED
    \endtrivlist
    \@endpefalse
}
\newenvironment{xcb}{%
    \setcounter{enumi}{0}%
    \settowidth{\leftmargini}{\labelenumi\hskip\labelsep}%
    \setcounter{enumii}{4}% letter d
    \settowidth{\leftmarginii}{\labelenumii\hskip\labelsep}%
    \@startsection{section}% counter name; ignored because of the * below
        {1}%
        \z@
        {2pc\@minus0.4pc}%
        {1sp}%
        {\bfseries}%
        *% always unnumbered
}{%
    \par
}
\def\eqnarray{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to\displaywidth\bgroup
       \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne \hfil${{}##{}}$\hfil
      &\global\@eqcnt\tw@
         $\displaystyle{##}$\hfil\tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
         \tabskip\z@skip
      \cr
}
\newcommand\appendixname{Appendix}
\def\appendix{%
    \backmatter
    \appendixtrue
    \setcounter{chapter}{0}%
    \setcounter{section}{0}%
    \let\chaptername\appendixname
    \gdef\thechapter{\@Alph\c@chapter}%
}
\def\bibname{Bibliography}
\newcommand{\bibliofont}{\footnotesize}
\newcommand{\@bibtitlestyle}{%
    \@xp\chapter\@xp*\@xp{\bibname}%
}
\let\bibintro\@empty
\newenvironment{thebibliography}[1]{%
    \@bibtitlestyle
    \normalfont
    \bibliofont
    \labelsep .5em
    \ifx\bibintro\@empty\else
        \begingroup
            \bibintro\par
        \endgroup
        \vspace{12\p@}
    \fi
    \renewcommand\theenumiv{\arabic{enumiv}}%
    \let\p@enumiv\@empty
    \list{\@biblabel{\theenumiv}}{%
        \settowidth\labelwidth{\@biblabel{#1}}%
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
        \usecounter{enumiv}%
    }%
    \sloppy
    \clubpenalty\@M
    \widowpenalty\clubpenalty
    \sfcode`\.=\@m
}{%
    \def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
    \endlist
}
\def\bysame{\leavevmode\hbox to3em{\hrulefill}\thinspace}
\def\newblock{}
\newcommand{\MR}[1]{%
    \begingroup
        \strip@MRprefix#1\@nil
        \edef\@tempa{MR\@nx\MRhref{\@tempa}{\@tempa}}%
    \@xp\endgroup
    \@tempa
}
\def\strip@MRprefix#1#2#3#4\@nil{%
    \def\@tempa{#1#2#3#4}%
    \if#1M%
        \if#2R%
            \def\@tempa{#3#4}%
        \fi
    \fi
}
\let\MRhref\@gobble
\newcommand\URL{%
    \begingroup
        \def\@sverb##1{%
            \def\@tempa####1##1{\@URL{####1}\egroup\endgroup}%
            \@tempa
        }%
    \verb
}
\let\URLhref\@gobble
\def\@URL#1{\URLhref{#1}#1}
\def\@biblabel#1{\@ifnotempty{#1}{[#1]}}
\def\@citestyle{\m@th\upshape\mdseries}
\def\citeform#1{{\bfseries#1}}

\def\@cite#1#2{%
    \begingroup
        \@citestyle[\citeform{#1}\if@tempswa, #2\fi]%
    \endgroup
}
\@ifundefined{cite }{%
    \expandafter\let\csname cite \endcsname\cite
    \edef\cite{\@nx\protect\@xp\@nx\csname cite \endcsname}%
}{}
\def\indexchap#1{%
    \global\topskip 7.5pc
    \twocolumn[{%
        \fontsize{\@xivpt}{18}%
        \bfseries
        \centering
        \vskip\topskip
        \null
        \vskip-\baselineskip% adjust top space
        #1\par
        \global\topskip 34\p@
        \ifx\indexintro\@empty \else
            \begingroup
                \normalsize
                \skip@\topskip
                \advance\skip@ -\baselineskip
                \vskip\skip@
                \parbox[t]{24pc}{\normalfont\indexintro\par}%
            \endgroup
            \global\topskip 24\p@
        \fi
    }]%
}

\newcommand{\indexintro}{}
\newcommand{\@indextitlestyle}{%
    \let\@makeschapterhead\indexchap
    \@xp\chapter\@xp*\@xp{\indexname}%
}

\def\theindex{%
    \columnseprule\z@
    \columnsep 35\p@
    \@indextitlestyle
    \thispagestyle{plain}%
    \let\item\@idxitem
    \parindent\z@
    \parskip\z@\@plus.3\p@
    \raggedright
    \hyphenpenalty\@M
    \footnotesize
}
\def\indexname{Index}
\def\@idxitem{\par\hangindent 2em}
\def\subitem{\par\hangindent 2em\hspace*{1em}}
\def\subsubitem{\par\hangindent 3em\hspace*{2em}}
\def\endtheindex{\clearpage}
\def\indexspace{\par\bigskip}
\@namedef{ver@makeidx.sty}{3000/12/31}
\newcommand*\seeonlyname{see}
\newcommand*\seename{see also}
\newcommand*\alsoname{see also}
\newcommand*\seeonly[2]{\emph{\seeonlyname} #1}
\newcommand*\see[2]{\emph{\seename} #1}
\newcommand*\seealso[2]{\emph{\alsoname} #1}
\newcommand\printindex{\@input{\jobname.ind}}
\AtBeginDocument{%
    \@ifpackageloaded{natbib}{%
        \let\citenumfont\textup
        \protected@xdef\NAT@open {\noexpand\textup{\NAT@open}}%
        \protected@xdef\NAT@close{\noexpand\textup{\NAT@close}}%
        \protected@xdef\NAT@sep  {\noexpand\textup{\NAT@sep}}%
        \protected@xdef\NAT@aysep{\noexpand\textup{\NAT@aysep}}%
        \protected@xdef\NAT@yrsep{\noexpand\textup{\NAT@yrsep}}%
        \protected@xdef\NAT@cmt  {\noexpand\textup{\NAT@cmt}}%
    }{}%
}
\AtBeginDocument{%
    \@ifpackageloaded{enumerate}{%
        \def\@@enum@[#1]{%
            \@enLab{}%
            \let\@enThe\@enQmark
            \@enloop#1\@enum@
            \ifx\@enThe\@enQmark
                \@warning{The counter will not be printed.%
                ^^J\space\@spaces\@spaces\@spaces The label is: \the\@enLab}%
            \fi
            \expandafter\edef\csname label\@enumctr\endcsname{\the\@enLab}%
            \expandafter\let\csname the\@enumctr\endcsname\@enThe
            \@enum@
        }%
        \def\@enum@{%
            \list{\csname label\@enumctr\endcsname}{%
                \usecounter{\@enumctr}%
                \def\makelabel##1{\hss\llap{\upshape##1\enskip}}%
            }%
        }%
    }{}%
}
\AtBeginDocument{%
    \@ifpackageloaded{enumitem}{%
        \@ifundefined{enit@@list}{%
            \def\enit@@list{font=\protect\textup}%
        }{%
            \begingroup
                \toks@\expandafter{\enit@@list}%
                \protected@xdef\enit@@list{font=\protect\textup,\the\toks@}%
            \endgroup
        }
        \enitkv@key{enumitem}{format}{%
            \def\enit@format{\upshape#1}%
        }
        \enitkv@key{enumitem}{font}{%
            \def\enit@format{\upshape#1}%
        }
        \def\enit@align@right{%
            \def\enit@align##1{\nobreak\hss\llap{##1\enskip}}%
        }
        \def\enit@align@left{%
            \def\enit@align##1{\nobreak##1\enskip\hfil}%
        }
    }{}%
}
\PassOptionsToPackage{neveradjust}{paralist}
\AtBeginDocument{%
    \@ifpackageloaded{paralist}{%
        \def\enumlabel#1{\hss\llap{\upshape#1}\enskip}
        \let\itemlabel\enumlabel
        \g@addto@macro\@asparaenum@{\let\makelabel\textup}
        \g@addto@macro\@inparaenum@{\let\makelabel\textup}
        \g@addto@macro\@asparaitem@{\let\makelabel\textup}
        \g@addto@macro\@inparaitem@{\let\makelabel\textup}
    }{}%
}
\AtBeginDocument{%
    \@ifpackageloaded{float}{%
        \renewcommand\caption{%
            \ifx\@captype\@undefined
                \@latex@error{\noexpand\caption outside float}\@ehd
                \expandafter\@gobble
            \else
                % \refstepcounter\@captype
                \let\@tempf\@caption
                \expandafter\ifx\csname @float@c@\@captype\endcsname\relax\else
                    \expandafter\expandafter\let
                        \expandafter\@tempf\csname @float@c@\@captype\endcsname
                \fi
            \fi
            \@dblarg{\@tempf\@captype}%
        }%
    }{}%
}
\hyphenation{acad-e-my acad-e-mies af-ter-thought anom-aly anom-alies
an-ti-deriv-a-tive an-tin-o-my an-tin-o-mies apoth-e-o-ses
apoth-e-o-sis ap-pen-dix ar-che-typ-al as-sign-a-ble as-sist-ant-ship
as-ymp-tot-ic asyn-chro-nous at-trib-uted at-trib-ut-able bank-rupt
bank-rupt-cy bi-dif-fer-en-tial blue-print busier busiest
cat-a-stroph-ic cat-a-stroph-i-cally con-gress cross-hatched data-base
de-fin-i-tive de-riv-a-tive dis-trib-ute dri-ver dri-vers eco-nom-ics
econ-o-mist elit-ist equi-vari-ant ex-quis-ite ex-tra-or-di-nary
flow-chart for-mi-da-ble forth-right friv-o-lous ge-o-des-ic
ge-o-det-ic geo-met-ric griev-ance griev-ous griev-ous-ly
hexa-dec-i-mal ho-lo-no-my ho-mo-thetic ideals idio-syn-crasy
in-fin-ite-ly in-fin-i-tes-i-mal ir-rev-o-ca-ble key-stroke
lam-en-ta-ble light-weight mal-a-prop-ism man-u-script mar-gin-al
meta-bol-ic me-tab-o-lism meta-lan-guage me-trop-o-lis
met-ro-pol-i-tan mi-nut-est mol-e-cule mono-chrome mono-pole
mo-nop-oly mono-spline mo-not-o-nous mul-ti-fac-eted mul-ti-plic-able
non-euclid-ean non-iso-mor-phic non-smooth par-a-digm par-a-bol-ic
pa-rab-o-loid pa-ram-e-trize para-mount pen-ta-gon phe-nom-e-non
post-script pre-am-ble pro-ce-dur-al pro-hib-i-tive pro-hib-i-tive-ly
pseu-do-dif-fer-en-tial pseu-do-fi-nite pseu-do-nym qua-drat-ic
quad-ra-ture qua-si-smooth qua-si-sta-tion-ary qua-si-tri-an-gu-lar
quin-tes-sence quin-tes-sen-tial re-arrange-ment rec-tan-gle
ret-ri-bu-tion retro-fit retro-fit-ted right-eous right-eous-ness
ro-bot ro-bot-ics sched-ul-ing se-mes-ter semi-def-i-nite
semi-ho-mo-thet-ic set-up se-vere-ly side-step sov-er-eign spe-cious
spher-oid spher-oid-al star-tling star-tling-ly sta-tis-tics
sto-chas-tic straight-est strange-ness strat-a-gem strong-hold
sum-ma-ble symp-to-matic syn-chro-nous topo-graph-i-cal tra-vers-a-ble
tra-ver-sal tra-ver-sals treach-ery turn-around un-at-tached
un-err-ing-ly white-space wide-spread wing-spread wretch-ed
wretch-ed-ly Eng-lish Euler-ian Feb-ru-ary Gauss-ian
Hamil-ton-ian Her-mit-ian Jan-u-ary Japan-ese Kor-te-weg
Le-gendre Mar-kov-ian Noe-ther-ian No-vem-ber Rie-mann-ian Sep-tem-ber}
\calclayout

\pagestyle{headings}

\pagenumbering{arabic}

\flushbottom

\@twosidetrue

\InputIfFileExists{maabook.cfg}{}{}
\endinput
%%
%% End of file `maabook.cls'.
