#echo "Lancio la compilazione..."
#bnfc -m -Haskell chapel.cf 
#cp Makefile M
#grep -v 'latex Docchapel.tex; dvips Docchapel.dvi -o Docchapel.ps' M > Makefile
#rm M
#echo "Creo il compilatore..."
make
./test.sh