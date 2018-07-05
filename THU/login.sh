#!/bin/bash
echo "输入用户名"
read username
echo "输入密码"
read password
password_md5=`echo -n ${password}|md5sum|cut -d ' ' -f1`
echo `wget -q -O - --post-data="action=login&username=${username}&password={MD5_HEX}${password_md5}&ac_id=1" "http://net.tsinghua.edu.cn/do_login.php"`
