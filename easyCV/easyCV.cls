%easyCV.cls
%
%	Produced by 0p3r4t0r

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------Latex Basics-------------%
\LoadClassWithOptions{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{easyCV}[09/28/2016]

%---------Required Packages-----------%
\RequirePackage[absolute,overlay]{textpos}			%Defines the textblock environment
\RequirePackage[tmargin=2.5cm,bmargin=2.5cm]{geometry}		%Slim the top and bottom margins
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\graphicspath{ {./easyCV.icons/} }



%-----------Header/Footer-------------%
\newcommand{\name}[2]{
	\center{
		\Huge{#1} \Huge\textbf{#2}
		\break\break
	}
}

	%-----SubHeader-----%
\newcommand{\mail}[1]{
	\includegraphics[scale=0.085]{mail_CVicon.png}~#1 
}
\newcommand{\phone}[1]{
       \includegraphics[scale=0.075]{phone_CVicon.png}~#1
}
\newcommand{\address}[1]{
	\includegraphics[scale=0.085]{house_CVicon.png}~#1
}
\newcommand{\website}[1]{
        \includegraphics[scale=0.085]{www_CVicon.png}~#1
}

	%--------Footer-----%
\newcommand{\footer}[1][\today]{
	\begin{textblock}{5.0}(10.0, 15.5)
	\hfill #1
	\end{textblock}
}



%---------------Sidebar---------------%
\newenvironment{sidebar}[2][Skills]
{%
	\renewcommand{\section}[1]{
		\vspace{0.3cm}
		\textbf{\large{##1}}
		\break
	}
	\begin{textblock}{4.5}(1.0, 2.85)
		\begin{flushleft}
			\hbox{\textbf{\Large{#1}}}\kern2pt\hrule\kern4pt
			\fontsize{#2}{#2}\selectfont
	}{%
		\end{flushleft}
	\end{textblock}	
}

%----------------Main-----------------%
\newenvironment{main}[1][10.5pt]
{%
	\def\@mainfontsize{#1}
	\renewcommand{\section}[1]{
		\vspace{5mm}
		\hbox{\textbf{\Large{##1}}}\kern2pt\hrule
	}
	\renewcommand{\subsection}[2]{
		\vspace{3.5mm}
		\textbf{##1} \hfill \fontsize{6pt}{6pt}
		\hbox{\selectfont{##2}}
		\vspace{0.5mm}\hrule\vspace{2.0mm}
		\fontsize{\@mainfontsize}{\@mainfontsize}\selectfont
		\break
	}	
	\begin{textblock}{9.0}(6.0, 3.0)
		\begin{flushleft}
	}{%
		\end{flushleft}
	\end{textblock}
}

%-----------List Entry Type-----------%
\newenvironment{mainlist}
{%
	\renewcommand\labelitemi{{\boldmath$\cdot$}}	
	\begin{itemize}[topsep=0ex,leftmargin=*,itemsep=0.1cm]
}{%
	\end{itemize}
}
