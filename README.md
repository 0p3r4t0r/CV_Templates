# CV Templates
Here is a Latex resume template that is intended to be easy to fill out, even if you don't have very much experience with Latex.  Below I have also included a guide for writing Latex in Japanese.  I needed to be able to type a resume in Japanese, but could find no clear guides on getting latex to compile Japanese text smoothly, so I made one for myself and have left it below.

###  Trouble on macOS 
While attempting to edit my resume on macOS I ran a problem rendering Japanese with texmaker.  Specifically, when typing Japanese in the IDE environment you see a series of small rectangular boxes in place of Japanese characters.  Documents will compile fine, and if you open the .tex file with another editor (e.g. vim) the Japanese will be there.  In the end I discovered a workaround, and  I've prepared a [macOS guide](#how-to-latex-in-japanese-macos) as well.


How To LaTeX in Japanese (Ubuntu)
-------------------------
-------------------------
When I was first starting this project I had a great deal of trouble trying to get LaTeX to compile my resume in Japanese.  I run ElementaryOS which is built on Ubuntu LTS, so the guide below should work for any Ubuntu-based distributions of linux.  This guide assumes that you already have Japanese typing enabled on your system. At the end of the guide I will include an example of a LaTeX template that you can use for Japanese.   

A Step-by-Step Guide
-------------------------
1. Install Texlive and Texmaker if you haven't already.
    
        sudo-apt-get texlive texmaker

2. Now we need to install some additional packages to support Japanese (cjk stands for ChineseJapansesKorean). 

	sudo apt-get install texlive-lang-cjk

3. Open Texmaker, either by searching for it in applications, or by typing texmaker into your terminal.  On the toolbar at the top click the drop-down menu next to where it says Quick Build and select XeLaTex as in the picture below.  Now you're ready to write and compile a document.

	![Select XeTex](./other/JPLatexPics/Ubuntu/JPLatex3.png)

4. First, we'll need to see what font styles are available on your system. 

        fc-list :lang=ja

	The output should look something like this.

	![fc-list output](./other/JPLatexPics/Ubuntu/JPLatex4.png) 

	What you see is a list of long paths with .ttf files at the end.  These files contain the fonts you can use.

5.  In the preamble we first need to tell LaTex that we want to use our own font, and then specify one of the fonts listed in the output of the previous command. This is accomplished by the first two lines below (I just picked the first font listed in the picture above).  The third line is used to handle line breaks and document structure.  Because Japanese has no spaces, LaTex has trouble formatting the document otherwise. The last line is purely optional, I prefer to have some extra spacing between my paragraphs in Japanese, so it tells Latex to skip some space.

        \usepackage{fontspec} 
        \setmainfont{ipam.ttf}
        \XeTeXlinebreaklocale "jp"
        \setlength{\parskip}{2ex}"

6. As promised, an example of a LaTeX template in Japanese.  Remember to compile with XeTeX.  You can view the document in Texmaker by clicking the view pdf button immediately to the right of XeLaTeX in the toolbar.

        \documentclass[12pt]{book}
        \usepackage{fontspec} 
        \setmainfont{fonts-japanese-mincho.ttf}
        \XeTeXlinebreaklocale "jp"
        \setlength{\parskip}{2ex}
        
        \begin{document}
        何かを書きなさい。
        \end{document}


[Back to top](#cv-templates)



How To LaTeX in Japanese (macOS)
-------------------------
-------------------------
At the time writing I am running macOS Sierra Version 10.12.2 and am using the MacTex-2016 distribution.  My Texmaker is version 4.5.  This is less a guide on how to type Japanese and more a solution a problem with Texmaker.  I couldn't find a solution online, but after a couple days of frustration I resolved the issue and created the guide you see below.

A Step-by-Step Guide
-------------------------

1.  There are many different ways you could go about compiling LaTeX documents in Japanese.  For the sake of this example I'll be using PDFLaTeX because the code is simple and fairly easy to understand.  So before you try out the code, go ahead and switch your compiler to PDFLaTeX.

![macOS PDFLaTeX](./other/JPLatexPics/macOS/pdfLaTeXmode.png)

2.  Now let me show you the exact problem I was having.  I realized that there are two potential ways the problem may present itself.  The first is as described above.  In place of Japanese pictures you see little boxes.

![macOS boxes1](./other/JPLatexPics/macOS/pdfLaTeXjp1.png) 

Alternatively, you could have Texmaker rendering the Kanji, but still have boxes in place of the Hiragana and Katakana.  Like this.

![macOS boxes2](./other/JPLatexPics/macOS/pdfLaTeXjp2.png)

3.  The strange thing is, if we go to compile our document, we will get the proper output (even with the boxes).

![macOS LaTeX box compile](./other/JPLatexPics/macOS/LaTeXoutput.png)

This means that Texmakers can comprehend, the input you're giving it.  However, it doesn't have the right settings to actually show that input in the editor.  This happens because ** the font on the editor can't handle Japanese symbols.  We need to change the editor font. **

4.  Open Texmaker preferences (keyboard shorcut should be ⌘,).  Then select "Editor" from the menu on the left.  Look for the section labeled "Editor Font Family" and try selecting different fonts until you find one that suits your liking and that can render all three of the Japanese alphabets.

![macOS LaTeX box compile](./other/JPLatexPics/macOS/EditorFont.png)

5.  You should now be able to see the Japanese as you type it into the editor!

![macOS LaTeX box compile](./other/JPLatexPics/macOS/pdfLaTeXjp3.png)     
  

[Back to top](#cv-templates)

