## ios

- iOS(swift) アプリ用ディレクトリ
- iOS アプリに依存したファイルを配置
- Flutter で実装されていないけど、swift では実現できる機能の場合、ここに記述して呼び出すことで実現することができる（native 連携）
  - プラットフォームごとに異なる設定値やスマートフォンの機能(カメラなど)の利用権限を指定する場合に記述

### ios/Runner/Base.lproj

- Flutter での iOS のコードを記載
- MethodChannel を使用し、dart ファイルから swift のコードを実行する際にはこのディレクトリを使用
