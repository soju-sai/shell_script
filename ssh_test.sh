#!/bin/sh

# Author : Rufus Sai
# date : 2018/06/12
# Script follows here:

echo "Test start"
cd /vagrant/apps/cookbiz/html/_framework/codeception/cui
pwd
echo "Run JP UnitTest"
"$(../../vendor/bin/codecept run unit)"
echo "\n\n"
echo "OK ですか"
read EmptyAns

# できなくなった
# echo "Run JP AcceptanceTest"
# cd /vagrant/apps/cookbiz/html/_framework/codeception/cui
# pwd
# "$(../../vendor/bin/codecept run acceptance)"
# echo "\n\n"

# echo "Run corp2 UnitTest"
# cd /vagrant/apps/corp2/protected/tests/cui
# "$(../../vendor/bin/codecept run unit)"
# echo "\n\n"

# echo "Run corp2 AcceptanceTest"
# cd /vagrant/apps/corp2/protected/tests/cui
# "$(../../vendor/bin/codecept run acceptance)"
