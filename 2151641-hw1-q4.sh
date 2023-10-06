#!/bin/bash

seconds=$1

while [ $seconds -gt 0 ]; do
    echo "剩余秒数$seconds"
    sleep 10
    seconds=$((seconds - 10))
done
echo "倒计时结束！"
