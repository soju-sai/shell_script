# !/bin/sh

cookbiz="cookbiz/html/_framework/"
cucina="cookbiz-master-x/"
master_g="cookbiz-master-g/"
corp2="corp2/protected/"

cd ~/Documents/vagrant-cookbiz/apps/
echo 'Please enter the keyword to be found:'
read keyword
echo "The keyword you entered was '$keyword'."

# cookbiz
echo "Result in $cookbiz"
grep -R -n --color=auto $keyword $cookbiz --exclude-dir={vendor,logs}

# cucina
echo "Result in $cucina"
grep -R -n --color=auto $keyword $cucina --exclude-dir={vendor,logs}

# master_g
echo "Result in $master_g"
grep -R -n $keyword $master_g --exclude-dir={vendor,logs}

# corp2
echo "Result in $corp2"
grep -R -n $keyword $corp2 --exclude-dir={vendor,logs}