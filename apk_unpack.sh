cd workspace;
for i in $(ls); 
do
	echo $i;
	apk=$(find $i | grep .apk);
	apktool d $apk -o ./$i/unpack_benign -f;
 done;
