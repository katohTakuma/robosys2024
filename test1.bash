#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

input_text="hello world"
expected_output="HELLO WORLD"

output=$(echo "$input_text" | python3 homework1)

if [ "$output" = "$expected_output" ]; then
    echo "OK"
    exit 0
else
    echo "正しい出力:'$expected_output' 今回の出力:'$output'"
    exit 1
fi

