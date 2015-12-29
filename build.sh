echo "Lancio la compilazione..."
bnfc -m -Haskell chapel.cf 
cp Makefile M
grep -v 'latex Docchapel.tex; dvips Docchapel.dvi -o Docchapel.ps' M > Makefile
rm M
echo "Creo il compilatore..."
make
echo "Lancio dei test..."
./test/test.sh