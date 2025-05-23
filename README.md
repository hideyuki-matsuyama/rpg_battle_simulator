<img alt="Build" src="https://github.com/hideyuki-matsuyama/rpg_battle_simulator/workflows/Build/badge.svg">

# これは何？

- ドラクエの戦闘ロジックを想像して Ruby で書いてみました
- 日本語でも動くよね？ということで随所に日本語を用いています（AI にコードレビューさせたら軒並み注意されましたが）

## 環境

- ruby 3.4.3
- Rails 8.0.2
- RSpec 3.13.3
- MySQL

## はじめかた

```bash
bundle && bin/rails db:{create,migrate,seed}
```

## 静的コードチェックとテストコードの実行

```bash
bin/rails check:all   # 全チェック
bin/rspec -fd         # 仕様確認
```

- System Spec に失敗した際のスクリーンショットが `tmp/screenshots` に出力されます。
- Code coverage の測定結果が `coverage/index.html` に出力されます。

## License

MIT.

## Memo

```sh
# For mysql2 gem installing(Apple M1 Ultra, macOS: Sequoia 15.5).
export LIBRARY_PATH=$LIBRARY_PATH:$(brew --prefix zstd)/lib/
```
