#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

# PythonコードをPythonスクリプトとして直接実行し、エラーハンドリングを行う
python3 - <<EOF
import subprocess
import sys

def test_process_input():
    try:
        #テスト対象のスクリプトを実行し、標準入力に文字列を渡して出力を確認
        input_text = "hello world\n"
        expected_output = "HELLO WORLD\n"

        result = subprocess.run(
            ["python3", "homework1.py"],
	    input=input_text,
            text=True,
            capture_output=True
        )

        # 結果の標準出力を確認
        assert result.stdout == expected_output

    except Exception as e:
        # エラーが発生した場合はエラーメッセージを表示して1を返す
        print(f"Test failed: {e}")
        res=1

    # 正常終了時は0を返す
    res=0

# テスト関数を実行
test_process_input()
EOF

# Pythonスクリプトの終了ステータスを取得し、それをBashの終了コード
[ "${res}" = 0 ] && echo ok
exit "$res"

