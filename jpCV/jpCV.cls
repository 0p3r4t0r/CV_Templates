%jpCV.cls
%
%	Produced by 0p3r4t0r

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------Latex Basics-------------%
\LoadClassWithOptions{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jpCV}[2017/01/02]

%---------Required Packages-----------%
\RequirePackage[absolute,overlay]{textpos}		%Defines the textblock environment
\TPGrid{22}{30}									%Define a placement grid for texpos in centimeters
\RequirePackage[margin=1.5cm]{geometry}			%Set document margins
\RequirePackage{nopageno}						%Eliminate page numbers
\RequirePackage{graphicx}						%Pictures
\graphicspath{ {./jpCV_icons/} }
\RequirePackage{setspace}				        %Line spacing
\RequirePackage{array}						    %Tables
\RequirePackage[utf8]{inputenc}			        %Character input in UTF8
\RequirePackage[CJK]{ruby}				        %Insert fuirgana
\renewcommand\rubysep{0.1ex}
\renewcommand{\rubysize}{0.6}
\RequirePackage{xcolor}
\definecolor{tablesec}{gray}{0.8}           %Define new colors
\RequirePackage{colortbl}                       %Color a row


%-------Additional Configuration-------%
\setlength{\parindent}{0pt}         %Remove automatic indents
\newenvironment{jp}[1][min]         %Japanese environment
{%
    \begin{CJK}{UTF8}{#1}
	}{%
    \end{CJK}
}

%-----------------Header------------------%
\newenvironment{header}[1][\today]
{%
    \begin{textblock}{12.5}(1.5,1.5)
	\begin{jp}
	    \huge{履歴書}  \hfill \normalsize{#1}
	    \newline	 \newline	
	    \huge
	}{%
    \end{jp}
    \end{textblock}
}

%-------------------Photo-----------------%
\newcommand{\photo}[1]{
    \begin{textblock}{4.5}(15.5, 2.5)
        \includegraphics[width=4.75cm, height=5.25cm]{#1}
    \end{textblock}
}

%---------------------Info------------------%
\newenvironment{info}[1][1.25]
{%
    \begin{textblock}{14.0}(1.5,5.25)
    \begin{jp}
        \begin{spacing}{#1}
    }{%
        \end{spacing}
	\end{jp}
	\end{textblock}
}

%---------------------Body------------------%
\newenvironment{body1}[1][1.25]
{%
    \newcommand{\tab}{\hspace{4ex}}
    \begin{textblock}{19.0}(1.5,8.75)
    \begin{jp}
        \begin{spacing}{#1}
        \newcolumntype{Y}{>{\centering}m{1.5cm}}
        \newcolumntype{M}{>{\centering}m{0.75cm}}
    }{%
        \end{spacing}
    \end{jp}
    \end{textblock}
}

\newenvironment{body2}[1][1.25]
{%
    \newcommand{\tab}{\hspace{4ex}}
    \begin{jp}
        \begin{spacing}{#1}
        \newcolumntype{Y}{>{\centering}m{1.5cm}}
        \newcolumntype{M}{>{\centering}m{0.75cm}}
    }{%
        \end{spacing}
    \end{jp}
}
