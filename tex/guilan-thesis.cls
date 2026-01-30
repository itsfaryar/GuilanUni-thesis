%%
%%  This is file `guilan-thesis.cls',
%%  A modified version of `tehran-thesis.cls`
%%  originally developed by Sina Momken.
%%
%%  The original tehran-thesis is itself a modification of:
%%    - IUST-Thesis by Mahmood Amintoosi
%%    - which is based on Tabriz_thesis by Vahid Damanafshan
%%    - which is based on xepersian-thesis by Vafa Khalighi
%%
%%  This version has been adapted for the University of Guilan
%%  according to the official thesis writing guidelines.
%%
%%  Maintainer of this version: Amin Daemdoost
%%  Repository: https://github.com/itsfaryar/GuilanUni-thesis
%%
%%  Original tehran-thesis repository:
%%  https://github.com/sinamomken/tehran-thesis
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{guilan-thesis}
              [05/09/2017 v0.1
 Persian thesis document class in XeLaTeX for University of Tehran projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\college#1{\gdef\@college{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\firstsupervisorrank}[1]{\def\@firstsupervisorrank{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\secondsupervisorrank}[1]{\def\@secondsupervisorrank{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\firstadvisorrank}[1]{\def\@firstadvisorrank{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\newcommand{\secondadvisorrank}[1]{\def\@secondadvisorrank{#1}}
\newcommand{\internaljudge}[1]{\def\@internaljudge{#1}}
\newcommand{\internaljudgerank}[1]{\def\@internaljudgerank{#1}}
\newcommand{\externaljudge}[1]{\def\@externaljudge{#1}}
\newcommand{\externaljudgerank}[1]{\def\@externaljudgerank{#1}}
\newcommand{\externaljudgeuniversity}[1]{\def\@externaljudgeuniversity{#1}}
\newcommand{\graduatedeputy}[1]{\def\@graduatedeputy{#1}}
\newcommand{\graduatedeputyrank}[1]{\def\@graduatedeputyrank{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\long\def\acknowledgement#1{\gdef\@acknowledgement{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\long\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
\def\latincollege#1{\gdef\@latincollege{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%===============================
% Defense session / Davaran page
%===============================

% Helpers
\def\thdr#1#2{\shortstack{#1\\#2}}
\def\safeprint#1{\expandafter\detokenize\expandafter{#1}}

% Header info
\def\defenseno#1{\gdef\@defenseno{#1}}
\def\defensedate#1{\gdef\@defensedate{#1}}
\def\defensetime#1{\gdef\@defensetime{#1}}
\def\defenseday#1{\gdef\@defenseday{#1}}
\def\defenselocation#1{\gdef\@defenselocation{#1}}

% Thesis/session info
\def\defensecredits#1{\gdef\@defensecredits{#1}}
\def\finalgrade#1{\gdef\@finalgrade{#1}}
\def\resultnote#1{\gdef\@resultnote{#1}}

% Committee specs
\def\firstsupervisorspec#1{\gdef\@firstsupervisorspec{#1}}
\def\secondsupervisorspec#1{\gdef\@secondsupervisorspec{#1}}
\def\firstadvisorspec#1{\gdef\@firstadvisorspec{#1}}
\def\secondadvisorspec#1{\gdef\@secondadvisorspec{#1}}
\def\internaljudgespec#1{\gdef\@internaljudgespec{#1}}
\def\externaljudgespec#1{\gdef\@externaljudgespec{#1}}

% Committee affiliations
\def\firstsupervisoraffil#1{\gdef\@firstsupervisoraffil{#1}}
\def\secondsupervisoraffil#1{\gdef\@secondsupervisoraffil{#1}}
\def\firstadvisoraffil#1{\gdef\@firstadvisoraffil{#1}}
\def\secondadvisoraffil#1{\gdef\@secondadvisoraffil{#1}}
\def\internaljudgeaffil#1{\gdef\@internaljudgeaffil{#1}}
\def\externaljudgeaffil#1{\gdef\@externaljudgeaffil{#1}}

% Graduate rep (bottom)
\def\gradrepname#1{\gdef\@gradrepname{#1}}
\def\gradreprank#1{\gdef\@gradreprank{#1}}
\def\gradrepgroup#1{\gdef\@gradrepgroup{#1}}

% Defaults (IMPORTANT: include ALL optional fields too)
\gdef\@defenseno{}
\gdef\@defensedate{}
\gdef\@defensetime{}
\gdef\@defenseday{}
\gdef\@defenselocation{}
\gdef\@defensecredits{6}
\gdef\@finalgrade{}
\gdef\@resultnote{}

\gdef\@firstsupervisorspec{}\gdef\@secondsupervisorspec{}
\gdef\@firstadvisorspec{}\gdef\@secondadvisorspec{}
\gdef\@internaljudgespec{}\gdef\@externaljudgespec{}

\gdef\@firstsupervisoraffil{دانشگاه گیلان}
\gdef\@secondsupervisoraffil{دانشگاه گیلان}
\gdef\@firstadvisoraffil{دانشگاه گیلان}
\gdef\@secondadvisoraffil{دانشگاه گیلان}
\gdef\@internaljudgeaffil{دانشگاه گیلان}
\gdef\@externaljudgeaffil{}

\gdef\@gradrepname{}\gdef\@gradreprank{}\gdef\@gradrepgroup{}

% ALSO set defaults for these optional ones if you test \empty:
\gdef\@secondsupervisor{}
\gdef\@firstadvisor{}
\gdef\@secondadvisor{}
\gdef\@internaljudge{}
\gdef\@externaljudge{}
\gdef\@externaljudgeuniversity{}
\gdef\@graduatedeputy{}
\gdef\@graduatedeputyrank{}
\gdef\@secondsupervisorrank{}
\gdef\@firstadvisorrank{}
\gdef\@secondadvisorrank{}
\gdef\@internaljudgerank{}
\gdef\@externaljudgerank{}
\gdef\@secondsupervisorspec{}
\gdef\@firstadvisorspec{}
\gdef\@secondadvisorspec{}
\gdef\@internaljudgespec{}
\gdef\@externaljudgespec{}
\gdef\@secondsupervisoraffil{دانشگاه گیلان}
\gdef\@firstadvisoraffil{دانشگاه گیلان}
\gdef\@secondadvisoraffil{دانشگاه گیلان}
\gdef\@internaljudgeaffil{دانشگاه گیلان}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\newif\if@irfonts
\@irfontsfalse
\DeclareOption{irfonts}{\@irfontstrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
\if@mscthesis
{\projectLabel{پایان‌نامه}}
\else
 \if@bscthesis
 {\projectLabel{پروژه}}
 \else
{\projectLabel{رساله}}
\fi\fi
}\fi

\ifx\@degree\undefined%
{
\if@mscthesis
\degree{کارشناسی ارشد}
\else
\if@bscthesis
\degree{کارشناسی}
\else
\degree{دکتری}
\fi\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% جلد زرکوب به فارسی (بدون اساتید مشاور)
\newcommand{\coverPage}{\begin{titlepage}
%\topmargin=-30pt
% \vspace{-10mm}
% دستورات دوآرمه
\begin{latin}
	\centering{
	\includegraphics[height=3.5cm]{logo-per}\par
	\begin{persian}
		% {\normalsize \bf \@university \par}
		% \vspace{-10mm}
		% {\normalsize \bf \@college \par}
		% {\large\bfseries\@faculty \par}
		{\large\bfseries\@department \par}
	\end{persian}
	}
\end{latin}
% دستورات تک‌آرمه
%\centerline{{\includegraphics[width=5cm]{logo}}}
%\centerline{\bf \@university}
%\centerline{\large\bfseries\@faculty}
% بعد از آرم‌ها
\vspace{-10mm}
\centering
\if@bscthesis 
	{\large\bfseries{پروژهٔ کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		گرایش \@field
	\fi
	}
\else
	{\large\bfseries \@projectLabel\
	\@degree{} 
	}
	% {\large\bfseries{در رشتهٔ \@subject}}
	% \vskip .2cm
	% \centerline{\large \bfseries%
	% 	گرایش \@field}
\fi	
% \vskip 1cm
\par
\vskip 1.5cm
{\huge\titlefont\bfseries \@title}\par
\vskip 1.5cm
{\Large\bfseries{\@name\ \ \@surname}}
\par
\vskip 1cm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}


\par
\vskip 6mm
%\vfill
{\large \@thesisdate}
%\vfill
\end{titlepage}%
} % end of coverPage
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\besmPage}{
%% بسم الله الرحمن الرحیم
\cleardoublepage
\thispagestyle{empty}
\hfill
\begin{center}
\includegraphics[width=10cm]{img/besm}
\end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% فرم داخلی جلد به فارسی (دارای استاد مشاور)
\newcommand{\titlePage}{\begin{titlepage}
%\topmargin=-30pt
% \vspace{-10mm}
% دستورات دوآرمه
\begin{latin}
	\centering{
		\includegraphics[height=3.5cm]{logo-per}
		\begin{persian}
			% {\normalsize \bf \@university \par}
			% {\normalsize \bf \@college \\}
			{\large\bfseries\@faculty \par}
			% {\large\bfseries\@department}
		\end{persian}
	}
\end{latin}
% دستورات تک‌آرمه
%\centerline{{\includegraphics[width=5cm]{logo}}}
%\centerline{\bf \@university}
%\centerline{\large\bfseries\@faculty}
% بعد از آرم‌ها
\centering
\vskip 5mm
\if@bscthesis 
	{\large\bfseries{پروژهٔ کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		گرایش \@field
	\fi
	}
\else
	% {\large\bfseries \@projectLabel{} \writtenfor
	% \@degree{} 
	% }
	% {\large\bfseries{در رشتهٔ \@subject}}
	% \vskip .2cm
	\centerline{\large \bfseries%
		گرایش \@field}
\fi	
\vskip 1.5cm
{\huge\titlefont\bfseries \@title}\par
\vskip 1cm
\par
{\Large\bfseries{\@name\ \ \@surname}}
\par
\vskip 15mm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\par\large
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
استاد مشاور
{\Large\bfseries\par
\@firstadvisor}
\else

\large
استادان مشاور
\par
{\Large\bfseries\@firstadvisor{} و \@secondadvisor}
\fi\fi}

\par
\vskip 6mm
%\vfill
{\large \@thesisdate}
%\vfill
\end{titlepage}%
} % end of titlePage
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\titlepage{\if@RTL\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup}

\def\signature{\vspace{1cm}
\begin{flushleft}
{%\nastaliq \scriptsize 
\@name\ \@surname \\
\@thesisdate}
\end{flushleft}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% تاییدیه هیات داوران
%% تاییدیه هیات داوران
\newcommand{\davaranPage}{%
\cleardoublepage
\thispagestyle{empty}


% ===== Header =====
\noindent
\begin{minipage}[t]{0.25\textwidth}
\raggedleft
\includegraphics[height=1.6cm]{logo-per}
\end{minipage}
\begin{minipage}[t]{0.5\textwidth}
\centering
{\normalsize\bfseries بسمه تعالی\par}
\end{minipage}%
\begin{minipage}[t]{0.25\textwidth}
\raggedright
{\footnotesize شماره: \@defenseno\par}
{\footnotesize تاریخ: \@defensedate\par}
\end{minipage}%

\vspace{6mm}

\begin{center}
{\large\bfseries صورتجلسه دفاع از پایان‌نامه کارشناسی ارشد\par}
\end{center}

\vspace{4mm}

% ---- متن معرفی جلسه ----
\noindent
جلسه دفاع از پایان‌نامه کارشناسی ارشد آقای/خانم
\textbf{\@name\ \@surname}
دارندهٔ شماره دانشجویی
\textbf{\@studentID}
در رشتهٔ
\textbf{\@subject}
– گرایش
\textbf{\@field}
با عنوان:
\textbf{«\@title»}
در ساعت
\textbf{\@defensetime}،
روز
\textbf{\@defenseday}،
مورخ
\textbf{\@defensedate}
در محل
\textbf{\@defenselocation}
تشکیل شد.
هیأت داوران پس از بررسی، نتیجه را به شرح زیر اعلام می‌دارند:\par

\vspace{2mm}

پایان‌نامه در وضع فعلی با اصلاحات جزئی و نمره
\textbf{\@finalgrade}
با امتیاز
\textbf{عالی}
پذیرفته شد.

\vspace{2mm}

% ---- جدول داوران (ضخیم‌تر + تراز درست + راست‌به‌چپ) ----
\renewcommand{\arraystretch}{1.25}
\setlength{\tabcolsep}{7pt}
\setlength{\arrayrulewidth}{1.2pt} % stronger borders (all lines)

% Fixed row height similar to form
\def\RowH{\rule{0pt}{15mm}}
\def\sigbox{\RowH}

% Role + Name (two lines, right-aligned, safe)
\def\RoleName##1##2{\shortstack[r]{##1\\##2}}

% Row helper: names | rank | spec | affil | sig
\def\davrow##1##2##3##4##5{%
  ##1 & ##2 & ##3 & ##4 & ##5 \\ \hline
}

\noindent\makebox[\textwidth][c]{%
\begin{tabularx}{1.08\textwidth}{|%
  >{\raggedright\arraybackslash}X|%
  >{\centering\arraybackslash}p{0.17\textwidth}|%
  >{\centering\arraybackslash}p{0.20\textwidth}|%
  >{\centering\arraybackslash}p{0.20\textwidth}|%
  >{\centering\arraybackslash}p{0.12\textwidth}|}
\hline
{\bfseries اعضای هیأت داوران} &
{\bfseries \shortstack{مرتبه\\دانشگاهی}} &
{\bfseries تخصص} &
{\bfseries \shortstack{محل کار عضو\\هیأت داوران}} &
{\bfseries امضا} \\
\hline

% ---------- Supervisor 1 (always) ----------
\davrow{%
  \RoleName{استاد راهنما}{\safeprint{\@firstsupervisor}}%
}{%
  \safeprint{\@firstsupervisorrank}\RowH
}{%
  \safeprint{\@firstsupervisorspec}\RowH
}{%
  \safeprint{\@firstsupervisoraffil}\RowH
}{%
  \sigbox
}

% ---------- Supervisor 2 (optional) ----------
\ifx\@secondsupervisor\empty\else
\davrow{%
  \RoleName{استاد راهنما}{\safeprint{\@secondsupervisor}}%
}{%
  \safeprint{\@secondsupervisorrank}\RowH
}{%
  \safeprint{\@secondsupervisorspec}\RowH
}{%
  \safeprint{\@secondsupervisoraffil}\RowH
}{%
  \sigbox
}
\fi

% ---------- Advisor 1 (optional) ----------
\ifx\@firstadvisor\empty\else
\davrow{%
  \RoleName{استاد مشاور}{\safeprint{\@firstadvisor}}%
}{%
  \safeprint{\@firstadvisorrank}\RowH
}{%
  \safeprint{\@firstadvisorspec}\RowH
}{%
  \safeprint{\@firstadvisoraffil}\RowH
}{%
  \sigbox
}
\fi

% ---------- Advisor 2 (optional) ----------
\ifx\@secondadvisor\empty\else
\davrow{%
  \RoleName{استاد مشاور}{\safeprint{\@secondadvisor}}%
}{%
  \safeprint{\@secondadvisorrank}\RowH
}{%
  \safeprint{\@secondadvisorspec}\RowH
}{%
  \safeprint{\@secondadvisoraffil}\RowH
}{%
  \sigbox
}
\fi

% ---------- Internal judge (optional) ----------
\ifx\@internaljudge\empty\else
\davrow{%
  \RoleName{داور داخلی}{\safeprint{\@internaljudge}}%
}{%
  \safeprint{\@internaljudgerank}\RowH
}{%
  \safeprint{\@internaljudgespec}\RowH
}{%
  \safeprint{\@internaljudgeaffil}\RowH
}{%
  \sigbox
}
\fi

% ---------- External judge (optional) ----------
\ifx\@externaljudge\empty\else
\davrow{%
  \RoleName{داور خارجی}{\safeprint{\@externaljudge}}%
}{%
  \safeprint{\@externaljudgerank}\RowH
}{%
  \safeprint{\@externaljudgespec}\RowH
}{%
  \ifx\@externaljudgeaffil\empty
    \safeprint{\@externaljudgeuniversity}\RowH
  \else
    \safeprint{\@externaljudgeaffil}\RowH
  \fi
}{%
  \sigbox
}
\fi

\end{tabularx}%
} % end makebox

% restore default for rest of document
\setlength{\arrayrulewidth}{0.4pt}



% ---- جدول نماینده تحصیلات تکمیلی (مطابق فرم: راست به چپ) ----
\vspace{6mm}

\setlength{\arrayrulewidth}{1.2pt}
\renewcommand{\arraystretch}{1.25}
\setlength{\tabcolsep}{7pt}

\def\RowHsmall{\rule{0pt}{14mm}}

\noindent\makebox[\textwidth][c]{%
\begin{tabularx}{1.08\textwidth}{|%
  >{\raggedright\arraybackslash}X|%
  >{\centering\arraybackslash}p{0.18\textwidth}|%
  >{\centering\arraybackslash}p{0.24\textwidth}|%
  >{\centering\arraybackslash}p{0.12\textwidth}|}
\hline
{\bfseries گروه آموزشی/پژوهشی} &
{\bfseries مرتبه دانشگاهی} &
{\bfseries نماینده تحصیلات تکمیلی} &
{\bfseries امضا} \\
\hline

% Row values (with fallbacks)
\safeprint{\@gradrepgroup}\RowHsmall &
\ifx\@gradreprank\empty
  \safeprint{\@graduatedeputyrank}\RowHsmall
\else
  \safeprint{\@gradreprank}\RowHsmall
\fi &
\ifx\@gradrepname\empty
  \safeprint{\@graduatedeputy}\RowHsmall
\else
  \safeprint{\@gradrepname}\RowHsmall
\fi &
\rule{0pt}{14mm} \\
\hline
\end{tabularx}%
} % end makebox
}% end davaranPage
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% تأییدیه‌ی صحت و اصالت نتایج
\newcommand{\esalatPage}{
\cleardoublepage
\thispagestyle{empty}
\begin{center}
{\Large \titlefont\bfseries
تعهدنامهٔ اصالت اثر\\
}
\vspace{.5cm}
باسمه تعالی 
\vspace{.5cm}
\end{center}
\setlength{\baselineskip}{9mm}

اینجانب 
\@name \ \@surname \
تأیید می‌کنم که مطالب مندرج در این \@projectLabel{} حاصل کار پژوهشی اینجانب است و به دستاوردهای پژوهشی دیگران که در این نوشته از آن‌ها استفاده شده است مطابق مقررات ارجاع گردیده است. این \@projectLabel{} قبلاً برای احراز هیچ مدرک هم‌سطح یا بالاتری ارائه نشده است.

\vspace{1cm}
\begin{center}
\begin{tabular}{lr}
نام و نام خانوادگی دانشجو:   & 	\@name{} \@surname \\
 تاریخ و امضای دانشجو: & \\
\end{tabular}
\end{center}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% مجوز بهره‌برداری از پایان‌نامه
\newcommand{\mojavezPage}
{
\cleardoublepage
\thispagestyle{empty}
\ \vfill
\vspace{-12cm}
\tikzstyle{tmpvip}=%
[ultra thick,rectangle,draw=black!72,rounded corners=2mm,%
inner xsep=-1.3cm,inner ysep=0.4cm]
\begin{center}
\begin{tikzpicture}
\node[tmpvip](mainbox){%
\begin{minipage}{0.7\textwidth}
\begin{persian}
\begin{center}

\textbf{کلیهٔ حقوق مادی  و معنوی این اثر}
 
\textbf{متعلّق به دانشگاه تهران است.}

\end{center}
\end{persian}
\end{minipage}};
%\node[viptitle] at (mainbox.west){\ding{'153}};
\end{tikzpicture}
\end{center}
\ \vfill
}

% \def\frame{\newpage
% \thispagestyle{empty}
% \begin{framed}\thispagestyle{empty}}
% \def\endframe{\thispagestyle{empty}\end{framed}
% \thispagestyle{empty}
% \newpage
% }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% بخش تقدیم
%% پایان‌نامه خود را تقدیم کنید! %%
\newcommand{\taghdimPage}
{
\ifx\@dedication\undefined%
    \relax
\else
    \cleardoublepage
    \thispagestyle{empty}
    %\vspace{-40mm}
    \@dedication
\fi
}

%% قدردانی (فارسی)
\newcommand{\ghadrdaniPage}
{
\ifx\@acknowledgement\undefined%
	\relax
\else   
	\cleardoublepage
	\thispagestyle{empty}
	\centerline{\Large \bfseries قدردانی}
	\vspace{1cm}
	\par\noindent
	\@acknowledgement
% با استفاده از دستور زیر، امضای شما، به طور خودکار، درج می‌شود.
	\signature 
\fi
}

%% چکیده فارسی
\newcommand\abstractPage{
	\cleardoublepage
	\thispagestyle{empty}
	\section*{چکیده}
	% \addcontentsline{toc}{section}{چکیده}
	\@fa-abstract
	\par\noindent
	\paragraph{واژگان کلیدی}
	\@keywords
}

\def\latinabstract{
%% Latin abstract Page
\cleardoublepage\newpage
\thispagestyle{empty}
~
\newpage
\thispagestyle{empty}
\section*{Abstract}
% \addcontentsline{toc}{section}{چکیده}
\@en-abstract
\par
\noindent
\paragraph{Keywords}
\@latinkeywords
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\UniversitySplit#1 of #2\relax{%
  \begingroup
    \setlength{\parskip}{0pt}%
    \setlength{\baselineskip}{14pt}% فاصله ثابت بین خطوط
    \noindent #1\par
    {\normalfont of}\par
    #2\par
  \endgroup
}

% Latin Cover Page
\newcommand{\latinCoverPage}{%
%% Latin title page
\clearpage
\thispagestyle{empty}
~
\begin{titlepage}
% \vspace{-15mm}
%% Double logo commands
\begin{latin}

	\centering{
		\includegraphics[height=2.5cm]{logo-en}\par
	
		{\bfseries
				\expandafter\UniversitySplit\@latinuniversity\relax
			}
		\vskip 5mm
		% {\normalsize \bf \@latincollege \\}
		{\large\bfseries\@latinfaculty \par}
		% {\large\bfseries\@latindepartment \\}
	}
\end{latin}
%% Single logo commands
%\centerline{{\includegraphics[width=5cm]{logo-en}}}
%\centerline{\bf \@latinuniversity}
%\centerline{\large\bfseries\@latinfaculty}
%% After logos
\vskip 10mm
\centering
{
\large
\if@bscthesis 
    Bachelor of Science Thesis
	in  \@latinsubject 
\else
	\par
	A thesis submitted in Partial fulfillment of the\\
	requirements for the degree of
	\if@mscthesis
	 Master of Science
	\else
	 Doctor of Philosophy
	\fi
	\\in  \@latinsubject{} - \@latinfield{}
	%\baselineskip=.750cm
	%\addtolength{\baselineskip}{-5mm}
\fi
}
\vskip 1.5cm
{%\latintitlefont 
\Huge\latintitlefont\bfseries
\@latintitle}
%\baselineskip=.750cm \par
\vskip 15mm
{\large %\supervisorfont
\rm \Large\bfseries \@latinname \; \@latinsurname}\par

\vskip 15mm

\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor:
{\Large\bfseries\par
\@firstlatinsupervisor}
\else
\large
Supervisors:
\par
{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par
\large
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor:
{\Large\bfseries\par
\@firstlatinadvisor}
\else

\large
Advisors:
\par
{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\vskip 5mm

\par
\vskip 1cm

{\@latinthesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}
}

%% Latin Abstract and Title pages

\font\supervisorfont=cmbxti10

\newcommand{\latinTitlePage}{%
%% Latin title page
\clearpage
\thispagestyle{empty}
~
\begin{titlepage}
% \vspace{-10mm}
%% Double logo commands
\begin{latin}
	\centering{
	\includegraphics[height=2.5cm]{logo-en} \par
	{\bfseries
			\expandafter\UniversitySplit\@latinuniversity\relax
	}
	\vskip 5mm
	% {\normalsize \bf \@latincollege \\}
	% {\large\bfseries\@latinfaculty \\}
	{\large\bfseries\@latindepartment \par}
	\large
	\bfseries
	\if@bscthesis 
		Bachelor of Science Thesis
		in  \@latinsubject 
	\else
		% A Thesis submitted to the Graduate Studies Office
		% \\In partial fulfillment of the requirements for
		% \\The degree of 
		\if@mscthesis
		\large\bfseries Specialization: \@latinfield \par
		%  Master of Science
		% \else
		%  Doctor of Philosophy
		% \fi
		% \\in  \@latinsubject{} - \@latinfield{}
		%\baselineskip=.750cm
		%\addtolength{\baselineskip}{-5mm}
	\fi
	}
\end{latin}
%% Single logo commands
%\centerline{{\includegraphics[width=5cm]{logo-en}}}
%\centerline{\bf \@latinuniversity}
%\centerline{\large\bfseries\@latinfaculty}
%% After logos
\centering

\vskip 1.5cm
{%\latintitlefont 
\Huge\latintitlefont\bfseries
\@latintitle}
\vskip 15mm
{\large %\supervisorfont
\rm \Large\bfseries \@latinname \; \@latinsurname}\par

\vskip 15mm

\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor:
{\Large\bfseries\par
\@firstlatinsupervisor}
\else
\large
Supervisors:
\par
{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\par
\large
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor:
{\Large\bfseries\par
\@firstlatinadvisor}
\else

\large
Advisors:
\par
{\Large\bfseries\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi}
\vskip 5mm

\par
\vskip 1cm

{\@latinthesisdate}
\par
\vskip 1cm

%
\end{titlepage}
}

\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجهٔ }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\AtBeginDocument{
\makeatletter
% تعیین مشخصات فایل PDF
\hypersetup{
pdftitle={\@latintitle},
pdfauthor={\@latinname \@latinsurname},
pdfsubject={Thesis in \@latinsubject},
pdfkeywords={\@latinkeywords},
pdfdirection={R2L}
}
\makeatother
}

%%
%% Author: Sina Momken
%%
%% Base author: M.Amintoosi
%% 
%% Copyright © 2019-     by Hadi Safari (tehran-thesis)
%% Copyright © 2017-     by Sina Momken (tehran-thesis)
%% Copyright © 2012-2012 by Mahmood Amintoosi (IUST-Thesis)
%% Copyright © 2011-2012 by Vahid Damanafshan (Tabriz_thesis)
%% Copyright © 2008-2011 by Vafa Khalighi (xepersian-thesis.cls)
%% 
%% Distributable under GNU GENERAL PUBLIC LICENSE Version 3.
%% 
%% This work is "maintained" by Sina Momken & Hadi Safari.
%% 
%% Special thanks to Mahmood Amintoosi, Vahid Damanafshan and Vafa Khalighi for their invaluable work.
%%
%% End of file `guilan-thesis.cls'.
