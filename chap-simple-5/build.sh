echo "Lancio la compilazione..."
bnfc -m -Haskell chapel.cf 
cp Makefile M
grep -v 'latex Docchapel.tex; dvips Docchapel.dvi -o Docchapel.ps' M > Makefile
rm M
echo "Creo il compilatore..."
make
echo "Lancio dei test..."

echo "[OK] Assegnamento normale:"
echo "var a:int=3;" | ./Testchapel 

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
echo "var a:real=1.0,b:int=4;b=20.0+1.0;a=2.0+2.3;" | ./Testchapel 
echo "var a:real=1.0,b:int=4;b=20.0+1.0;a=2.0+2.3;" | ./Testchapel 
echo "if (q<=2) then a=3; else c=1;" | ./Testchapel 
echo "if (q>2) {a=3;c=3;} else {c=8;c=11;}" | ./Testchapel 
echo "select (a) {when 1 do a=3;when 2 {a=3;b=4;} otherwise {c=5;d=3;}}" | ./Testchapel 
echo "while (c>=3) do a=2;" | ./Testchapel 
echo "while (c>=3) {a=2;b=3;}" | ./Testchapel 
echo "do {a=3;b=4;} while (a==true);" | ./Testchapel 
echo "for i in 1..10 do {a=3;}" | ./Testchapel 
echo "for j in 1..10 {a=3;a=2;a=6;};" | ./Testchapel 
echo "for a in 1..220 {if (a==3) then break; else continue; a=4;}" | ./Testchapel 
echo "writeInt(4);" | ./Testchapel 
echo "function mainA (a:int) { a=3; c=z; } a=5; c=7; function mainB () { 	a=3; 	c=z; } function mainC (a:int,b:int) { 	a=3; 	c=z; } mainC(c,2); mainB(); mainA(a==true); " | ./Testchapel 