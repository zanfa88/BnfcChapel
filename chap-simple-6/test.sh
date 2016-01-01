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
echo "var a:int=1;if a==a then a=3;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[OK] if: testo stesso valore con operando maggiore:" 
echo "var a:int=1;if a>a then a=3;" | ./Testchapel  
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
echo "[OK] for : "
echo "var a:int=1;for b in 1..10 {a=1;b=1;};a=a+1;" | ./Testchapel 
echo "-----------------" 
echo "-----------------" 
echo "[BAD] for uso iteratore fuori dal ciclo: "
echo "var a:int=1;for b in 1..10 {a=1;b=1;};a=1;b=1;" | ./Testchapel 
