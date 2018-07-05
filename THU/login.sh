#!/bin/bash
echo "输入用户名"
read username
echo "输入密码"
read password
password_md5=`echo -n ${password}|md5sum|cut -d ' ' -f1`
echo `wget -q -O - --post-data="action=login&username=${username}&password={MD5_HEX}df3ccb2be2c283de9930369b90b132ae&ac_id=1" "http://net.tsinghua.edu.cn/do_login.php"`
