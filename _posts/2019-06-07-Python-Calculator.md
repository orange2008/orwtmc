---
title: Python Calculator
published: true
---

**20190607,We make a python calculator**
_Now we is open source it on _~~Github~~_For any developers!_
github:`https://github.com/orange2008/Python_Calculator`

Make it by Python!
Helper: [USA] Eric Matthes
Developer: [CN] Shuai Ruan
```python
import os
print("Welcome to Super Calculator!")

while True:
    print("Plus:0 ; Sub:1 ; Multiply:2 ; Division:3")
    choice = input("\nStart:")
    if choice == '0':
        os.system('add.py')
        break
    if choice == '1':
        os.system('sub.py')
        break
    if choice == '2':
        os.system('multiply.py')
        break
    if choice == '3':
        os.system('divide.py')
        break

```
