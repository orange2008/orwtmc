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
exec main.py
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
exec add.py
```python
print("Give me two numbers, and I'll Add them!")
print("Enter 'q' to quit.")

while True:
    first_number = input("\nFirst number: ")
    if first_number == 'q':
        break
    second_number = input("\nSecond number: ")
    if second_number == 'q':
        break
    answer = int(first_number) + int(second_number)
    print(answer)
```

exec sub.py
```python
print("Give me two numbers, and I'll Sub them!")
print("Enter 'q' to quit.")

while True:
    first_number = input("\nFirst number: ")
    if first_number == 'q':
        break
    second_number = input("\nSecond number: ")
    if second_number == 'q':
        break
    answer = int(first_number) - int(second_number)
    print(answer)
```

exec multiply.py
```python
print("Give me two numbers, and I'll Multiply them!")
print("Enter 'q' to quit.")

while True:
    first_number = input("\nFirst number: ")
    if first_number == 'q':
        break
    second_number = input("\nSecond number: ")
    if second_number == 'q':
        break
    answer = int(first_number) * int(second_number)
    print(answer)
```

exec divide.py
```python
print("Give me two numbers, and I'll divide them!")
print("Enter 'q' to quit.")

while True:
    first_number = input("\nFirst number: ")
    if first_number == 'q':
        break
    second_number = input("\nSecond number: ")
    if second_number == 'q':
        break
    try:
        answer = int(first_number) / int(second_number)
    except ZeroDivisionError:
        print("You can't divide by 0!")
    else:
        print(answer)
```
**Welcome any developers to redevelop**
