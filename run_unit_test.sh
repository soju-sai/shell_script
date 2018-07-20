#!/bin/sh

# Author : Rufus Sai
# date : 2018/06/12
# modified: 2018/07/19
# Script follows here:

jp_unit()
{
    cd /vagrant/apps/cookbiz/html/_framework/codeception/cui
    echo "Run JP UnitTest"
    echo "`../../vendor/bin/codecept run unit`"
    echo "\n\n"
}

jp_acpt()
{
    echo "Run JP AcceptanceTest"
    cd /vagrant/apps/cookbiz/html/_framework/codeception/cui
    echo "`../../vendor/bin/codecept run acceptance`"
    echo "\n\n"
}

corp2_unit()
{
    echo "Run corp2 UnitTest"
    cd /vagrant/apps/corp2/protected/tests/cui
    echo "`../../vendor/bin/codecept run unit`"
    echo "\n\n"
}

corp2_acpt()
{
    echo "Run corp2 AcceptanceTest"
    cd /vagrant/apps/corp2/protected/tests/cui
    echo "`../../vendor/bin/codecept run acceptance`"
    echo "\n\n"
}

g_unit()
{
    echo "Run master-g UnitTest"
    cd /vagrant/apps/cookbiz-master-g/tests
    echo "`../vendor/bin/phpunit unit`"
    echo "\n\n"
}

g_acpt()
{
    echo "Run master-g AcceptanceTest"
    cd /vagrant/apps/cookbiz-master-g/tests/codeception/cui
    echo "`../../../vendor/bin/codecept run acceptance`"
    echo "\n\n"
}

batch_unit()
{
    echo "Run batch-app UnitTest"
    cd /vagrant/apps/cakephp-batch-app
    echo "`vendor/bin/phpunit`"
    echo "\n\n"
}

agg_unit()
{
    echo "Run agg UnitTest"
    cd /vagrant/apps/agg/api/apps/console
    echo "`../../vendor/bin/codecept run unit`"
    echo "\n\n"
}

api_acpt()
{
    echo "Run api AcceptanceTest"
    cd /vagrant/apps/agg/api/apps/api
    echo "`../../vendor/bin/codecept run acceptance`"
    echo "\n\n"
}

mb_test()
{
    echo "Run mobile-api UnitTest and AcceptanceTest"
    cd /vagrant/apps/mobile-api/api/apps/mobile
    echo "`../../vendor/bin/codecept run unit`"
    echo "`../../vendor/bin/codecept run acceptance`"
    echo "\n\n"
}

x_unit()
{
    echo "Run cucina UnitTest"
    cd /vagrant/apps/cookbiz-master-x
    echo "`./vendor/bin/phpunit`"
    echo "\n\n"
}

echo "Test start\n"
echo "Which test to run?"
echo "1:JP   2:copr2  3:master-g  4:batch-app  \n5:agg  6:api  7:mobile-api  8:cucina  \nAny Other Key:all"
read test_case

case $test_case in
    "1" )
        jp_unit
        jp_acpt
        ;;
    "2" )
        corp2_unit
        corp2_acpt
        ;;
    "3" )
        g_unit
        g_acpt
        ;;
    "4" )
        batch_unit
        ;;
    "5" )
        agg_unit
        ;;
    "6" )
        api_acpt
        ;;
    "7" )
        mb_test
        ;;
    "8" )
        x_unit
        ;;
    * )
        jp_unit
        jp_acpt
        corp2_unit
        corp2_acpt
        g_unit
        g_acpt
        batch_unit
        agg_unit
        api_acpt
        mb_test
        x_unit
        ;;
esac

echo "test completed."
return 0