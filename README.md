# plusコマンド
![test](https://github.com/katohTakuma/robosys2024/actions/workflows/test.yml/badge.svg)
- 今回の課題には関係ないため一時的に削除しました。

# OMOJIコマンド
![test](https://github.com/katohTakuma/robosys2024/actions/workflows/test1.yml/badge.svg)
## 概要
- OMOJIは課題1のために作成したコマンドです。
- 標準入力から与えられた文字列(英文)をすべて大文字に変換し、標準出力に出力します。
- 英文以外を入力すると「変換できません」と出力されます。
 
## 使い方
 - 以下を実行します。
```bash
  $ git clone https://github.com/katohTakuma/robosys2024.git
  
  $ cd ~/robosys2024/

　$ chmod +x OMOJI
```
### 起動手順
  - 英文を入力すると、小文字を大文字に変換します。大文字と小文字が混在していても使用可能です。

  - 例(Homework，hello world)
```bash
   $ echo "Homework" | ./OMOJI
```
出力予想：HOMEWORK


```bash
   $ echo "hello world" | ./OMOJI
```
出力予想: HELLO WORLD

　　

## 必要なソフトウェア
 - Python
   - テスト済みのバージョン: 3.7～3.10

## テスト環境
- Ubuntu 24.04 LTS


  
## 権利関係
### 権利
- © 2024 katoh takuma
- 本ソフトウェアパッケージは、3条項BSDライセンスのもとで再配布や利用が認められています
- 本パッケージのコードは、Ryuichi Ueda氏の許可を得て、下記のスライド(© 2024 Ryuichi Ueda)（CC-BY-SA 4.0)を一部参考にし、自身の著作として作成されたものです
  - [著作権とライセンス｜上田 隆一](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson5.html#10)
  - [GitHubでのテスト｜上田 隆一](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html#17)


### 参考記事
 -   [著作権とライセンス｜上田 隆一](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson5.html#25)　

 -   [ソフトウェアのテスト｜上田 隆一](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson6.html#16)　

 -   [GitHubでのテスト｜上田 隆一](https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html#17)　

 - [Pythonで大文字・小文字を操作する文字列メソッド一覧｜nkmk.me](https://note.nkmk.me/python-capitalize-lower-upper-title/#upper)　
 
 - [大文字と小文字を変換する｜TATSUO IKURA](https://www.javadrive.jp/python/string/index12.html)　
 
 - [【超初心者向け】Pythonのテストの書き方｜@KENTAROSZK](https://qiita.com/KENTAROSZK/items/ae40bd509d0c114c3519)
 
 - [初心者はまずREADMEを書け｜@Canard_engineer_c_cpp](https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f)

 - [分かりやすいpythonの正規表現の例｜@luohao0404
(浩 羅)](https://qiita.com/arucraft/items/7c8811b5cf37d700adc4)

 - [Pythonのモジュールreで正規表現操作を行う方法【初心者向け】｜太田和樹](https://magazine.techacademy.jp/magazine/19307)　

