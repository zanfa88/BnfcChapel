
echo "Lancio dei test..."

echo "[OK] Assegnamento normale:"
echo "var a:int=3;" | ./Testchapel 
echo "-----------------"
echo "-----------------"
echo "[BAD] Assegnamento di real a variabile int:" 
echo "var a:int=3.0;a=3;" | ./Testchapel 
echo "-----------------"
echo "-----------------" 
echo "[BAD] Assegnamento a una variabile non dichiarata:" 
echo "var a:int=3;c=3;" | ./Testchapel 
echo "-----------------"
echo "-----------------" 
echo "[BAD] Assegno un valore real ad una variabile int:" 
echo "var a:int=3;a=3.0;" | ./Testchapel 
echo "-----------------"
echo "-----------------" 
echo "[OK] Modifica valore di una variabile int ad un tipo int:" 
echo "var a:int=3;a=4;" | ./Testchapel 
echo "-----------------"
echo "-----------------" 
echo "[OK] Più dichiarazioni e più variabili:" 
echo "var a:real=1.0,b:int=4;b=20+1;a=2.0+2.3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "[BAD] Somma tipi diversi:" 
echo "var a:real=1.0,b:int=4;b=20+1.0;a=2.0+2.3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "[BAD] Assegnamento tipi diversi:" 
echo "var a:real=1.0,b:int=4;b=20.0+1.0;a=2.0+2.3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "[OK] While"
echo "var a:real=1.0,b:int=4;while a < b do a = a + 1 ; " | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "var a:real=1.0,b:int=4;b=20.0+1.0;a=2.0+2.3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "var a:real=1.0,b:int=4;b=20.0+1.0;a=2.0+2.3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "var q:int=2;if q<=2 then q=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "if (q>2) {a=3;c=3;}" | ./Testchapel
echo "-----------------" 
echo "-----------------"
echo "var c:int=2;while c>=3 do c=2;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "var c:int=2;while c>=3 {c=2;c=3;}" | ./Testchapel
echo "-----------------" 
echo "-----------------"
echo "var a:int=2;for a in 1..10 do {a=3;}" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "var a:int=2;for a in 1..220 {if (a==3) then break; a=4;}" | ./Testchapel 
echo "writeInt(4);" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "var a:int=3;function mainA (a:int) { a=3; c=z; }; a=5; c=7; function mainB () { 	a=3; 	c=z; }; function mainC (a:int,b:int) { 	a=3; 	c=z; }; mainC(c,2); mainB(); mainA(a==true); " | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] if: testo una variabile già dichiarata con lo stesso tipo:"
echo "var a:int=1;if a==1 then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[BAD] if: testo una variabile già dichiarata con tipo diverso:"
echo "var a:int=1;if a==1.0 then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[BAD] if: testo una variabile non dichiarata:"
echo "var a:int=1;if b==1 then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[BAD] if: testo una variabile non dichiarata:"
echo "var a:int=1;if 1==b then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] if: testo due valori tipo uguale:"
echo "var a:int=1;if 1==2 then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] if: testo due valori tipo uguale:"
echo "var a:int=1;if true==true then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[BAD] if: testo due valori tipo diverso:"
echo "var a:int=1;if true==a then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] if: testo stesso valore:"
echo "var a:int=1;if a==a then c=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] if: testo stesso valore con operando diverso:" 
echo "var a:int=1;if a!=a then a=3;" | ./Testchapel  
echo "-----------------" 
echo "-----------------" 
echo "[BAD] if: testo una variabile - senza condizione:"
echo "var a:int=1;if a then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] if: test sempre true:"
echo "var a:int=1;if true then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] while do: "
echo "var a:int=1;while a==1 do a=1;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] while: "
echo "var a:int=1;while a==1 {a=1;a=2;}" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[BAD] while do: "
echo "var a:int=1;while a do a=1;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[BAD] while: "
echo "var a:int=1;while a==1.0 {a=1;a=2;}" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] for : "
echo "var a:int=1;for b in 1..10 {a=1;b=1;};a=1;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[BAD] for uso iteratore fuori dal ciclo: "
echo "var a:int=1;for b in 1..10 {a=1;b=1;};a=1;b=1;" | ./Testchapel 
