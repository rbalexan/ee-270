
\LoadClass[10pt,letterpaper]{article}
\ProvidesClass{abernethy_hw}

% TO INSTALL: place in the .../latex/tex/base path and run 'texhash' as root

% Document Specifics
\makeatletter
\def \TVname{Jacob Abernethy}
\newcommand{\hwclass}[1]{\def \TVclass{#1}}
\newcommand{\hwdue}[1]{\def \TVdue{#1}}
\newcommand{\hwassignment}[1]{\def \TVassignment{#1}}
\makeatother

\usepackage[latin1]{inputenc}
\usepackage{amsmath,amsthm}
\usepackage{fullpage}
\usepackage{amsfonts}
\usepackage{listings}
\usepackage{epsfig}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{bm}
\usepackage{tikz}
\usepackage{float} 
\usepackage{fancyhdr}
\usepackage{epstopdf}
\usepackage{lscape}
\usepackage{pifont}
\usepackage{mathrsfs}
\usepackage{marvosym}
\usepackage{enumerate}
\usepackage{listings}

\setlength{\headsep}{25pt}
\setlength{\voffset}{-25pt}
\setlength{\headheight}{12pt}

% Custom problem counters
\newcounter{probnum}
\newcounter{subprobnum}
\newcounter{subsubprobnum}
\stepcounter{probnum}
\stepcounter{subprobnum}
\stepcounter{subsubprobnum}


% Custom problem functions
%\newcommand{\prob}[1]{\setlength{\leftskip}{0em}\vspace{3em} \noindent \setcounter{subprobnum}{1}\textbf{\noindent Problem \arabic{probnum}) \stepcounter{probnum}} #1\par \addtolength{\leftskip}{5em}}
%\newcommand{\subprob}[1]{\addtolength{\leftskip}{-\probmargin}\vspace{2em} \noindent \textbf{ \noindent \alph{subprobnum}) \stepcounter{subprobnum}} #1\par \addtolength{\leftskip}{\probmargin}}
%\newcommand{\nprob}[2]{\setlength{\leftskip}{0em}\vspace{3em} \noindent \setcounter{subprobnum}{1} \arabic{probnum} \textbf{#1}) \stepcounter{probnum} #2\par \addtolength{\leftskip}{5em}}
\newcommand{\nsubprob}[2]{\addtolength{\leftskip}{-3em}\vspace{2em} \noindent \textbf{ \noindent #1) \stepcounter{subprobnum}} #2\par \addtolength{\leftskip}{3em}}

\def \probmargin{1.6em}
\def \probvspace{1em}
\def \solttl{\ding{70} \textbf{Solution:}}

\newcommand{\prob}[2]
{
	
	\vspace{\probvspace}
	\setcounter{subprobnum}{1}
	\setlength{\leftskip}{0em}
	\noindent \textbf{#1. } #2 
	\vspace{\probvspace}

}

\newcommand{\nprob}[2]
{
	
	\vspace{\probvspace}
	\setcounter{subprobnum}{1}
	\setlength{\leftskip}{0em}
	\noindent \arabic{probnum}) \textbf{#1. } #2 
	\vspace{\probvspace}
	\stepcounter{probnum}
}

\newcommand{\subprob}[1]
{
	
	\setlength{\leftskip}{\probmargin}
	\setcounter{subsubprobnum}{1}

	\def \subttl{\textbf{(\alph{subprobnum}) }}
	\settowidth{\parindent}{\subttl}
	\addtolength{\leftskip}{\parindent}
	\setlength{\parindent}{-\parindent}
	\subttl #1
	\stepcounter{subprobnum}
	\vspace{\probvspace}
	\setlength{\parindent}{0em}

}

\newcommand{\subsubprob}[1]
{
	
	\setlength{\leftskip}{\probmargin}
	\addtolength{\leftskip}{\probmargin}

	\def \subttl{\textbf{(\roman{subsubprobnum}) }}
	\settowidth{\parindent}{\subttl}
	\addtolength{\leftskip}{\parindent}
	\setlength{\parindent}{-\parindent}
	\subttl #1
	\stepcounter{subsubprobnum}
	\vspace{\probvspace}
	\setlength{\parindent}{0em}

}
\newenvironment{soln}
{
	% \addtolength{\leftskip}{\probmargin} 
	\setlength{\leftskip}{\probmargin}
	\addtolength{\leftskip}{\probmargin}
	\addtolength{\leftskip}{\probmargin}
	\setlength{\rightskip}{\leftskip}
	\solttl
}{

	\addtolength{\leftskip}{-\probmargin}
	\vspace{\probvspace}
}

% Custom environments
\renewenvironment{proof}
{\textit{Proof: }}{\qed}

\newenvironment{mylisting}
{\begin{list}{}{\addtolength{\leftmargin}{5em}}\item\small\bfseries}
{\end{list}}

\newenvironment{mytinylisting}
{\begin{list}{}{\setlength{\leftmargin}{1em}}\item\tiny\bfseries}
{\end{list}}

\pagestyle{fancy}
\thispagestyle{plain}

\lhead{\TVclass\, - \TVassignment}
\rhead{Due \TVdue}
\renewcommand{\headrulewidth}{1pt}

% Title Heading
\renewcommand{\maketitle}
{
	\begin{center}
	\newlength{\titlerulewidth}
	\def \hmwkttl{{\Large \textbf{\TVclass\, - \TVassignment}}}
	\settowidth{\titlerulewidth}{\hmwkttl}

	\rule{\titlerulewidth}{1pt}\\[3mm]
	\hmwkttl \\[3mm]
	\makebox[\titlerulewidth]{\small \TVname \hspace{1em} \hfill \hfill  Due: \TVdue} \\
	\rule{\titlerulewidth}{1pt}\\[3mm]
	\end{center}

	\vspace{3em}
}

%listing styles
\newcommand{\lstprob}
{
	\lstset{language=C, tabsize=3, frame=l, numbers=left, numberstyle=\footnotesize, xleftmargin=2em, basicstyle=\ttfamily}
}

\newcommand{\lstsoln}
{
	\lstset{language=C, tabsize=3, frame=lrtb, numbers=left, numberstyle=\footnotesize, xleftmargin=7em, basicstyle=\ttfamily}
}
\newif\ifshow
\showtrue
\usepackage{comment}
\ifshow
  \newenvironment{hint}{\emph{Hint:}}{}
\else
  \excludecomment{hint}
\fi

