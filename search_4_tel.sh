# !/bin/sh

folders=("cookbiz/html/_framework" "cookbiz-master-x" "cookbiz-master-g" "corp2/protected" )
base_root=~/Documents/vagrant-cookbiz/apps/

echo "${base_root}"
cd $base_root
echo 'Please enter the keyword to be found:'
read keyword
echo "The keyword is \"$keyword\"."

i=0
for i in ${folders[@]};
do
    echo "Result in \"$i\""
    grep -R -n --color=auto "${keyword}" $i --exclude-dir={vendor,logs,log,tests}
done