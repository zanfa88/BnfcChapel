files="test1.ch test2.ch test3.ch test4.ch test99.ch"

for f in $files;
do
	./Testchapel "test/"$f
	echo "-----------------------------------"
done