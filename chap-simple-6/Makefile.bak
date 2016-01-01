all:
	happy -gca Parchapel.y
	alex -g Lexchapel.x
	ghc --make Testchapel.hs -o Testchapel
clean:
	-rm -f *.log *.aux *.hi *.o *.dvi
	-rm -f Docchapel.ps
distclean: clean
	-rm -f Docchapel.* Lexchapel.* Parchapel.* Layoutchapel.* Skelchapel.* Printchapel.* Testchapel.* Abschapel.* Testchapel ErrM.* SharedString.* chapel.dtd XMLchapel.* Makefile*

