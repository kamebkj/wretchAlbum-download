#!\bin\sh

declare -i num=1
declare -i picIndex=1
mkdir pictures

while [ -s "${num}.txt" ]; do
   mkdir -p "pictures/${num}"
   for line in $(cat ${num}.txt)
   do
      curl $line -o "pictures/${num}/${num}-${picIndex}.jpg"
      let "picIndex = picIndex + 1"
   done
   let "num = num + 1"
   let "picIndex = 1"
done



