if [ "$#" -ne 1 ]; then
  echo "Usage: enter the alert file"
  exit 1
fi

cat $1 | grep -Po "(([0-1](\d\d?)?|2([0-4]\d?|5[0-5]?|[6-9])?|[3-9]\d?)\.){3}([0-1](\d\d?)?|2([0-4]\d?|5[0-5]?|[6-9])?|[3-9]\d?)(:([0-5](\d(\d(\d\d?)?)?)?|6([0-4](\d(\d\d?)?)?|5([0-4](\d\d?)?|5([0-2]\d?|3[0-5]?|[4-9])?|[6-9]\d?)?|[6-9](\d\d?)?)?|[7-9](\d(\d\d?)?)?))? ->" > tmp.txt
#cat tmp.txt | grep -Po "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" | sort | uniq > ips.txt
cat tmp.txt | sort | uniq > ips.txt
rm tmp.txt
