#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

# PythonコードをPythonスクリプトとして直接実行し、エラーハンドリングを簡素化
python3 - <<EOF
import subprocess
import sys

# テスト対象のスクリプトを実行し、標準入力に文字列を渡して出力を確認
input_text = "hello world\n"
expected_output = "HELLO WORLD\n"

result = subprocess.run(
    ["python3", "homework1.py"],  # ここでテストするPythonスクリプトを指定
    input=input_text,
    text=True,
    capture_output=True
)

# 結果の標準出力を確認し、異常時には1、正常時には0を返す
sys.exit(0 if result.stdout == expected_output else 1)
EOF

# Pythonスクリプトの終了コードをそのままBashの終了コードにする
exit $?

