{\rtf1\ansi\deff0{\fonttbl{\f0\fnil Courier New;}{\f1\fnil\fcharset0 Courier New;}}
{\colortbl ;\red255\green255\blue0;}
\viewkind4\uc1\pard\cf1\lang1033\f0\fs16 ; AGC Programming Style example (file:loop1.asm)
\par ;
\par ; Test Results:
\par ;
\par ;\tab xval\tab A\tab (A=after CCS)
\par ;\tab ----\tab -
\par ;\tab 5\tab 4
\par ;\tab 4\tab 3
\par ;\tab 3\tab 2
\par ;\tab 2\tab 1
\par ;\tab 1\tab 0
\par ;\tab 0\tab 0
\par 
\par \tab ORG\tab EXTENDER
\par \tab DS\tab %47777\tab ; needed for EXTEND
\par 
\par \tab ORG\tab %100
\par xval\tab DS\tab 0\tab ; somewhere in eraseable memory
\par ; ----------------------------------------------
\par \tab ORG\tab GOPROG
\par 
\par ; Decrementing loop:
\par ;\tab - always executes at least once (tests at end of loop)
\par \f1 ;\f0\tab - loops 'xstart' times; decrements xval
\par 
\par \tab XCH\tab xstart
\par goback\tab EQU\tab *
\par \tab TS\tab xval
\par \tab ; do something useful (OK to change register A)
\par \tab CCS\tab xval
\par \tab TC\tab goback
\par 
\par ; ----------------------------------------------
\par 
\par loop1\tab EQU\tab *
\par \tab TC\tab loop1
\par 
\par xstart\tab DS\tab 5\tab ; somewhere in fixed memory
\par 
\par }
 