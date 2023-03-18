#!/bin/bash
 
 
if [[ -z "$NGROK_TOKEN" ]]; then
  echo "请先设置名为 'NGROK_TOKEN' 的Secrets"
  exit 2
fi
 
if [[ -z "$USER_PASS" ]]; then
  echo "请先设置名为 'USER_PASS' 的Secrets"
  exit 3
fi
 
echo "### 安装 ngrok ###"
 
wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
unzip -q ngrok-stable-linux-386.zip
chmod +x ./ngrok

echo "### 设置 $USER 用户密码 ###"
echo -e "$USER_PASS\n$USER_PASS" | sudo passwd "$USER"
 
echo "### 启动 ngrok 端口代理 ###"

rm -f .ngrok.log
./ngrok authtoken "$NGROK_TOKEN"
./ngrok tcp 22 --log ".ngrok.log" &
 
sleep 10
HAS_ERRORS=$(grep "command failed" < .ngrok.log)
 
if [[ -z "$HAS_ERRORS" ]]; then
  echo ""
  echo "================SSH 账号信息==================="
  echo "To connect: $(grep -o -E "tcp://(.+)" < .ngrok.log | sed "s/tcp:\/\//ssh $USER@/" | sed "s/:/ -p /")"
  echo "=============================================="
else
  echo "$HAS_ERRORS"
  exit 4
fi
