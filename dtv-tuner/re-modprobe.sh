
#!/bin/bash

# デバイスファイルのパスを指定
DEVICE_FILE="/dev/isdb6014video0"

# デバイスファイルの存在をチェック
if [ ! -e "$DEVICE_FILE" ]; then
 # デバイスファイルが存在しない場合、modprobeを実行
 /usr/sbin/modprobe px4_drv
fi
