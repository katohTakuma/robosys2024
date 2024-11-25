#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 katoh takuma
# SPDX-License-Identifier: BSD-3-Clause

echo "hello world" | python homework1.py > output.txt
    if ! grep -q "HELLO WORLD" output.txt; then
      echo "Test failed: Expected 'HELLO WORLD' in output" >&2
      exit 1
    fi

