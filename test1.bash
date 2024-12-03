#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

# Function to test a specific input
test_case() {
    local input_text="$1"
    local expected_output="$2"
    local expected_exit_code="$3"

    output=$(echo "$input_text" | python3 OMOJI)
    exit_code=$?

    if [ "$output" = "$expected_output" ] && [ "$exit_code" -eq "$expected_exit_code" ]; then
        echo "OK: '$input_text' -> '$output'"
    else
        echo "NG: 入力: '$input_text' 出力予想: '$expected_output' 実際の出力: '$output'"
        exit 1
    fi
}

# 1. 正常系: 小文字のみの文字列
test_case "hello world" "HELLO WORLD" 0

# 2. 正常系: 小文字とスペース
test_case "test case" "TEST CASE" 0

# 3. 異常系: 数字を含む場合（エラーを期待）
test_case "hello123" "" 1

# 4. 異常系: 記号を含む場合（エラーを期待）
test_case "hello@world" "" 1

# 5. 異常系: ひらがなを含む場合（エラーを期待）
test_case "こんにちは" "" 1

# 6. 異常系: カタカナを含む場合（エラーを期待）
test_case "コンニチハ" "" 1

# 7. 異常系: 空文字（エラーを期待）
test_case "" "" 1

# 8. 正常系: すでに大文字の入力
test_case "HELLO WORLD" "HELLO WORLD" 0

# 9. 正常系: 混合文字列 (部分的に小文字)
test_case "Hello World" "HELLO WORLD" 0

# 10. 異常系: 特殊文字（エラーを期待）
test_case "!@#$%^&*" "" 1

exit 0

