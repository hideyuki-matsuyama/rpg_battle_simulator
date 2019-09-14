# README

<img alt="Build" src="https://github.com/hideyuki-matsuyama/rpg_battle_simulator/workflows/Build/badge.svg">

## 環境

- ruby 2.6.3
- Rails 5.2.3
- RSpec 3.8
- MySQL 5.7

## はじめ方

```bash
bundle && bin/rails db:{create,migrate,seed}
```

## 静的コードチェックとテストコードの実行

```bash
bin/rails check:all
```

- System Specに失敗した際のスクリーンショットが `tmp/screenshots` に出力されます
- code coverageの測定結果が `coverage/index.html` に出力されます

## License

MIT
