#!/bin/bash

log_file="$1"
output_file="2151641-hw1-q3.log"

# 检查是否提供了日志文件名作为参数
if [ -z "$log_file" ]; then
  echo "请提供日志文件名作为参数。"
  exit 1
fi

# 获取文件总行数
line_count=$(wc -l < "$log_file")

# 获取文件总字符数
char_count=$(wc -c < "$log_file")

# 获取第一行和最后一行的时间戳
first_timestamp=$(head -n 1 "$log_file" | awk '{print $1}')
last_timestamp=$(tail -n 1 "$log_file" | awk '{print $1}')

# 计算时间差
time_diff=$(($(date -d "$last_timestamp" +%s) - $(date -d "$first_timestamp" +%s)))

# 获取最后三列的平均值
load_average=$(awk '{sum1+=$8; sum2+=$9; sum3+=$10} END {print sum1/NR, sum2/NR, sum3/NR}' "$log_file")

# 输出结果到日志文件
echo "文件\"$log_file\"的总行数: $line_count" >> "$output_file"
echo "文件\"$log_file\"的总字符数: $char_count" >> "$output_file"
echo "第一行和最后一行输出结果的时间差: $time_diff 秒" >> "$output_file"
echo "最后三列的平均值: $load_average" >> "$output_file"


echo "文件\"$log_file\"的总行数: $line_count"
echo "文件\"$log_file\"的总字符数: $char_count"
echo "第一行和最后一行输出结果的时间差: $time_diff 秒"
echo "最后三列的平均值: $load_average"
