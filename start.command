#!/bin/zsh
# ダブルクリックで「あの頃の場所」を起動します（閉じるにはこのウィンドウで Ctrl+C）
cd "$(dirname "$0")"
PORT=8765
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null)
echo ""
echo "  PCで開く:        http://localhost:$PORT/"
if [ -n "$IP" ]; then
  echo "  スマホで開く:    http://$IP:$PORT/   （同じWi-Fiにつないでください）"
fi
echo ""
( sleep 1; open "http://localhost:$PORT/" ) &
# 0.0.0.0 = 同じWi-Fi内のスマートフォンからもアクセスできるようにする
python3 -m http.server $PORT --bind 0.0.0.0
