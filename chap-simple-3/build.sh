#echo "Lancio la compilazione..."
#bnfc -m -Haskell chapel.cf 
#cp Makefile M
#grep -v 'latex Docchapel.tex; dvips Docchapel.dvi -o Docchapel.ps' M > Makefile
#rm M
#echo "Creo il compilatore..."
make
echo "[OK] Assegnamento normale:"
echo "var a:int=3;a=4;" | ./Testchapel 
echo "-----------------"
echo "[BAD] Assegnamento di real a variabile int:" 
echo "var a:int=3.0;a=3;" | ./Testchapel 
echo "-----------------" 
echo "[BAD] Assegnamento a una variabile non dichiarata:" 
echo "var a:int=3;c=3;" | ./Testchapel 
echo "-----------------" 
echo "[BAD] Assegno un valore real ad una variabile int:" 
echo "var a:int=3;a=3.0;" | ./Testchapel 
echo "-----------------" 
echo "[OK] Modifica valore di una variabile int ad un tipo int:" 
echo "var a:int=3;a=4;" | ./Testchapel 
echo "-----------------" 
