cd workspace
for i in $(ls); 
do
	echo $i;
	apk=$(ls $i| grep .apk);
	csv=$(ls $i | grep csv)
	echo "$apk , $csv"
  rm ./$i/$csv
	apktool b ./$i/unpack_benign -o ./$i/$apk -f
	rm -rf ./$i/unpack_benign
	echo 123456 | jarsigner -signedjar ../apk_data/$apk -keystore /home/elad/Desktop/AndroidAttack/attack/mykey.keystore ./$i/$apk bob
	rm -rf $i
 done;
