#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

# 1つ目のテスト：小文字を大文字に変換
output=$(echo "hello world" | python3 OMOJI)
if [ "$output" = "HELLO WORLD" ]; then
    echo "入力:'hello world' -> OK"
else
    echo "入力:'hello world' -> エラー: 正しい出力:'HELLO WORLD' 今回の出力:'$output'"
    exit 1
fi

# 2つ目のテスト：数字はエラー
output=$(echo "12345" | python3 OMOJI)
if [ "$output" = "ERROR" ]; then
    echo "入力:'12345' -> OK"
else
    echo "入力:'12345' -> エラー: 正しい出力:'ERROR' 今回の出力:'$output'"
    exit 1
fi

# 3つ目のテスト：ひらがなはエラー
output=$(echo "こんにちは" | python3 OMOJI)
if [ "$output" = "ERROR" ]; then
    echo "入力:'こんにちは' -> OK"
else
    echo "入力:'こんにちは' -> エラー: 正しい出力:'ERROR' 今回の出力:'$output'"
    exit 1
fi

# 4つ目のテスト：すでに大文字の場合
output=$(echo "HELLO" | python3 OMOJI)
if [ "$output" = "HELLO" ]; then
    echo "入力:'HELLO' -> OK"
else
    echo "入力:'HELLO' -> エラー: 正しい出力:'HELLO' 今回の出力:'$output'"
    exit 1
fi

echo "すべてのテストが成功しました。"
exit 0

