# Custom Emojis

Misskeyのために製作したカスタム絵文字

## ビルド方法

必要なソフトウェアがインストールされていることを確認してください。
以下のソフトウェアが必要になります:

- GNU Make
- jq
- resvg
- Inkscape
- Glaxnimate
  (PATH内に`glaxnimate`が存在する、もしくはFlatpakで`org.mattbas.Glaxnimate`が利用可能である必要があります)

次のコマンドでビルド:

```sh
make -C build
```

ビルドに成功すると、`build`ディレクトリに成果物のzipファイルが生成されます。

## ライセンス

[MIT Lisence](COPYING)  
Copyright 2023-2025 zawa-ch.

### 一部絵文字のライセンスに関する補足

このリポジトリで公開されている絵文字の一部は、以前[異なるリポジトリ](https://github.com/zawa-ch/missmoji-library)で CC BY 4.0 / CC0 1.0 のいずれかで公開されていました。
整理にあたってライセンスをMITに統一していますが、当該絵文字は古いリポジトリで引き続きもとのライセンスとして提供されます。
