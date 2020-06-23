read -p '请输入想要查找的关键字（或按 Control+C 退出）：' srchstr
srchstr=${srchstr:-'blank'}
echo
echo "搜索 ${srchstr}，为您找到以下结果："
echo '=================================================='
grep --color=auto $srchstr ~/Desktop/dict.txt
echo '=================================================='
echo
sh Desktop/dict.sh
exit 0