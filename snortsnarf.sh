dir="/home/aing/Downloads/SnortSnarf-1.0/"

if [ "$#" -ne 1 ]; then
  echo "Usage: enter the alert file"
  exit 1
fi

(cd $dir; ./snortsnarf.pl $1)
