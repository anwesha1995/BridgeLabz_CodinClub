for item in `ls *.log.1`
do
	fileName=`echo $item |awk -F. '{print $1}'`
	ext=`echo $item | awk -F. '{print "."$2"."$3}'`
	date=`Date "+%D" | awk -F/ '{print $2$1$3}'`
	newName=$fileName$date$ext
	mv $item $newName
done
