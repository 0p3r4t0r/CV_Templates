# EasyCV
-------------------------
-------------------------

This documents is intended to be one-page, concise, and quick to fill out.  The basic layout of this document is defined by three sectors: header, sidebar, and main.

The LaTeX for these documents is intended to be accessible to those without extensive experience in LaTeX or computer programming.

### Header
-------------------------
The header sector is defined by a series of commands intended to be invoked at the beginning of the document.  The commands and their arguments are fairly self-explanatory.

    \name{First Name}{Last Name} 
    \mail{Email Address}
    \phone{Phone Number}
    \address{Street Address}
    \website{Web Url}

It is possible to nest additional commands within the arguments of the commands above.  For example, if your address is taking up too much space, you could use.

    \address{\small{Street Address}}

The graphics that accompany the commands were created with gnuplot.  In the folder easy.icons you can view the graphics and the original script used to produce them.     

### SideBar
-------------------------
The sidebar sector comprises the column on the left-hand side of the document and is defined by its own environment.

    \begin{sidebar}[Sector Title]{Font Size}
    *insert desired text here*
    \end{sidebar}

As with all LaTeX commands the argument in square brackets is optional.  If the argument is omitted the sector title defaults to Skills.  However, the font size must be specified.  Font size should be chosen so that the sidebar fills the entire length of the page.  

Within the sidebar environment you can invoke the standard section command.

    \section{Section Title}
    *insert desired text here*

### Main
-------------------------
The main sector comprises the body of the resume and is defined by its own environment.

    \begin{main}[Font Size]
    
    \section{Section Title}
    *Talk about your experience: work, education, etc*
    You can use this section to make general statements about
    your experiences if you wish.
    
    \subsection{SubSection Title}{Dates/Location of Work}
    *Specific job information*
    What were your duties, what skills have you acquired as a
    result of your work
    
    \end{main}

Specifying a font size for main is optional.  By default the fontsize is set to 10.5pt.

As with sidebar, you can invoke the standard section command in main.  You can then list specific information in subsections.

If you would like to organize your information with bullet points you can use standard LaTeX lists environments in main.  I have also created a custom environment called mainlist.

    \begin{mainlist}
    \item *work experience*
    \item *another work experience*
    \end{mainlist}

This environment features smaller bullet points and reduced list spacing, ensuring that you can fit as much information as possible on one page.


# EasyCover
-------------------------
-------------------------
This cover letter is also intended to be easy to use, and is formatted like the CV.  There are two sectors: header and a main.


### Header
-------------------------

The name command remains unchanged, but the other commands are replaced with two new ones.  As in the CV header, the commands are self-explanatory.

    \name{First Name}{Last Name}
    \from{Your Street Address}
    \to{Your Employer's Name/Address}
    
Again it is possible to nest commands within \from or \to.  In the example cover letter you can see I have used \break to place my address of multiple lines.


### Main
-------------------------
The command structure for main is identical to that above, but is not intended to include sections or subsections.  There is also an additional command \sign intended to be placed just before the end of the main sector.

    \begin{main}[Font Size]
    *insert text here*
    \sign[Closing Remark]
    \end{main}
    
The \sign command concludes your letter and automatically writes your name as it given in the \name command. 

    Closing Remark,
    
    Your Name

The argument in square brackets is optional and is set to "Thank you for considering me."

With that I conclude the documentation for these documents, and thank you for considering the easyCV for use in your job hunting.  Good luck out there!

Stay friendly,

--Operator
