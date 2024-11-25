#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

import sys

def process_input(input_text):
    # 入力されたテキストをすべて大文字に変換する処理
    return input_text.strip().upper()

if __name__ == "__main__":
    # 標準入力からデータを読み込む
    input_text = sys.stdin.read()
    # 入力を加工する
    processed_text = process_input(input_text)
    # 加工結果を標準出力に出力する
    print(processed_text)

