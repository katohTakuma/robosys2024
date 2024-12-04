#!/bin/bash
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

# 4つ目のテスト：ひらがなを含む場合
output=$(echo "こんにちは" | python3 OMOJI)
echo "OMOJI の出力: '$output'"  # OMOJI の出力を表示

if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi

