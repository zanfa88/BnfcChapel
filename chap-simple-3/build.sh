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
echo "[OK] Più dichiarazioni e più variabili:" 
echo "var a:real=1.0,b:int=4;b=20+1;a=2.0+2.3;" | ./Testchapel 
echo "-----------------" 
echo "[BAD] Somma tipi diversi:" 
echo "var a:real=1.0,b:int=4;b=20+1.0;a=2.0+2.3;" | ./Testchapel 
echo "-----------------" 
echo "[BAD] Assegnamento tipi diversi:" 
echo "var a:real=1.0,b:int=4;b=20.0+1.0;a=2.0+2.3;" | ./Testchapel 
echo "-----------------" 