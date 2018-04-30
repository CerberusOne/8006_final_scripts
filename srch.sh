if [ "$#" -ne 1 ]; then
  echo "Usage: enter the pcap file"
  exit 1
fi

argus -r $1 -w tmp.ra
ra -s stime proto saddr daddr state -nzr tmp.ra > tmp.txt

while read line
do
  cat tmp.txt | grep CON | grep $line >> output.txt
  #echo $line
done < ips.txt
