for item in `ls *.txt`
do
	fileName=`echo $item | awk -F. '{print $1}'`
	mkdir $fileName
	cp -r $item $fileName
done
