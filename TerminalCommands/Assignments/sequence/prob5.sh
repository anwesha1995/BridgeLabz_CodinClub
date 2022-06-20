#unit conversion

#a.
x=`echo | awk '{print 42/12}'`
echo "a. 42 in = $x ft"

#b.
areaInMt=`echo | awk '{print 40*60*0.3048}'`
echo "b. Rectangular plot of 60 feet * 40 feet= $areaInMt square meters"

#c.
areaInAcre=`echo | awk '{print 731.52*25*0.000247105}'`
echo "c. Area of such 25 plots = $areaInAcre"
