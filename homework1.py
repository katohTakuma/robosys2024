#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

import sys

def process_input(input_text):
    return input_text.strip().upper()

if __name__ == "__main__":
        input_text = sys.stdin.read()
        processed_text = process_input(input_text)
        print(processed_text)

