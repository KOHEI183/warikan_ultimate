## android

- android（kotlin) アプリ用ディレクトリ
- android アプリに依存したファイルを配置
- Flutter で実装されていないけど、kotlin では実現できる機能の場合、ここに記述して呼び出すことで実現することができる（native 連携）
  - プラットフォームごとに異なる設定値やスマートフォンの機能(カメラなど)の利用権限を指定する場合に記述

### android/app/src/main

- Flutter での Android のコードを記載
- MethodChannel を使用し、dart ファイルから kotlin のコードを実行する際にはこのディレクトリを使用
