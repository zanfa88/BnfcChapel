
echo "Lancio dei test..."


echo "[OK] While"
echo "var a:real=1.0,b:int=4;while a < 3.0 do a = a + 1 ; " | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "[OK] "
echo "var q:int=2;if q<=2 then q=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "[OK] If q > 2"
echo "if (q>2) {a=3;c=3;}" | ./Testchapel
echo "-----------------" 
echo "-----------------"
echo "[OK] While maggiore uguale "
echo "var c:int=2;while c>=3 do c=2;" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "[OK] while senza do"
echo "var c:int=2;while c>=3 {c=2;c=3;}" | ./Testchapel
echo "-----------------" 
echo "-----------------"
echo "[OK] for"
echo "var a:int=2;for a in 1..10 do {a=3;}" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "[OK] if inside for"
echo "var a:int=2;for a in 1..220 { if a==3 then break; a=4; }" | ./Testchapel 
echo "writeInt(4);" | ./Testchapel 
echo "-----------------" 
echo "-----------------"
echo "[OK] functions"
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