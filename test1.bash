#!/bin/bash
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause


output=$(echo "hello world" | python3 OMOJI)
if [ "$output" = "HELLO WORLD" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi


output=$(echo "hello 123" | python3 OMOJI)
if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi


output=$(echo "hello, world!" | python3 OMOJI)
if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi


output=$(echo "こんにちは" | python3 OMOJI)
if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi


output=$(echo "Hello カタカナ" | python3 OMOJI)
if [ "$output" = "変換できません" ]; then
    echo "OK"
else
    echo "エラー"
    exit 1
fi
exit 0
