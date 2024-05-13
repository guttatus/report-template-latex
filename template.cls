\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2024/05/13 report LaTeX class]

\LoadClass[UTF8,12pt]{article} % 12pt 为字号大小

\RequirePackage{amssymb,amsfonts,amsmath,amsthm}
\RequirePackage{times}
% \RequirePackage{graphicx} % 插图
% \RequirePackage{cite}
\RequirePackage{xeCJK}
\RequirePackage{placeins} % 防止浮动
\RequirePackage{enumerate}
\RequirePackage{lastpage}
\RequirePackage{makecell}
\RequirePackage{multirow}
%----------
% 插入代码的格式定义
% 参考 https://www.latexstudio.net/archives/5900.html
%----------
\RequirePackage{listings}
\lstset{
 basicstyle=\scriptsize\ttfamily,
 columns=fixed,       
 numbers=left,                                        % 在左侧显示行号
 numberstyle=\tiny\color{gray},                       % 设定行号格式
 frame=none,                                          % 不显示背景边框
 backgroundcolor=\color[RGB]{245,245,244},            % 设定背景颜色
 keywordstyle=\color[RGB]{40,40,255},                 % 设定关键字颜色
 numberstyle=\footnotesize\color{darkgray},           
 commentstyle=\it\color[RGB]{0,96,96},                % 设置代码注释的格式
 stringstyle=\rmfamily\slshape\color[RGB]{128,0,0},   % 设置字符串格式
 showstringspaces=false,                              % 不显示字符串中的空格
 language=c++,                                        % 设置语言
}
%----------
% 算法伪代码
% https://blog.csdn.net/lwb102063/article/details/53046265
%----------
\RequirePackage{algorithm}  
\RequirePackage{algpseudocode}  
\RequirePackage{amsmath}  
\renewcommand{\algorithmicrequire}{\textbf{Input:}}  % Use Input in the format of Algorithm  
\renewcommand{\algorithmicensure}{\textbf{Output:}} % Use Output in the format of Algorithm  

%----------
% 字体定义
%----------
\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
\setCJKsansfont{SimHei}
\setCJKfamilyfont{zhsong}{SimSun}
\setCJKfamilyfont{zhhei}{SimHei}
\setCJKfamilyfont{zhkai}{KaiTi}
\setCJKfamilyfont{zhfs}{FangSong}
\setCJKfamilyfont{zhli}{LiSu}
\setCJKfamilyfont{zhyou}{YouYuan}
\newcommand*{\songti}{\CJKfamily{zhsong}} % 宋体
\newcommand*{\heiti}{\CJKfamily{zhhei}}   % 黑体
\newcommand*{\kaiti}{\CJKfamily{zhkai}}  % 楷体
\newcommand*{\fangsong}{\CJKfamily{zhfs}} % 仿宋
\newcommand*{\lishu}{\CJKfamily{zhli}}    % 隶书
\newcommand*{\yuanti}{\CJKfamily{zhyou}} % 圆体

%----------
% 版面设置
%----------
%首段缩进
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}
%行距
\renewcommand{\baselinestretch}{1.25} % 1.25倍行距
%页边距
\RequirePackage[a4paper]{geometry}
\geometry{verbose,
  tmargin=2cm,% 上边距
  bmargin=2cm,% 下边距
  lmargin=2cm,% 左边距
  rmargin=2cm % 右边距
}

% ----------
% 多级标题格式在此设置
% https://zhuanlan.zhihu.com/p/32712209
% \titleformat{command}[shape]%定义标题类型和标题样式，字体
% {format}%定义标题格式:字号（大小），加粗，斜体
% {label}%定义标题的标签，即标题的标号等
% {sep}%定义标题和标号之间的水平距离
% {before-code}%定义标题前的内容
% [after-code]%定义标题后的内容
% ----------
\RequirePackage{titlesec} %自定义多级标题格式的宏包
% 三级标题
% 4
\titleformat{\section}[block]{\large \bfseries}{\arabic{section}}{1em}{}[]
% 4.1
\titleformat{\subsection}[block]{\normalsize \bfseries}{\arabic{section}.\arabic{subsection}}{1em}{}[]
% 4.1.1
\titleformat{\subsubsection}[block]{\small \mdseries}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{1em}{}[]
\titleformat{\paragraph}[block]{\footnotesize \bfseries}{[\arabic{paragraph}]}{1em}{}[]


%----------
% 其他宏包
%----------
%图形相关
\RequirePackage[x11names]{xcolor} % must before tikz, x11names defines RoyalBlue3
\RequirePackage{graphicx}
\RequirePackage{pstricks,pst-plot,pst-eps}
\RequirePackage{subfig}
\def\pgfsysdriver{pgfsys-dvipdfmx.def} % put before tikz
\RequirePackage{tikz}

%原文照排
\RequirePackage{verbatim}

%链接的格式
\RequirePackage[colorlinks,linkcolor=red]{hyperref}
%表格
\RequirePackage{tabularx}
\RequirePackage{booktabs}

% -------
% 图表标题
% -------
\RequirePackage{caption}
\captionsetup[figure]{name=图}
\captionsetup[table]{name=表}
\captionsetup[listing]{name=代码}

% ---------
% 参考文献
% ---------
\RequirePackage[english]{babel}
\addto\captionsenglish{\renewcommand{\refname}{参考文献}}
