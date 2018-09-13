#!/bin/sh

# Author : Rufus Sai
# date : 2018/09/13
# modified: 
# goal : クチナのControllerのファイル名リストを読み込んで、crud用のメッセージを生成
# Script follows here:

search_dir="/Users/s-sai/Documents/vagrant-cookbiz/apps/cookbiz-master-x/src/Controller"

file_list=`ls $search_dir | xargs -n 1 basename`

for file_name in $(echo $file_list | sed "s/Controller.php//g")
do
    file_name=`echo $file_name | sed 's/\([^[:blank:]]\)\([[:upper:]]\)/\1 \2/g'`
    file_name=`echo $file_name | tr '[:upper:]' '[:lower:]'`
    case $file_name in
        "acos" )
            jp_name="アクセスコントロールオブジェクト"
            ;;
        "aros" )
            jp_name="アクセスロールオブジェクト"
            ;;
        "job posting coverage requests" )
            jp_name="求人原稿取材依頼"
            ;;
        "job posting creation requests" )
            jp_name="求人原稿作成依頼"
            ;;
        "mail magazine options" )
            jp_name="メルマガオプション"
            ;;
        "mail magazine premium options" )
            jp_name="メルマガプレミアムオプション"
            ;;
        "mail magazines" )
            jp_name="メルマガ"
            ;;
        "organization images" )
            jp_name="企業画像"
            ;;
        "system users" )
            jp_name="システムユーザー"
            ;;
        "work order details" )
            jp_name="作業オーダー詳細"
            ;;
        "work order details production managements" )
            jp_name="作業オーダー詳細制作管理"
            ;;
        "job posting entries" )
            jp_name="求人エントリー"
            ;;
        "job posting shop locations" )
            jp_name="主要勤務地"
            ;;
        "job postings special features" )
            jp_name="求人原稿特集"
            ;;
        "logo rotation options" )
            jp_name="ロゴ回しオプション"
            ;;
        "logo rotations" )
            jp_name="ロゴ回し"
            ;;
        "my account" )
            jp_name="マイアカウント"
            ;;
        "organization billing contacts" )
            jp_name="企業請求先"
            ;;
        "organization image tags" )
            jp_name="企業画像タグ"
            ;;
        "organization user accounts" )
            jp_name="企業担当者"
            ;;
        "shops" )
            jp_name="店舗"
            ;;
        "special feature options" )
            jp_name="特集オプション"
            ;;
        "special features" )
            jp_name="特集"
            ;;
        "work orders" )
            jp_name="作業オーダー"
            ;;
        "publication requests" )
            jp_name="掲載依頼"
            ;;
        "job postings" )
            jp_name="求人"
            ;;
        "opportunities" )
            jp_name="商談"
            ;;
        "publish managements" )
            jp_name="掲載管理"
            ;;
        "salesforce accounts" )
            jp_name="salesforceアカウント"
            ;;
        "salesforce jobs" )
            jp_name="salesforceジョブ"
            ;;
        "salesforce users" )
            jp_name="salesforceユーザー"
            ;;
        "upper display options" )
            jp_name="上位表示"
            ;;
        "write progresses" )
            jp_name="原稿進捗"
            ;;
        #除外区
        "app" | "component" | "cookbiz configs" | "error" | "follow ups" | "searches" | "site status" | "pages" )
            continue;;
        * )
            jp_name="日本語"
            ;;
    esac
    file_name=`echo $file_name | sed s'/[s]$//'`

    echo "msgid \"Successfully created $file_name\""
    echo "msgstr \"${jp_name}の作成に成功しました\"\n"

    echo "msgid \"Could not create $file_name\""
    echo "msgstr \"${jp_name}の作成に失敗しました\"\n"

    echo "msgid \"Successfully updated $file_name\""
    echo "msgstr \"${jp_name}の更新に成功しました\"\n"

    echo "msgid \"Could not update $file_name\""
    echo "msgstr \"${jp_name}の更新に失敗しました\"\n"

    echo "msgid \"Successfully deleted $file_name\""
    echo "msgstr \"${jp_name}の削除に成功しました\"\n"

    echo "msgid \"Could not delete $file_name\""
    echo "msgstr \"${jp_name}の削除に失敗しました\"\n"
done

