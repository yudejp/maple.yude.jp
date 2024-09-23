#!/bin/sh
cd /mnt/prod/docker/dtv-tuner
docker compose restart

WEBHOOK_URL="https://discord.com/api/webhooks/1043020084412686336/m-unvwV1aI70LXr5x7PqvkMrD3FrIP0mcj05wpxBie03YsNsUF2WUwu9AxXa7D4-IdYp"

# メッセージ内容
MESSAGE="dtv 関連コンテナを再起動しました。"

# Discord へ Webhook でメッセージを送信する
curl -H "Content-Type: application/json" \
     -X POST \
     -d "{\"content\": \"${MESSAGE}\"}" \
     $WEBHOOK_URL
