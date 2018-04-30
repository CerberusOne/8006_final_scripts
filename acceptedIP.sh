
#check extension of file (none vs gz)
if [ ${1: 3} == ".gz" ]
then
    #auth.log.gz
    zcat $1 | grep "Accepted password" | grep -Po "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" | uniq -c | wc -l
else
    #auth.log file for IP address
    cat $1 | grep "Accepted password" | grep -Po "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" | uniq -c | wc -l
fi
