%easyCover.cls
%
%	Produced by 0p3r4t0r

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------Latex Basics-------------%
\LoadClassWithOptions{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{easyCover}[10/5/2016]
\pagenumbering{gobble}



%---------Required Packages-----------%
\RequirePackage[
tmargin=2.5cm,bmargin=2.5cm                                     %Document margins
]{geometry}
\RequirePackage[letterspace=150]{microtype}



%---------------Header----------------%
\newcommand{\name}[3][]{
	\def\@firstname{#2}
	\def\@lastname{#3}
	\begin{center}
		\textls{\textbf{\fontsize{45pt}{45pt}\selectfont \@firstname \hspace{0ex} \@lastname}}
                \break\break
		{\fontsize{20pt}{20pt}\selectfont #1}
		\vspace{1.0cm}
        \end{center}
}

	%------Address------%
\newcommand{\from}[1]{
	\begin{flushright}
		\textbf{\@firstname \hspace{0ex} \@lastname,}
		\break
		\textbf{#1}
		\vspace{1.5cm}
	\end{flushright}
}
\renewcommand{\to}[2]{
        \def\@employer{#1}
	\begin{flushleft}
                \textbf{\@employer}
                \break
                \textbf{#2}
		\vspace{1.0cm}
        \end{flushleft}
}



%----------------Main-----------------%
\newenvironment{main}[1][12pt]
{%
	\fontsize{#1}{#1}\selectfont
	\begin{flushleft}
	Dear \@employer,
	\vspace{4ex}
	\setlength{\parskip}{#1 plus 1pt minus 1pt}

	\renewcommand{\sign}[1][Thank you for considering me]{
                \vspace{4ex}
                ##1,
                \break\break
                \@firstname \hspace{0ex} \@lastname
        }
	
}{%
	\end{flushleft}
}



%----------------Sign-----------------%
\newcommand{\sign}[1][]{
	#1
}


