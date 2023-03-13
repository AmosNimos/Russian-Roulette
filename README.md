# Russian-Rullet

![image](https://static.thenounproject.com/png/556976-200.png)

is a Python program that generates a random number between 0 and 5. If the number generated is 0, the program will delete the entire system. This program should only be used in a virtual machine and not on a real system. Use at your own risk.

## Requirements

This program was written in Python 3 and requires the following packages to be installed:

    random (built-in)
    shutil (built-in)
    win32security
    ntsecuritycon
    time (built-in)

Please note that the program only works on Windows systems and requires administrator privileges to function properly.

## Disclaimer:

This program is designed to work only on Windows operating system and requires administrator privileges to function properly. The program is not intended for malicious purposes and the developer takes no responsibility for any harm caused by its use. 

## Usage

To run the program, make sure you have Python installed on your system and run the following command:

python russian_rullet.py

## Why 0 to 5?
In computer programming, it is common practice to start counting at 0 instead of 1. This is because most programming languages use zero-based indexing, where the first element of an array or list is at index 0. By choosing a random number between 0 and 5 instead of 1 to 6, we are adhering to this convention and allowing for cleaner code.

In addition, choosing 0 as one of the possible outcomes allows for the use of the "if not" condition in the code. If the random number generated is 0, then the "if not" condition will evaluate to True and allow for certain code to be executed. This can be useful in many situations and is another reason why starting at 0 is a common practice in programming.

## About the Creator

The "russian_rullet.py" program was created by Amosnimos as a proof of concept and is not intended for any malicious use. Amosnimos is an independent software developer who enjoys experimenting with different programming concepts and technologies.

## The Infamous Russian Rullet Program: A Dangerous Game of Chance

The Russian Rullet program is a controversial software application that has gained notoriety in the computer programming community. Developed by a programmer known only by the pseudonym "amosnimos," the program is designed to simulate the game of Russian roulette on a computer.

The program works by randomly generating a number between 0 and 5. If the number generated is 0, the program will delete the entire system, essentially rendering the computer useless. This outcome has led to concerns about the potential for harm if the program is used maliciously.

It's important to note that the Russian Rullet program was not created with ill intent. Rather, it was developed as a proof-of-concept to demonstrate the potential risks of running untrusted code on a computer. The creator of the program has emphasized the importance of using it only in a controlled environment, such as a virtual machine, and warns against running it on a personal or work computer.

NOTE:
A russian-rullet.sh script has been added for linux users. I have not tested the final version of both script as of now. so please repport it, if you find any issues with the intended result of these code, or if you have any suggestion to improve the code.
