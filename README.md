# あの頃の場所

Scaniverseで撮った3Dデータ（.spz / .ply / .glb / .obj / .fbx / .usdz）を読み込み、PCではWASD＋マウス、スマートフォンではスティック操作で歩き回れるウェブアプリ。

- 公開URL: https://keitogoto.github.io/memory-walk/
- 3Dデータはブラウザ内（IndexedDB）だけに保存され、サーバーには送信されない
- 読み込み時に床・階段・壁を解析し、42cmまでの段差は自動で上り下り、壁は通り抜けない

ローカルで動かす場合は `start.command` をダブルクリック（同じWi-Fiのスマホからも開ける）。
