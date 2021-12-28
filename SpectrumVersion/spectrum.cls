%%
%% This is file `spectrum.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% spectrum.dtx 
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
\ProvidesClass{spectrum}[2018/07/16 v1.01]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{maabook}}
\ProcessOptions\relax
\LoadClass[6x9]{maabook}[2018/07/16]
\def\titlepage@series{Spectrum}
\def\@makechapterhead#1{%
    \begingroup
        \null
        \vskip 35bp
        \fontfamily{\sfdefault}%
        \fontsize{24}{27.5}%
        \bfseries
        \raggedright
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
            \par
        \fi
        \bb@space 3.5 pc
        #1\par
    \endgroup
    \bb@space 4.5pc
}
\def\@makeschapterhead#1{%
    \begingroup
        \null
        \vskip\maa@chaps@sink
        \fontfamily{\sfdefault}%
        \fontsize{24}{27.5}%
        \bfseries
        \raggedright
        #1\par
    \endgroup
    \bb@space* 4.5pc
}
\endinput
%%
%% End of file `spectrum.cls'.
