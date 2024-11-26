# plusコマンド
![test](https://github.com/katohTakuma/robosys2024/actions/workflows/test.yml/badge.svg)
- 今回の課題には関係ないため一時的に削除しました。

# homework1コマンド
![test](https://github.com/katohTakuma/robosys2024/actions/workflows/test1.yml/badge.svg)
## 概要
- homework1は課題1のために作成したコマンドです。
- 標準入力から与えられた文字列(英文)をすべて大文字に変換し、標準出力に出力します。
 
## 使い方
### インストール方法
- リポジトリをクローンします

  $git clone https://github.com/katohTakuma/robosys2024.git
 
   $cd ~/robosys2024/

### 起動手順
 - Pythonスクリプトを実行します。〇〇の部分に英文を入力すると、小文字を大文字に変換します。大文字と小文字が混在していても使用可能です。

   $echo "〇〇" | ./homework1.py



### 出力例
- 上記の〇〇の部分に「hello world」と入力した場合以下のように出力されます。

  HELLO WORLD
 
## 必要なソフトフェア
 - Python
 - テスト済みのバージョン: 3.7～3.10

## テスト環境
- Ubuntu 24.04 LTS
  
## 権利関係・謝辞
### 権利
- 本ソフトウェアパッケージは、3条項BSDライセンスのもとで再配布や利用が認められています
- 本パッケージのコードは、Ryuichi Ueda氏の許可を得て、下記のスライド（CC-BY-SA 4.0ライセンス）を基に自身の著作として作成されたものです
  - [GitHubでのテスト](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html#8)
- ©　2024 katoh takuma

### 参考記事
 - [著作権とライセンス](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson5.html#25)

 - [ソフトウェアのテスト](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson6.html#16)

 - [GitHubでのテスト](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html#17)

 - [Pythonで大文字・小文字を操作する文字列メソッド一覧](https://note.nkmk.me/python-capitalize-lower-upper-title/#upper)
 
 - [大文字と小文字を変換する](https://www.javadrive.jp/python/string/index12.html)
 
 - [【超初心者向け】Pythonのテストの書き方](https://qiita.com/KENTAROSZK/items/ae40bd509d0c114c3519)
 
 - [リポジトリをクローンする](https://docs.github.com/ja/repositories/creating-and-managing-repositories/cloning-a-repository)
 
 - [初心者はまずREADMEを書け](https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f)

 - [Pythonのif __name__ == '__main__'の意味と使い方](https://note.nkmk.me/python-if-name-main/)


