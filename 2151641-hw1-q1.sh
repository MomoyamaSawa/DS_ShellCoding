#!/bin/bash

# 素数之和初始值设置为0
sum=0

# 遍历1-100之间的每个数
for ((i = 2; i <= 100; i++)); do
  # 判断当前数是否是素数
  is_prime=1 # 是否是素数的标记，1表示是素数，0表示不是素数
  for ((j = 2; j <= i / 2; j++)); do
    if [[ $((i % j)) -eq 0 ]]; then
      is_prime=0 # 当前数可以被整除，不是素数
      break
    fi
  done

  # 如果当前数是素数，将其加入到素数之和中
  if [[ $is_prime -eq 1 ]]; then
    sum=$((sum + i))
  fi
done

# 输出素数之和到日志文件中
echo "1-100之间所有质数之和为: $sum" >> 2151641-hw1-q1.log
echo "1-100之间所有质数之和为: $sum"
