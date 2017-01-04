%CVzy.cls
%
%	Produced by 0p3r4t0r

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------Latex Basics-------------%
\LoadClassWithOptions{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CVzy}[2017/01/02]

%---------Required Packages-----------%
\RequirePackage[absolute,overlay]{textpos}	%Defines the textblock environment
\TPGrid{22}{30}					%Define a placement grid for texpos in centimeters
\RequirePackage[margin=1.5cm]{geometry}		%Set document margins
\RequirePackage{graphicx}			%Pictures
\graphicspath{ {./CVzy.icons/} }
\RequirePackage[utf8]{inputenc}			%Character input in UTF8
\RequirePackage[CJK]{ruby}			%Insert fuirgana
\renewcommand\rubysep{0.1ex}
\renewcommand{\rubysize}{0.6}


%-------Additional Configuration-------%
\setlength{\parindent}{0pt}			%Remove automatic indents
\newenvironment{jp}[1][min]			%Japanese environment
{%
	\begin{CJK}{UTF8}{#1}
	}{%
	\end{CJK}
}

%-----------------Header------------------%
\newenvironment{header}[1][履歴書]
{%
	\begin{textblock}{14.5}(1.5,1.5)
	\begin{jp}
		\huge{#1}
	}{%
	\end{jp}
	\end{textblock}
}

%-------------------Photo-----------------%
\newcommand{\photo}[1]{
        \begin{textblock}{4.25}(16.25, 1.5)
                \includegraphics[width=4.25cm, height=5.0cm]{#1}
        \end{textblock}
}
