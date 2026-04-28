Base latex to remember:
- \noindent
- \clearpage and \newpage
   

Packages with lots of options to learn:
- geometry
- graphicx
- wrapfig
- subfig - possibly outdated? subcaption/subfigure both 
 
Small but necessary packages:
- amsmath
- xcolor
- hyperref
- url
- Pdfpages
 
Document classes to learn:
...

>[!caution]+ [27/04/2026] TABLES
> - \multirow{#rows}{width}{text} for a multirow in table
> - Use \cline{start-end} for a partial horizontal line
> - For partial vertical lines, make use of e.g. \multicolumn{4}{|c|}{text}
> - To break lines over rows:
> 	- 1) Use array and specify p{\<width\>} in tabular setup
> 	- 2) If using p{\<width\>}, but you want center alignment over the whole table, you can use >{\centering\arraybackslash}p{\<width\>}
> 	- 3) Manually break over rows
> - To mix left-alignment and center-alignment specify in tabular arguments the most common alignment, then break it when needed using a multicolumn environment in each cell necessary 

>[!caution]+ [27/04/2026] CAPTIONS
> - Use \captionsetup{type=figure} at the beginning of a custom figure environment, e.g. for multicol document. \captionof is the other option!
