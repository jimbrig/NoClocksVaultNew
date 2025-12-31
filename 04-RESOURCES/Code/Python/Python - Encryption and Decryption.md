---
creation_date: 2024-04-23
modification_date: 2024-12-31
author: Jimmy Briggs <jimmy.briggs@noclocks.dev>
tags:
  - Type/Code
  - Topic/Python
  - Topic/Security
  - Status/Complete
aliases:
  - Encryption and Decryption
  - Python Cipher
description: Python GUI application for simple letter-swap encryption and decryption
cssclasses:
  - code
---

# Encryption and Decryption

> [!info] Code Properties
> - **Language**: Python
> - **Modules**: `tkinter`

```table-of-contents
title: ## Contents
style: nestedList
minLevel: 2
maxLevel: 4
includeLinks: true
```

## Overview

Simple GUI-based encryption tool using letter position swapping. This is a basic cipher for educational purposes.

## Code

```python
from tkinter import messagebox, simpledialog, Tk

def is_even(number):
    return number % 2 == 0

def get_even_letters(message):
    even_letters = []
    for counter in range(0, len(message)):
        if is_even(counter):
            even_letters.append(message[counter])
    return even_letters

def get_odd_letters(message):
    odd_letters = []
    for counter in range(0, len(message)):
        if not is_even(counter):
            odd_letters.append(message[counter])
    return odd_letters

def swap_letters(message):
    letter_list = []
    if not is_even(len(message)):
        message = message + 'x'
    even_letters = get_even_letters(message)
    odd_letters = get_odd_letters(message)
    for counter in range(0, int(len(message)/2)):
        letter_list.append(odd_letters[counter])
        letter_list.append(even_letters[counter])
    return ''.join(letter_list)

def get_task():
    return simpledialog.askstring('Task', 'Do you want to encrypt or decrypt?')

def get_message():
    return simpledialog.askstring('Message', 'Enter the secret message: ')

root = Tk()
while True:
    task = get_task()
    if task == 'encrypt':
        message = get_message()
        encrypted = swap_letters(message)
        messagebox.showinfo('Ciphertext:', encrypted)
    elif task == 'decrypt':
        message = get_message()
        decrypted = swap_letters(message)
        messagebox.showinfo('Plaintext:', decrypted)
    else:
        break
root.mainloop()
```

## Usage

Run the script and follow the GUI prompts to encrypt or decrypt messages.

> [!warning]
> This is a simple educational cipher. For real security, use proper encryption libraries like `cryptography`.

***

## Appendix

*Note created on [[2024-04-23]] and last modified on [[2024-12-31]].*

### See Also

- [[04-RESOURCES/Code/Python/_README|Python Code Index]]

### Backlinks

```dataview
LIST FROM [[Python - Encryption and Decryption]] AND -"CHANGELOG"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
