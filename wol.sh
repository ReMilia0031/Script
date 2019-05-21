#!/bin/sh

# http://www.gcd.org/sengoku/Welcome.en.html の WoLアプリケーション利用
# =============== Address
        ip="255.255.255.255"
        mac="XX:XX:XX:XX:XX:XX" 
# =============== End Address

adapter=`for DEV in $(find /sys/devices -name net | grep -v virtual ) ; do ls $DEV/; done`

echo -e "\033[0;33m
        ===========================
        |                         |
        |    Wake On LAN Script   |
        |              by ReMZero |
        ===========================
\033[0;39m"



echo -e "\033[1;33m[INFO]\033[0;39m アダプタ名:$adapter"
echo

arp -i $adapter | grep -i $mac > /dev/null
if [[ $? -eq 0 ]]; then
        tgt_ip=`arp -i $adapter | grep -i $mac | cut -b -13`
        ping -c4 $tgt_ip | tail -n 2 > /dev/null
        if [[ $? -eq 0 ]]; then
                echo -e "\033[1;33m[INFO]\033[0;39m $mac は起動していると思われます。"
                break
        fi
else
        echo -e "\033[1;33m[INFO]\033[0;39m $mac に対してWoLります。"
        while :
        do
                if [[ $cnt -lt 5 ]]; then
                        cnt=$(( $cnt+1 ))
                        wakeonlan $ip $mac
                        sleep 30
                        arp -i $adapter | grep -i $mac > /dev/null
                        if [[ $? -eq 0 ]]; then
                                echo -e "\033[1;32m[ OK ]\033[0;39m ARPテーブルで確認しました。"
                                tgt_ip=`arp -i $adapter | grep -i $mac | cut -b -13`
                                ping -c4 $tgt_ip | tail -n 2 > /dev/null
                                if [[ $? -eq 0 ]]; then
                                        echo -e "\033[1;32m[ OK ]\033[0;39m PING成功しました。"
                                else
                                        echo -e "\033[1;33m[INFO]\033[0;39m PING応答無し"
                                fi
                                echo -e "\033[1;32m[ OK ]\033[0;39m 多分起動しました。"
                                echo
                                break
                        else

                                echo -e "\033[1;33m[INFO]\033[0;39m 確認できませんでした。リトライします。($cnt回目)"
                        fi
                else
                        echo -e "\033[1;31m[FAILED]\033[0;39m 応答無し。 キャンセル"
                        echo
                        break
                fi
        done
fi
