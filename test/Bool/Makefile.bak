all:
	happy -gca Parbool.y
	alex -g Lexbool.x
	ghc --make Testbool.hs -o Testbool
clean:
	-rm -f *.log *.aux *.hi *.o *.dvi
	-rm -f Docbool.ps
distclean: clean
	-rm -f Docbool.* Lexbool.* Parbool.* Layoutbool.* Skelbool.* Printbool.* Testbool.* Absbool.* Testbool ErrM.* SharedString.* bool.dtd XMLbool.* Makefile*

