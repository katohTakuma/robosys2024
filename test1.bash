#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

import subprocess

def test_process_input():
    # テスト対象のスクリプトを実行し、標準入力に文字列を渡して出力を確認
    input_text = "hello world\n"
    expected_output = "HELLO WORLD\n"

    result = subprocess.run(
        ["python3", "your_script.py"],  # ここでテストするPythonスクリプトを指定
        input=input_text,
        text=True,
        capture_output=True
    )

    # 結果の標準出力を確認
    assert result.stdout == expected_output

