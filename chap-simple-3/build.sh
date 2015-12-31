#echo "Lancio la compilazione..."
#bnfc -m -Haskell chapel.cf 
#cp Makefile M
#grep -v 'latex Docchapel.tex; dvips Docchapel.dvi -o Docchapel.ps' M > Makefile
#rm M
#echo "Creo il compilatore..."
make
echo "var a:int=3,c:real=2;c=4.0;a=2.0;" | ./Testchapel 
