%%
%% This is file `chdpaper.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% chdpaper.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2013-2016 by Tsingber Lee <xiaolee2520@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
%% Any Suggestions : Tsingber Lee <xiaolee2520@gmail.com>
%% Thanks LiuBenYuan <liubenyuan@gmail.com> for the NUDT paper!
%% 
\NeedsTeXFormat{LaTeX2e}[01/31/2013]
\ProvidesClass{chdpaper}[06/28/2016 1.2.1 CHDpaper template]
\newif\ifisbachelor\isbachelortrue
\newif\ifisttf\isttftrue
\newif\ifisbback\isbbackfalse
\newif\ifCAST@typeinfo \CAST@typeinfofalse
\DeclareOption{showtypeinfo}{\CAST@typeinfotrue}
\DeclareOption{bachelor}{\isbachelortrue}
\newif\ifisdesign\isdesigntrue
\DeclareOption{thesis}{\isdesignfalse}
\DeclareOption{doctor}{\isbachelorfalse}
\newif\ifisanon\isanonfalse
\DeclareOption{anon}{\isanontrue}
\newif\ifisdraftt\isdrafttfalse
\DeclareOption{draftt}{\isdraftttrue}
\newif\ifistwoside\istwosidefalse
\DeclareOption{twoside}{\istwosidetrue}
\DeclareOption{ttf}{\isttftrue}
\DeclareOption{otf}{\isttffalse}
\newif\ifisvista\isvistafalse
\DeclareOption{vista}{\isvistatrue}
\DeclareOption*{\PackageWarning{chdpaper}{Unknown Option '\CurrentOption'}}
\ProcessOptions\relax
\RequirePackage{ifthen,calc}
\ifistwoside
  \LoadClass[a4paper,12pt,openright,twoside]{book}
\else
  \LoadClass[a4paper,12pt,openany,oneside]{book}%此处oneside必须有
\fi
\RequirePackage[includeheadfoot]{geometry}
\RequirePackage[center,pagestyles]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{readprov}%获取文件版本信息
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[config]{subfig}
\RequirePackage{pdfpages}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{extarrows}%可以加上下标的长等号，箭头
%%%%% 表格相关 %%%%%%
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage{rotating}
\RequirePackage{slashbox}
\RequirePackage{diagbox}
\RequirePackage{mathrsfs}%花体数学字体
\RequirePackage[neverdecrease]{paralist}
\RequirePackage{xcolor}
\RequirePackage{amsmath,amssymb}
%\RequirePackage{txfonts}
\RequirePackage[Symbolsmallscale]{upgreek}
\RequirePackage{bm}
\RequirePackage[T1]{fontenc}
\RequirePackage{pageslts}%计算总页数，设置页脚
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{nicefrac}
\RequirePackage[SlantFont,CJKchecksingle,no-math]{xeCJK}
\xeCJKsetslantfactor{0.17}
\RequirePackage{zhnumber}
\RequirePackage{indentfirst}
%修改正文参考文献引用中括号[]为中文的【】,并在natbib.sty中新定义其为csquare，并保存其为UTF-8格式
\RequirePackage[numbers,sort&compress,square]{natbib}%
\RequirePackage[bookmarksnumbered=true,bookmarksopenlevel=2,pdfborder=0 0 1]{hyperref}
\defaultfontfeatures{Mapping=tex-text}
\xeCJKsetcharclass{"0}{"2E7F}{0}
\xeCJKsetcharclass{"2E80}{"FFFF}{1}
\newcommand\installTTF{%
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \setmonofont{Courier New}
  \ifisvista
    \setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}%设置缺省中文字体
    \setCJKmonofont{KaiTi} % Pluto use LiSu Thu use Kaiti, orig is SimSun%设置等宽中文字体，令其与英文对齐
    \setCJKfamilyfont{fs}{FangSong}
    \setCJKfamilyfont{kai}{KaiTi}
    \setCJKfamilyfont{chdname}{chdname.otf} % 长大 logo 字体
  \else
    \setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi_GB2312}]{SimSun}
    \setCJKmonofont{KaiTi_GB2312} % Pluto use LiSu Thu use Kaiti, orig is SimSun
    \setCJKfamilyfont{fs}{FangSong_GB2312}
    \setCJKfamilyfont{kai}{KaiTi_GB2312}
  \fi
  \setCJKsansfont{SimHei}
  \setCJKfamilyfont{song}{SimSun}
  \setCJKfamilyfont{hei}{SimHei}
  \setCJKfamilyfont{li}{LiSu}
  \setCJKfamilyfont{you}{YouYuan}
  \setCJKfamilyfont{chdname}{chdname.otf} % 长大 logo 字体
}
\newcommand\installOTF{%
\setmainfont{Times New Roman} % could be changed to "TeXGyrePagella"or "Times New Roman PS Std"
  \setsansfont{Arial}
  \setmonofont{Consolas}
  \setCJKmainfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
  \setCJKsansfont{Adobe Heiti Std}
  \setCJKmonofont{SimHei}
  \setCJKfamilyfont{song}{Adobe Song Std}
  \setCJKfamilyfont{hei}{Adobe Heiti Std}
  \setCJKfamilyfont{fs}{Adobe Fangsong Std}
  \setCJKfamilyfont{kai}{Adobe Kaiti Std}
  \setCJKfamilyfont{li}{Adobe Kaiti Std}% todo: 用隶书字体代替
  \setCJKfamilyfont{you}{Adobe Kaiti Std} % todo: 用幼圆字体代替
  
}
\setCJKfamilyfont{cusong}{STZhongsong}
\newcommand{\cusong}{\CJKfamily{cusong}} % 中宋作为加粗宋体
  \setCJKfamilyfont{chdname}{chdname.otf} % 长大 logo 字体
\ifisttf
  \installTTF
\else
  \installOTF
\fi
\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\newcommand{\li}{\CJKfamily{li}}        % 隶书
\newcommand{\you}{\CJKfamily{you}}      % 幼圆
\newcommand{\chdname}{\CJKfamily{chdname}}  % 长大 logo 字体
\def\songti{\song}
\def\fangsong{\fs}
\def\kaishu{\kai}
\def\heiti{\hei}
\def\lishu{\li}
\def\youyuan{\you}
\newlength\thu@linespace
\newcommand{\thu@choosefont}[2]{%
    \setlength{\thu@linespace}{#2*\real{#1}}%
    \fontsize{#2}{\thu@linespace}\selectfont}
\def\thu@define@fontsize#1#2{%
    \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \thu@choosefont{##1}{#2}}}
\thu@define@fontsize{chuhao}{42bp}
\thu@define@fontsize{xiaochu}{36bp}
\thu@define@fontsize{yihao}{26bp}
\thu@define@fontsize{xiaoyi}{24bp}
\thu@define@fontsize{erhao}{22bp}
\thu@define@fontsize{xiaoer}{18bp}
\thu@define@fontsize{sanhao}{16bp}
\thu@define@fontsize{xiaosan}{15bp}
\thu@define@fontsize{sihao}{14bp}
\thu@define@fontsize{banxiaosi}{13bp}
\thu@define@fontsize{xiaosi}{12bp}
\thu@define@fontsize{dawu}{11bp}
\thu@define@fontsize{wuhao}{10.5bp}
\thu@define@fontsize{xiaowu}{9bp}
\thu@define@fontsize{liuhao}{7.5bp}
\thu@define@fontsize{xiaoliu}{6.5bp}
\thu@define@fontsize{qihao}{5.5bp}
\thu@define@fontsize{bahao}{5bp}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}  
%\newcommand{\upcite}[1]{\cite{#1}} 
%\newcommand{\upcite}[1]{\hspace{-0.8ex}\textsuperscript{\cite{#1}}}  %自定义新命令\upcite, 使参考文献引用以上标出现
%\newcommand{\upcite}[1]{\hspace{-0.8ex}$^\text{\cite{#1}}$} % 上标形式引用
\newcommand{\china}{中华人民共和国}
\newcommand{\chdpaper}{%
  $\mathbb{C}$\hspace{-0.3ex}\raisebox{-0.5ex}{H}\hspace{-0.3ex}D\hspace{0.1em}%
  \textsc{$\mathbb{P}$a}$\rho\hspace{-0.6ex}\backepsilon\hspace{-0.6ex}\raisebox{-0.5ex}\circledR$
}
\def\Chdpaper{C\hspace{-0.3ex}\raisebox{-0.5ex}{H}\hspace{-0.3ex}D\hspace{0.1em}\textsc{Paper}}
\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\renewcommand\contentsname{\heiti \xiaoer 目\hspace{1em}录}
\renewcommand\listfigurename{图\hspace{1em}目\hspace{1em}录}
\renewcommand\listtablename{表\hspace{1em}目\hspace{1em}录}
\newcommand\listequationname{公式索引}
\newcommand\equationname{公式}
\renewcommand\bibname{参考文献}
\renewcommand\indexname{索引}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\appendixname{附录}

\def\CJK@today{\zhdigits{\the\year}~年~\zhdigits{\the\month}~月}
\def\en@today{\zhtoday}
\def\CJK@year{\zhdigits{\the\year}}
%\renewcommand\zhtoday{\CJK@today}
\newcommand\entoday{\en@today}
\newcommand\zhyear{\CJK@year}
\geometry{top=21mm,bottom=21.0mm,left=28mm,right=21mm}
\geometry{headheight=9mm,headsep=5mm,footskip=9mm}

\fancypagestyle{plain}{%
\fancyhf{} % 清空当前设置

% 设置页眉 (head)
\fancyhead[L]{\if@mainmatter\sanhao\ziju{6bp}\chdname 长安大学\else\@empty\fi} % 在页眉左侧显示毛笔字校名
\fancyhead[R]{\if@mainmatter\xiaowu\@title\else\@empty\fi} 
% 设置页脚 （foot）
\fancyfoot[R]{\ifisbback\xiaowu 共~\lastpageref{LastPage}~页\hspace*{9bp}第~\thepage~页\else\xiaowu \thepage \fi}
%解决在frontmatter与其它部分页脚不同的问题以及bbackmatter与其它部分页眉不同的问题
\if@mainmatter\renewcommand{\headrulewidth}{1.0pt}\else\renewcommand{\headrulewidth}{0pt}\fi % 页眉与正文之间的水平线粗细
\renewcommand{\footrulewidth}{1.0pt}% 取消页脚与正文之间的水平线粗细
}
\renewcommand\frontmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmattertrue\isbbackfalse
    \pagenumbering{Roman}
    \pagestyle{plain}}
\newcommand\midmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmattertrue\isbbackfalse
    \pagenumbering{Roman}
    \pagestyle{plain}}
\renewcommand\mainmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmattertrue\isbbacktrue
    \pagenumbering{arabic}
    \pagestyle{plain}}
\renewcommand\backmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \titleformat{\chapter}{\filcenter \heiti\sffamily \sanhao}{附录\,\arabic{chapter}\,}{1em}{}
    \titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \songti  \wuhao[1.25]}
      {附录\,\thecontentslabel\quad}{}
      {\hspace{.5em}\titlerule*[10pt]{$\cdot$}\contentspage}
    \@mainmattertrue\isbbacktrue
    \pagestyle{plain}}
\newcommand\bbackmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \titleformat{\chapter}{\filcenter \sffamily\heiti \sanhao}{附件\,\thechapter\,}{1em}{}
    \titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \songti  \wuhao[1.25]}
      {附件\,\thecontentslabel\quad}{}
      {\hspace{.5em}\titlerule*[10pt]{$\cdot$}\contentspage}
    \@mainmatterfalse\isbbacktrue
    \pagestyle{plain}}
\renewcommand\cleardoublepage{\clearpage\if@openright \ifodd\c@page\else
  \newpage{}
  \thispagestyle{empty}
  \vspace*{\fill}
  \begin{center}
  \end{center}
  \vspace*{\fill}
  \clearpage\fi\fi%
}
%%% 目录设置 %%%%%
\titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \songti \xiaosi[1.25]}
    {第\zhdigits{\thecontentslabel}章\quad}{}
    {\hspace{.5em}\titlerule*[10pt]{$\cdot$}\contentspage}
\titlecontents{section}[2em]{\songti \wuhao[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*[10pt]{$\cdot$}\contentspage}
\titlecontents{subsection}[4em]{\songti \wuhao[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*[10pt]{$\cdot$}\contentspage}
\titlecontents{figure}[0pt]{\songti \wuhao[1.25]}
    {\makebox[3.5em][l]{图~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*[10pt]{$\cdot$}\contentspage}
\titlecontents{table}[0pt]{\songti \wuhao[1.25]}
    {\makebox[3.5em][l]{表~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*[10pt]{$\cdot$}\contentspage}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\chd@chapter\@schapter}
\def\chd@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne
    \if@openright\cleardoublepage\else\clearpage\fi
    \phantomsection
    \if@mainmatter
      \refstepcounter{chapter}%
      \addcontentsline{toc}{chapter}%
        {\protect\numberline{\thechapter}#1}%
    \else
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
    \@afterheading
  \fi
}
\newcommand\cabstractname{摘~要}
\newcommand\eabstractname{ABSTRACT}
\newcommand\ckeywordsname{\noindent{关键词}}
\newcommand\ckeywords[1]{{\heiti\xiaosi \ckeywordsname: \songti\xiaosi #1}}
\newcommand\ekeywordsname{\hspace{-2.2em} KEY WORDS}
\newcommand\ekeywords[1]{{\bfseries\xiaosi \ekeywordsname:\hspace{0.5ex}}{\xiaosi  #1}}
\newenvironment{cabstract}{%
\markboth{摘~要}{摘~要}
\pdfbookmark[0]{摘~~要}{cabstract}
    \chapter*{\cabstractname}
    \xiaosi
    \@afterheading}
    {\par\vspace{1em}\par}
\newenvironment{eabstract}{%
\markboth{ABSTRACT}{ABSTRACT}
\pdfbookmark[0]{ABSTRACT}{eabstract}
    \chapter*{\textsf{\eabstractname}}
    \xiaosi
    \@afterheading}
    {\par\vspace{1em}\par}
\newcommand{\sectionbreak}{%
\addpenalty{-300}%
\vspace*{0pt}%
}
\setlength{\topskip}{0pt}
\setcounter{secnumdepth}{3}
%……………………………………………………………………………………%
%%定义节格式
%%\titleformat{章节命令}[形状]{格式}{标题序号}{序号与标题间距}{标题前命令}[标题后命令]
%%\titlespacing*{章节命令}{左边距}{上文距}{下文距}[右边距]
%\titleformat{\section}[hang]{\normalfont\LARGE\bf\center}{第~\thesection~章}{1em}{}
%\titlespacing{\section}{0pt}{2ex}{2ex}

%%定义目录格式
%\renewcommand{\contentsname}{目\qquad录}
%%\titlecontents{章节名称}[左端距离]{标题字体、与上文间距等}{标题序号}{空}{引导符和页码}[与下文间距]
%\titlecontents{section}[0em]{\bf\addvspace{1pt}}{\small 第\thecontentslabel 章\quad}{\small} {\titlerule*[1pc]{.}\contentspage}[\addvspace{1pt}]
%\titlecontents{subsection}[1.5em]{\addvspace{.3pt}}{\small\thecontentslabel\quad} {\small}{\titlerule*[1pc]{.}\contentspage}[\addvspace{.3pt}]
%……………………………………………………………………………………%
\titleformat{\chapter}{\filcenter \heiti\sffamily\sanhao[2]}{第\zhdigits{\thechapter}章\,}{1em}{}
\titleformat{\section}{\heiti\sffamily\sihao[1.25]}{\thesection}{1em}{}
\titleformat{\subsection}{\heiti\sffamily\xiaosi[1.25]}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\heiti\sffamily\xiaosi[1.25]}{(\arabic{shuzi}\refstepcounter{shuzi})}{0.5em}{}
\titlespacing{\chapter}{0pt}{2.4ex-\topskip-\heightof{A}}{2.4ex \@plus 2bp \@minus 2bp}
\titlespacing{\section}{0pt}{2ex-\heightof{a}}{2ex \@plus 2bp \@minus 2bp}
\titlespacing{\subsection}{0em}{2ex \@plus 2bp \@minus 2bp}{2ex \@plus 2bp \@minus 2bp}
\titlespacing{\subsubsection}{0em}{1ex \@plus 2bp \@minus 2bp}{0ex \@plus 2bp \@minus 2bp}
\renewcommand\normalsize{%
\@setfontsize\normalsize{10.5bp}{13.125bp}%正文1.25倍行距
\renewcommand{\baselinestretch}{1.25}%
\setlength\abovedisplayskip{10bp \@plus 1bp \@minus 1bp}%
\setlength\abovedisplayshortskip{10bp \@plus 1bp \@minus 1bp}%
\setlength\belowdisplayskip{\abovedisplayskip}%
\setlength\belowdisplayshortskip{\abovedisplayshortskip}%
}
\newlength\CJK@twochars
\def\CJK@spaceChar{\Unicode{48}{7}}
\def\CJKindent{%
  \settowidth\CJK@twochars{中国}%
  \parindent\CJK@twochars}
\AtBeginDocument{%
  \CJKindent\relax
  \checkparameter\relax
}
\setlength{\parskip}{0bp \@plus 2bp \@minus 2bp}
\newcommand*{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}}
\renewenvironment{thebibliography}[1]{%
   \chapter*{\bibname}%
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\renewcommand{\makelabel}[1]{##1\hfill}
         \settowidth\labelwidth{1.1cm}
         \setlength{\labelsep}{0.4em}
         \setlength{\itemindent}{0pt}
         \setlength{\leftmargin}{\labelwidth+\labelsep}
         \addtolength{\itemsep}{-0.7em}
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy\frenchspacing
    \clubpenalty4000%
    \widowpenalty4000%
    \interlinepenalty4000%
    \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
    \endlist\frenchspacing}
\setlength{\floatsep}{12bp \@plus 2bp \@minus 2bp}
\setlength{\intextsep}{12bp \@plus 2bp \@minus 2bp}
\setlength{\textfloatsep}{12bp \@plus 2bp \@minus 2bp}
\setlength{\@fptop}{0bp \@plus4bp}
\setlength{\@fpsep}{12bp \@plus4bp}
\setlength{\@fpbot}{0bp \@plus4bp}
\renewcommand{\textfraction}{0.01}
\renewcommand{\topfraction}{0.99}
\renewcommand{\bottomfraction}{0.99}
\renewcommand{\floatpagefraction}{0.90}
\clubpenalty            =   10000
\widowpenalty           =   10000
\displaywidowpenalty    =   10000
\let\old@tabular\@tabular
\def\thu@tabular{\wuhao[1.25]\old@tabular}
\DeclareCaptionLabelFormat{thu}{{\wuhao[1.25]\heiti #1~\sffamily #2}}
\DeclareCaptionLabelSeparator{thu}{\hspace{1em}}
\DeclareCaptionFont{thu}{\heiti\sffamily\wuhao[1.25]}
\captionsetup{labelformat=thu,labelsep=thu,font=thu}
\captionsetup[table]{position=top,belowskip=0bp \@plus 2bp \@minus 2bp,aboveskip=6bp \@plus 2bp \@minus 2bp}%
\captionsetup[figure]{position=bottom,belowskip=-3bp \@plus 2bp \@minus 2bp,aboveskip=6bp \@plus 2bp \@minus 2bp}%
\captionsetup[subfloat]
{labelformat=simple,font=thu,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}

\renewcommand{\theequation}{\thechapter-\arabic{equation}}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}

\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\thu@LT@array\LT@array
\def\LT@array{\thu@LT@array}
\newenvironment{conclusion}{%
    \chapter*{结论以及展望}%
    \addcontentsline{toc}{chapter}{结论以及展望}%
    \ifisanon\color{white}\else\relax\fi%
    \xiaosi%
    \@afterheading}
    {\par\vspace{2em}\par}
\renewenvironment{thanks}{%
    \chapter*{致\hspace{1em}谢}%
    \addcontentsline{toc}{chapter}{致谢}%
    \ifisanon\color{white}\else\relax\fi%
    \xiaosi%
    \@afterheading}
    {\par\vspace{2em}\par}
\newenvironment{annexS}{%
\chapter*{附件}%
    \addcontentsline{toc}{chapter}{\songti 附件}%
    \ifisanon\color{white}\else\relax\fi%
    \xiaosi%
    \@afterheading}
    {\par\vspace{2em}\par}
%定理字样使用黑体，正文使用宋体，冒号隔开
\renewtheoremstyle{nonumberplain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ \theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ (##3)\theorem@separator]}
\theoremstyle{nonumberplain}
\theorembodyfont{\song\xiaosi[1.3]}
\theoremheaderfont{\hei\xiaosi[1.3]}
\theoremsymbol{\ensuremath{\blacksquare}}
\theoremseparator{:\,}
\newtheorem{proof}{证明}[chapter]

\renewtheoremstyle{plain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\theorem@separator]}%设置定理环境的缩进
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\ (##3)\theorem@separator]}
\theoremstyle{plain}
\theorembodyfont{\song\xiaosi[1.3]}
\theoremheaderfont{\hei\sffamily\xiaosi[1.3]}
\theoremsymbol{\ensuremath{\blacksquare}}

\theoremsymbol{}
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]
\newtheorem{character}{性质}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{conjecture}{猜想}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{exercise}{练习}[section]
\newtheorem{example}{例}[section]
\newtheorem{problem}{问题}[section]
\newtheorem{remark}{注释}[section]
\def\classification#1{\def\@classification{#1}} % 中图分类号
\def\serialno#1{\def\@serialno{#1}} % 学号
\def\UDC#1{\def\@UDC{#1}} % UDC号
\def\confidentiality#1{\def\@confidentiality{#1}} % 密级
\def\title#1#2{\def\@titlemark{#1}\def\@title{#2}} % 中文题目
%\def\titlemark#1{\def\@titlemark{#1}} % 中文题目书签
\newtoks\displaytitle

\def\tbmonth#1{\def\@tbmonth{#1}}
\def\tbday#1{\def\@tbday{#1}}
\def\temonth#1{\def\@temonth{#1}}
\def\teday#1{\def\@teday{#1}}
\def\totalweeks#1{\def\@totalweeks{#1}}

\def\author#1{\def\@author{#1}}
\def\zhdate#1{\def\@zhdate{#1}} % 中文日期
\def\school#1{\def\@school{#1}}% 学院
\def\Class#1{\def\@Class{#1}}% 班级
\def\subject#1{\def\@subject{#1}} % 中文学科
\def\researchfield#1{\def\@researchfield{#1}} % 中文研究方向
\def\supervisor#1{\def\@supervisor{#1}} % 导师
\def\cosupervisor#1{\def\@cosupervisor{#1}} % 协助指导教师
\def\papertype#1{\def\@papertype{#1}} % 工学，理学，同等学历申请工(理)学
\def\entitle#1{\def\@entitle{#1}}
\def\enauthor#1{\def\@enauthor{#1}}
\def\ensupervisor#1{\def\@ensupervisor{#1}}
\def\encosupervisor#1{\def\@encosupervisor{#1}}
\def\endate#1{\def\@endate{#1}}
\def\ensubject#1{\def\@ensubject{#1}}
\def\enpapertype#1{\def\@enpapertype{#1}} % Engineering, Science
\def\optionpaperclass#1{\def\@optionpaperclass{#1}} % paperclass
\def\optionpaperclassen#1{\def\@optionpaperclassen{#1}}
\def\optionas#1{\def\@optionas{#1}} % Advisor OR Supervisor
\ifisbachelor
  \optionpaperclass{硕士}
  \optionpaperclassen{bachelor}
  \optionas{Advisor}
\else
  \optionpaperclass{博士}
  \optionpaperclassen{Doctor}
  \optionas{Supervisor}
\fi
%%设置水印
\ifisdraftt
 \RequirePackage[all]{background}
\fi

%这个包包可以设置背景的内容，大小，颜色，位置等等。可以参看：

\newcommand{\checkparameter}
{
  \ifthenelse{\isundefined{\@cosupervisor}}{\cosupervisor{}}{}
  \ifthenelse{\isundefined{\@encosupervisor}}{\encosupervisor{}}{}
}
\def\maketitle{%
  \def\entry##1##2##3{%
    \multicolumn{##1}{l}{\underline{\hbox to ##2{\hfil##3\hfil}}}
    }
  \null
  \ifisanon%
  \author{}%
  \supervisor{}%
  \else\relax\fi%
  \pagenumbering{alph}% not display, for print only
%毕业设计封面
  \thispagestyle{empty}%
  \pdfbookmark[-1]{\@titlemark}{title}%此处[]中的数字代表书签深度
  \begin{center}
     \vspace*{-1.38cm}
       \includegraphics[width=2.2cm]{figures/chdblacklogo.pdf}\\
       \vspace*{3mm} %插入空白
      {\fontsize{68}{68}\chdname\ziju{13bp} 长安大学}\\
  \vspace*{1.6cm} %插入空白
  {\cusong\yihao \ziju{13bp}\zhyear\ziju{13bp}届毕业\ifisdesign 设计 \else 论文 \fi}\\%
  \vspace*{2.9cm} %插入空白
  {\heiti\xiaoer\textbf{\@title}}\\
  \end{center}%
 \vspace*{0.7cm} %从WORD中得来
  \begin{center}
    \begin{tabular}{rl}
         {\cusong\sanhao 学\hspace*{32bp}院：} & {\cusong\sanhao \@school} \\[4mm]
         {\cusong\sanhao 专\hspace*{32bp}业：} & {\cusong\sanhao \@subject} \\[4mm]
         {\cusong\sanhao 姓\hspace*{32bp}名：} & {\cusong\sanhao \@author} \\[4mm]
         {\cusong\sanhao 学\hspace*{32bp}号：} & {\cusong\sanhao \@serialno} \\[4mm]
         {\cusong\sanhao 指导教师：} & {\cusong\sanhao \@supervisor} \\[4mm]
         {\cusong\sanhao 完成时间：} & {\cusong\sanhao \@endate } 
    \end{tabular}
    \end{center}
  \vspace{2.3cm}
    \begin{tabular}{cr}
    \hspace*{8.9cm}%
     & \cusong\xiaosan\CJK@today           
    \end{tabular}
    \GetFileInfo{chdpaper.cls} % get the correct fileversion
  \hypersetup{
    pdfauthor={\@author},
    pdftitle={长安大学本科生毕业设计(论文)}, %文件标题
    pdfsubject={\@title}, %文件主题
    pdfcreator={The CHD paper class (v \fileversion~as of \filedate)} % 应用程序
  }
  \clearpage
  %----------------------版本信息页--------------------------------
  \thispagestyle{empty}%
  \ifCAST@typeinfo
    {\wuhao\heiti 图书在版编目（CIP）数据}
    
    {\wuhao 长安大学毕业设计(论文)\XeLaTeX{}模板~v\fileversion/Tsingber Lee著.---西安：长安大学\TeX{er}爱好者出版社，2016.6
    
    \bigskip
    ISBN xxx-x-xxxx-xxxx-x
        
    \bigskip
    I.长$\cdots$\hspace*{10.5bp}II.Tsingber$\cdots$\hspace*{10.5bp}III.毕业论文---模板---长安大学---本科\hspace*{10.5bp}IV.I213
    
    \bigskip
    中国版本图书馆CIP数据核字(2016)第xxxxxx号
    }
    
    \vspace*{3em}
    {\heiti\wuhao 更新：}
    {\wuhao
    \begin{compactitem}
    \item 兼容 CTeX 宏集\ v2.4.2
    \item 加入校名毛笔字体
     \item 改变图表标题字体为黑体
     \item 为任务书及开题报告加入边框
     \item 主文档thesis.tex中增加了showtypeinfo选项，用户可以方便地去掉模板信息页
     \item 英语字体只能换回Times New Roman%，本来用数学模式下解决上标问题，但是参考文献失去超链接功能，等以后解决了。如果可以不要超链接，在chdpaper.cls文件中注释掉第170行，去掉第171行注释。再在第112行换成Times New Roman PS Std字体
     \item 更新通知请关注新浪微博    ~{\footnotesize\textcolor{myellow}{\url{http://weibo.com/tsingber}}}
     \item 模板信息页自动加载作者，标题，学院
     \item 定理缩进两字
    \end{compactitem}}
  \vfill
  \begin{center}
  \begin{minipage}[t]{0.6\textwidth}
  {\wuhao\heiti 标\hspace*{21bp}题：}{\wuhao \@title}
  
  {\wuhao\heiti 作\hspace*{21bp}者：}{\wuhao \@author}
  
  {\wuhao\heiti 反馈邮箱：}{\footnotesize\textcolor{myellow}{\url{xiaolee2520@gmail.com}}}
  
{\wuhao\heiti 版\hspace*{21bp}次：}{\wuhao 2016年6月第1版\hspace*{21bp}2016年6月第1次印刷}

  {\wuhao\heiti 印\hspace*{21bp}刷：}{\wuhao 长安大学十强打印店}
  
  {\wuhao\heiti 店\hspace*{21bp}址：}{\wuhao 西安市雁塔区憋死牛胡同找不着这条街}
  
  {\wuhao\heiti 联系电话：}{\wuhao (029)8765xxxx}
  
{\wuhao\heiti 发布地点：}{\wuhao {\chdname 长安大学}$\cdot$\@school}
  
{\wuhao\heiti 邮政编码：}{\wuhao 710064}

{\wuhao\heiti 发布时间：}{\wuhao 2016年6月28日}

{\wuhao\heiti 开\hspace*{21bp}本：}{\wuhao 210$\times$297\hspace*{10.5bp}1/8}

{\wuhao\heiti 文\hspace*{5.25bp}件\hspace*{5.25bp}名：}{\wuhao thesis.pdf}

{\wuhao\heiti 排版工具：}{\wuhao {\LaTeX}~with \texttt{hyperref}}

  \end{minipage}
  \end{center}
  \fi
%%%%%%%%%%%%%%%%%%%   本科生毕业论文任务书  %%%%%%%%%%%%%%%%%%%%%%%    
\newpage
\thispagestyle{empty}%
\markboth{本科生毕业论文任务书}{本科生毕业论文任务书}
\pdfbookmark[0]{本科生毕业论文任务书}{cmission}
  \begin{center}
     \vspace*{-0.6cm}%插入空白
      \includegraphics[scale=1]{figures/tasklogo.pdf}\\
  \vspace*{1cm} %插入空白
  {\cusong\xiaosi 毕业\ifisdesign 设计任务书 \else 论文任务书 \fi}%
  \end{center}%
 \vspace*{2.5cm} %从WORD中得来
  \begin{center}
    \begin{tabular}{rl}
     {\cusong\xiaosi 课题名称：} & {\cusong\xiaosi \@title} \\[6mm]
         {\cusong\xiaosi 学\hspace*{24bp}院：} & {\cusong\xiaosi \@school} \\[6mm]
         {\cusong\xiaosi 专\hspace*{24bp}业：} & {\cusong\xiaosi \@subject} \\[6mm]
                  {\cusong\xiaosi 班\hspace*{24bp}级：} & {\cusong\xiaosi \@Class} \\[6mm]
         {\cusong\xiaosi 学生姓名：} & {\cusong\xiaosi \@author} \\[6mm]
         {\cusong\xiaosi 学\hspace*{24bp}号：} & {\cusong\xiaosi \@serialno}
    \end{tabular}
    \end{center}
  \vspace{1cm}
    \begin{tabular}{cr}
    \hspace*{3.9cm}%
     & {\cusong\xiaosi \underline{~\@tbmonth~}月\underline{~\@tbday~}日至\underline{~\@temonth~}月\underline{~\@teday~}日共\underline{~\@totalweeks~}周} 
    \end{tabular}
    \vspace{1cm}
    \begin{center}
    {\cusong\xiaosi 指导教师（签字）}\underline
{\cusong\xiaosi \hspace*{2.6cm}}\\[8mm]
{\cusong\xiaosi 教学院长（签字）}\underline
{\cusong\xiaosi \hspace*{2.6cm}}
    \end{center}
    \vspace{1cm}
    \begin{tabular}{cr}
    \hspace*{7.1cm}%
     & {\cusong\xiaosi \hspace*{0.9cm}年\hspace*{0.9cm}月\hspace*{0.9cm}日}     
    \end{tabular}
\newpage
\input{data/task}%载入任务书及开题报告，若觉得这个不方便操作，可以注释掉这行，在word中填好内容，转为pdf，在thesis.tex中用\includepdf载入
\newpage
%\renewcommand{\CJKglue}{\hskip 1.6pt plus 0.08\baselineskip} % 加大字间距，使正文每行33~34个字

  \normalsize % normal, 正文开始
  \def\@tabular{\wuhao[1.25]\old@tabular} % 之后表格字体使用5号黑体
  \cleardoublepage%
  \newpage
  \thispagestyle{empty}

} % QED
\endinput
%%
%% End of file `chdpaper.cls'.
