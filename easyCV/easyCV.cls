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
\RequirePackage{graphicx}					%Insert Images
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
\newenvironment{sidebar}[1][]
{%
	\renewcommand{\section}[1]{
		\vspace{0.35cm}
		\hfill\textbf{\large{##1}}
		\break
	}
	\begin{textblock}{4.0}(1.0, 3.0)
		\begin{flushright}
			\centering{\textbf{\Large{#1}}}
	}{%
		\end{flushright}
	\end{textblock}	
}

%----------------Main-----------------%
\newenvironment{main}
{%
	\renewcommand{\section}[1]{
		\vspace{0.5cm}
		\textbf{\Large{##1}}
		\rule{\textwidth}{1pt}
	}
	\renewcommand{\subsection}[2]{
		\vspace{0.25cm}
		##1 \hfill ##2 \hrule
		\vspace{0.15cm}
		\break
	}
	\begin{textblock}{8.5}(5.5, 2.5)
		\begin{flushleft}
	}{%
		\end{flushleft}
	\end{textblock}
}


%----------------Images---------------%
%Graphics path defined in package section
\newcommand{\image}[2][scale=1.0]{
	\vspace{0.5cm}
	\includegraphics[#1]{#2}				%Just the graphics command with extra spacing
	\vspace{0.5cm}
}
		
	

