read -p '请输入想要查找的关键字（或按 Control+C 退出）：' srchstr
srchstr=${srchstr:-'blank'}
read -p '您想要连带查看前几行（默认：0行）？' bfr
bfr=${bfr:-0}
read -p '您想要连带查看后几行（默认：0行）? ' aft
aft=${aft:-0}
echo
echo "搜索 ${srchstr}，并显示前${bfr}行，后${aft}行。"
echo '在《素问》中为您找到以下结果：'
echo '=================================================='
grep -B ${bfr} -A ${aft} --color=auto $srchstr ~/Desktop/suwen.txt
echo '=================================================='
echo
sh Desktop/suwen.sh
exit 0
