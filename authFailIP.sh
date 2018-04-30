
#check extension of file (none vs gz)
if [[ $1 == *.gz ]]
then
    #auth.log.gz
    zcat $1 | grep "Authentication failure" | wc -l
    echo "checking gz file"
else
    #auth.log file for IP address
    cat $1 | grep "Authentication failure" | wc -l
    echo "checking normal file"
fi
