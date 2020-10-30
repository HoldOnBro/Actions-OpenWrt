#!/bin/sh

CURRENT_GOVERNOR=$(cat /sys/devices/system/cpu/cpufreq/policy0/scaling_governor)
LOG=/etc/bench.log
echo "<div><table>" > $LOG
trap "echo killed;echo ${CURRENT_GOVERNOR} > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor 2>/dev/null;echo '</table></div>' >> $LOG;rm -f /tmp/*.score;exit" 1 2 3 9 15

echo "performance" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor 2>/dev/null

echo "testing coremark ... "
COREMARK=$(/bin/coremark | tail -n 1 | awk '{print $4}')
echo "CPU CoreMark : $COREMARK"
echo "<tr><td>CPU CoreMark</td><td>$COREMARK</td></tr>" >> $LOG

if [ -x /usr/bin/openssl ];then
    CORES=$(grep processor /proc/cpuinfo | wc -l)

    PROJS="aes-128-gcm aes-256-gcm chacha20-poly1305"
    for P in $PROJS;do
        echo "testing $P ..."
        /usr/bin/openssl speed -multi $CORES -evp $P 1>/tmp/${P}.score 2>/dev/null || echo "NA" >/tmp/${P}.score
        S=$(tail -n 1 /tmp/${P}.score | awk '{print $5}')
	echo "${P}(1K) : ${S}"
	echo "<tr><td>${P}(1K)</td><td>$S</td></tr>" >> $LOG
	rm -f /tmp/${P}.score
    done

fi

echo "</table></div>" >> $LOG

echo "${CURRENT_GOVERNOR}" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor 2>/dev/null

if [ -f "$LOG" ]; then
        sed -i '/coremark/d' /etc/crontabs/root
        crontab /etc/crontabs/root
fi
