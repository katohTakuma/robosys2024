#!/bin/bash
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

# 1つ目のテスト：小文字を大文字に変換
output=$(echo "hello world" | python3 OMOJI)
if [ "$output" = "HELLO WORLD" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi

# 2つ目のテスト：数字を含む場合
output=$(echo "hello 123" | python3 OMOJI)
if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi

# 3つ目のテスト：記号を含む場合
output=$(echo "hello, world!" | python3 OMOJI)
if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi

# 4つ目のテスト：ひらがなを含む場合
output=$(echo "こんにちは" | python3 OMOJI)
if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi

# 5つ目のテスト：英語とカタカナが混ざっている場合
output=$(echo "Hello カタカナ" | python3 OMOJI)
if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi

exit 0
