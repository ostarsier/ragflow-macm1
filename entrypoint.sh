#!/bin/bash

#/usr/sbin/nginx
#nginx -s stop
#/opt/homebrew/bin/nginx
# 此处配置需要按照实际情况调整，两个 export 为新增配置
export PYTHONPATH=/Users/shelbin/PycharmProjects/ragflow-0.10.0
# 可选：添加 Hugging Face 镜像
export HF_ENDPOINT=https://hf-mirror.com

#export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/

PY=python3
if [[ -z "$WS" || $WS -lt 1 ]]; then
  WS=1
fi

function task_exe(){
    while [ 1 -eq 1 ];do
      $PY rag/svr/task_executor.py ;
    done
}

for ((i=0;i<WS;i++))
do
  task_exe  &
done

while [ 1 -eq 1 ];do
    $PY api/ragflow_server.py
done

wait;
