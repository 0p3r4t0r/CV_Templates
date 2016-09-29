%easyCV.cls
%
%	Produced by 0p3r4t0r

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------Latex Basics-------------%
\LoadClassWithOptions{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{easyCV}[2016/07/28]

%---------Required Packages-----------%
\RequirePackage[absolute,overlay]{textpos}			%Defines the textblock environment
\RequirePackage[
tmargin=2.5cm,bmargin=2.5cm					%Document margins
]{geometry}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\graphicspath{ {../graphics/} }
%---------------fonts-----------------%
%Come back to this one

%---------------Header----------------%
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
			\textbf{\Large{#1}}
			\hrule height 1pt width 5.5cm
			\fontsize{#2}{#2}
	}{%
		\end{flushleft}
	\end{textblock}	
}

%----------------Main-----------------%
\newenvironment{main}
{%
	\renewcommand{\section}[1]{
		\vspace{0.5cm}
		\textbf{\Large{##1}}
		\vspace{0.05cm}
		\hrule height 1.5pt
		\vspace{0.15cm}
	}
	\renewcommand{\subsection}[2]{
		\vspace{0.35cm}
		\textbf{##1} \hfill \fontsize{6pt}{6pt}{##2} \hrule width \textwidth
		\vspace{0.1cm}
		\fontsize{10.5pt}{10.5pt}
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

%----------------Images---------------%
%Graphics path defined in package section
\newcommand{\image}[2][scale=1.0]{
	\vspace{0.5cm}
	\includegraphics[#1]{#2}				%Just the graphics command with extra spacing
	\vspace{0.5cm}
}
		
	

